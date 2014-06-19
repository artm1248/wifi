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
#define WIRELESS_MODE_LEN   30
#define CHANNEL_LEN         3

static const char INTF_NAME_RA0[] = "ra0";
static const unsigned int RTPRIV_IOCTL_SHOW = SIOCIWFIRSTPRIV + 0x11;
static const unsigned int RTPRIV_IOCTL_SHOW_CFG_VALUE = 21;
static char CFG_VALUE_AP_MODE[] = "APMode";
static char CFG_VALUE_WIRELESS_MODE[] = "WirelessMode";
static char CFG_VALUE_CHANNEL[] = "Channel";


int skfd; // Generic raw socket desc.


/** GetWifiMode.
 *  @param wireless_mode - char buffer to store wireless mode info.
 *  @return true if successful, false otherwise.
 *  Notes:
 *      - Use Ralink RTPRIV_IOCTL_SHOW ioctl, flag 21, command string "WirelessMode".
 *      - This ioctl only provides the wireless modes supported by the client wireless chipset (NOT the AP mode).
 *      - Buffer size must be at least WIRELESS_MODE_LEN + 1.
 */
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


/** GetAPMode.
 *  @param ap_mode - char buffer to store wireless mode info.
 *  @return true if successful, false otherwise.
 *  Notes:
 *      - Use Ralink RTPRIV_IOCTL_SHOW ioctl, flag 21, command string "APMode".
 *      - Buffer size must be at least WIRELESS_MODE_LEN + 1.
 */
bool GetAPMode( char ap_mode[] )
{
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_RA0 );

    // Fill in request for Wifi mode.
    memset( ap_mode, 0, sizeof( ap_mode ) );
    request.u.data.pointer = ap_mode;
    strcpy( ap_mode, CFG_VALUE_AP_MODE );     // Same user buffer for command and response.
    request.u.data.length  = sizeof( ap_mode );
    request.u.data.flags   = RTPRIV_IOCTL_SHOW_CFG_VALUE;

    int ret = ioctl( skfd, RTPRIV_IOCTL_SHOW, &request );
    if( 0 > ret )
    {
        printf( "GetAPMode: Get ioctl failed code %d.\n", ret );
        return false;
    }
    else
    {
        printf( "GetAPMode: APMode = %s \n", ap_mode);
    }
    return true;
}


/** GetWifiChannel.
 *  @param wireless_channel - to store the wireless channel.
 *  @return true if successful, false otherwise.
 *  Notes:
 *      - Use Ralink RTPRIV_IOCTL_SHOW ioctl, flag 21, command string "Channel".
 */
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


/** GetWifiBssid.
 *  @param bssid - char buffer to store the BSSID.
 *  @return true if successful, false otherwise.
 *  Notes:
 *      - Use SIOCGIWAP (standard ioctl).
 */ 
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


/** GetWifiLinkSpeed.
 *  @param link_speed - reference to unsigned int to store link speed.
 *  @return true if successful, false otherwise.
 *  Notes:
 *      - Use SIOCGIWRATE (standard ioctl).
 *      - Link speed is in Mbps.
 */
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


/** GetWifiLinkQual.
 *  @param link_qual - to store link qualily.
 *  @param rssi - to store RSSI.
 *  @return true if successful, false otherwise.
 *  Notes:
 *      - Use SIOCGIWSTATS (standard ioctl).
 *      - Link quality is between 0 to 100.
 *      - Rssi is in dBm.
 */
bool GetWifiLinkQual( unsigned short& link_qual, int& rssi )
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
        const unsigned short MAX_POWER_DBM = 64;
        const unsigned short MAX_RSSI_RANGE = 256;

        struct iw_quality qual = {};
        qual = stats.qual;
        int dblevel = qual.level;

        if( qual.updated & IW_QUAL_DBM )
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


/** GetWifiProtocol.
 *  @param protocol - char buffer to store the WiFi protocols supported by the wireless chipset.
 *  @return true if successful, false otherwise.
 *  Notes:
 *      - Use SIOCGIWNAME (standard ioctl).
 *      - This ioctl only provides the wireless modes supported by the client wireless chipset (NOT the AP mode).
 *      - Buffer size must be at least WIRELESS_MODE_LEN + 1.
 */
bool GetWifiProtocol( char protocol[] )
{
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_RA0 );

    // Fill in request for Wifi channel.
    request.u.data.pointer = protocol;
    request.u.data.length  = sizeof( WIRELESS_MODE_LEN + 1 );

    int ret = ioctl( skfd, SIOCGIWNAME , &request );
    if( 0 > ret )
    {
        printf( "GetWifiProtocol: SIOCGIWNAME failed code %d.\n", ret );
        return false;
    }
    else
    {
        strncpy( protocol, request.u.name, IFNAMSIZ );
        printf( "GetWifiProtocol: Protocol = %s \n", protocol );
    }
    return true;
}


int main()
{ 
    // Create a socket to communicate with the kernel.  
    skfd = socket( AF_INET, SOCK_DGRAM, 0 );
    if( 0 > skfd )
    {
          perror( "Error: Failed to create socket.\n" );
          return -1;
    } 

    char wireless_mode[WIRELESS_MODE_LEN + 1] = "";
    if( !( GetWifiMode( wireless_mode ) ) )
    {
        printf( "Error: Failed to get Wireless mode.\n" );
        return -1;
    }
    printf( "Wireless mode = %s \n", wireless_mode );


    unsigned short wireless_channel = 0;
    if( !( GetWifiChannel( wireless_channel ) ) )
    {
        printf( "Error: Failed to get Wireless channel.\n" );
        return -1;
    }
    printf( "Wireless channel = %u \n", wireless_channel );


    char bssid[MAC_ADDR_LEN] = "";
    if( !( GetWifiBssid( bssid ) ) )
    {
        printf( "Error: Failed to get BSSID.\n" );
        return -1;
    }
    printf( "BSSID = " MACADDR "\n", DEREF_MACADDR( bssid ) );


    unsigned int link_speed = 0;
    if( !( GetWifiLinkSpeed( link_speed ) ) )
    {
        printf( "Error: Failed to get Link speed.\n" );
        return -1;
    }
    printf( "Link speed = %u \n", link_speed );


    unsigned short link_qual = 0;
    int rssi = 0;
    if( !( GetWifiLinkQual( link_qual, rssi ) ) )
    {
        printf( "Error: Failed to get Link quality.\n" );
        return -1;
    }
    printf( "Link quality = %u, Rssi = %d \n", link_qual, rssi );


    char protocol[WIRELESS_MODE_LEN + 1 ] = "";
    if( !( GetWifiProtocol( protocol ) ) )
    {
        printf( "Error: Failed to get Wireless protocol.\n" );
        return -1;
    }
    printf( "Wireless protocol = %s \n", protocol );


    char ap_mode[WIRELESS_MODE_LEN + 1 ] = "";
    if( !( GetAPMode( ap_mode ) ) )
    {
        printf( "Error: Failed to get AP mode.\n" );
        return -1;
    }
    printf( "AP mode = %s \n", ap_mode );


    // Work done, now close the socket.
    close( skfd );
    return 0;   
}
