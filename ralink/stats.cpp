#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <netdb.h>
#include <net/ethernet.h>
#include <linux/wireless.h>
#include <sys/ioctl.h>
#include <string.h>

#define MACADDR "%02X:%02X:%02X:%02X:%02X:%02X"
#define DEREF_MACADDR(x) (char)((x)[0]), (char)((x)[1]), (char)((x)[2]), (char)((x)[3]), (char)((x)[4]), (char)((x)[5])

#define MAC_ADDR_LEN        6
#define WIRELESS_MODE_LEN   12  // 11A/B/G/N/AC
#define CHANNEL_LEN         3   // 165

static const char INTF_NAME_RA0[] = "ra0";
static const unsigned int RTPRIV_IOCTL_SHOW = SIOCIWFIRSTPRIV + 0x11;
static const unsigned int RTPRIV_IOCTL_SHOW_CFG_VALUE = 21;
static char CFG_VALUE_WIRELESS_MODE[] = "WirelessMode";
static char CFG_VALUE_CHANNEL[] = "Channel";

/** Max legal signal power.
 */
static const unsigned MAX_POWER_DBM = 64;

/** Max RSSI range.
 */
static const unsigned MAX_RSSI_RANGE = 256;
 
/** Thermal noise floor.
 */
static const unsigned NOISE_FLOOR_DBM = -192;

int skfd; // Generic raw socket desc.

bool GetWifiBssid( char bssid[] );
bool GetWifiChannel( unsigned short& wireless_channel );
bool GetWifiLinkSpeed( unsigned int& link_speed );
bool GetWifiLinkQual( unsigned int& link_qual, int& rssi );
bool GetWifiMode( char wireless_mode[] );

bool GetWifiMode( char wireless_mode[] )
{
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_RA0 );

    // Fill in request for Wifi mode.
    memset( wireless_mode, 0, sizeof( wireless_mode ) );
    request.u.data.pointer = wireless_mode;
    strcpy( wireless_mode, CFG_VALUE_WIRELESS_MODE );     // Same user buffer for command and response.
    request.u.data.length  = sizeof( wireless_mode );
    request.u.data.flags   = RTPRIV_IOCTL_SHOW_CFG_VALUE;

    int ret = ioctl( skfd, RTPRIV_IOCTL_SHOW, &request );
    if( 0 > ret )
    {
        printf( "GetWifiMode: Get ioctl failed code %d.\n", ret );
        return false;
    }
    else
    {
        printf( "GetWifiMode: WirelessMode = %s \n", wireless_mode);
    }
    return true;
}


bool GetWifiChannel( unsigned short& wireless_channel )
{
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_RA0 );

    // Fill in request for Wifi channel.
    char wireless_channel_buf[CHANNEL_LEN + 1] = "";
    request.u.data.pointer = wireless_channel_buf;
    strcpy( wireless_channel_buf, CFG_VALUE_CHANNEL );     // Same user buffer for command and response.
    request.u.data.length  = sizeof( wireless_channel_buf );
    request.u.data.flags   = RTPRIV_IOCTL_SHOW_CFG_VALUE;

    int ret = ioctl( skfd, RTPRIV_IOCTL_SHOW, &request );
    if( 0 > ret )
    {
        printf( "GetWifiChannel: Get ioctl failed code %d.\n", ret );
        return false;
    }
    else
    {
        wireless_channel = atoi( wireless_channel_buf );
        printf( "GetWifiChannel: Wireless Channel = %u \n", wireless_channel );
    }
    return true;
}

bool GetWifiBssid( char bssid[] )
{
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_RA0 );

    int ret = ioctl( skfd, SIOCGIWAP, &request );
    if( 0 > ret )
    {
        printf( "GetWifiBssid: SIOCGIWAP failed code %d.\n", ret );
        return false;
    }
    else
    {
        memcpy( bssid, request.u.ap_addr.sa_data, ETH_ALEN );
        printf( "GetWifiBssid: BSSID = " MACADDR "\n", DEREF_MACADDR( bssid ) );
    }
    return true;
}

bool GetWifiLinkSpeed( unsigned int& link_speed )
{
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_RA0 );

    int ret = ioctl( skfd, SIOCGIWRATE , &request );
    if( 0 > ret )
    {
        printf( "GetWifiLinkSpeed: SIOCGIWRATE failed code %d.\n", ret );
        return false;
    }
    else
    {
        memcpy( &link_speed, &request.u.bitrate, sizeof( int ) );
        link_speed /= 1000000; // Mbps
        printf( "GetWifiLinkSpeed: Link speed = %u (Mbps)\n", link_speed );
    }
    return true;
}

bool GetWifiLinkQual( unsigned int& link_qual, int& rssi )
{ 
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_RA0 );

    struct iw_statistics stats = {}; 
    request.u.data.pointer = ( caddr_t )( &stats );
    request.u.data.length = sizeof( struct iw_statistics );
    request.u.data.flags = 1;

    int ret = ioctl( skfd, SIOCGIWSTATS , &request );
    if( 0 > ret )
    {
        printf( "GetWifiLinkQual: SIOCGIWSTATS failed code %d.\n", ret );
        return false;
    }
    else
    {
        // Convert to dBm.
        struct iw_quality qual = {};
        qual = stats.qual;
        int dblevel = qual.level;

        if( ( qual.updated & IW_QUAL_DBM ) /*|| ( qual.level > range.max_qual.level )*/ )
        {
            // Signal level in dBm.
            if( !( qual.updated & IW_QUAL_LEVEL_INVALID ) )
            {
                if( MAX_POWER_DBM <= qual.level )
                {
                        dblevel -= MAX_RSSI_RANGE;                         
                }
            }
        }

        rssi = dblevel;
        link_qual = stats.qual.qual;
        printf( "GetWifiLinkQual: Link quality = %u, Rssi = %d\n", link_qual, rssi );
    }

    return true;
} 


int main()
{ 
    // Create a socket to communicate with the kernel.  
    skfd = socket( AF_INET, SOCK_DGRAM, 0 );
    if( 0 > skfd )
    {
          perror( "Error creating socket.\n" );
          exit( -1 );
    } 

    // Now we have the data (from driver/kernel) built into wrq struct, go get it.
    char wireless_mode[WIRELESS_MODE_LEN + 1];
    if( !( GetWifiMode( wireless_mode ) ) )
    {
        printf( "Failed to get client MAC address.\n" );
        return -1;
    }
    printf( "Wireless Mode = %s \n", wireless_mode );


    unsigned short wireless_channel = 0;
    if( !( GetWifiChannel( wireless_channel ) ) )
    {
        printf( "Failed to get client MAC address.\n" );
        return -1;
    }
    printf( "Wireless Channel = %u \n", wireless_channel );


    char bssid[MAC_ADDR_LEN] = "";
    if( !( GetWifiBssid( bssid ) ) )
    {
        printf( "Failed to get BSSID.\n" );
        return -1;
    }
    printf( "BSSID = " MACADDR "\n", DEREF_MACADDR( bssid ) );


    unsigned int link_speed = 0;
    if( !( GetWifiLinkSpeed( link_speed ) ) )
    {
        printf( "Failed to get Link speed.\n" );
        return -1;
    }
    printf( "Link speed = %u \n", link_speed );


    unsigned int link_qual = 0;
    int rssi = 0;
    if( !( GetWifiLinkQual( link_qual, rssi ) ) )
    {
        printf( "Failed to get Link quality.\n" );
        return -1;
    }
    printf( "Link quality = %u, Rssi = %d \n", link_qual, rssi );


    // Work done, now close the socket.
    close( skfd );
    return 0;   
}
