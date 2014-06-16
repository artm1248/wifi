#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <netdb.h>
#include <net/ethernet.h>
#include <linux/wireless.h>
#include <sys/ioctl.h>
#include <string.h>

#define MAC_ADDR_LEN        6
#define WIRELESS_MODE_LEN   12  // 11A/B/G/N/AC
#define CHANNEL_LEN         3   // 165

static const char INTF_NAME_RA0[] = "ra0";
static const unsigned int RTPRIV_IOCTL_SHOW = SIOCIWFIRSTPRIV + 0x11;
static const unsigned int RTPRIV_IOCTL_SHOW_CFG_VALUE = 21;
static char CFG_VALUE_WIRELESS_MODE[] = "WirelessMode";
static char CFG_VALUE_CHANNEL[] = "Channel";

int skfd; // Generic raw socket desc.

bool GetWifiBssid( char mac_addr[] );
bool GetWifiChannel( unsigned short* wireless_channel );
bool GetWifiRssi( int rssi );
bool GetWifiLinkSpeed( unsigned int link_speed );
bool GetWifiLinkQual( unsigned int link_qual );
bool GetWifiMode( char wireless_mode[] );

bool GetWifiMode( char wireless_mode[] )
{
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_RA0 );

    // Fill in request for connection status.
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


bool GetWifiChannel( unsigned short* wireless_channel )
{
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_RA0 );

    // Fill in request for connection status.
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
        *wireless_channel = atoi( wireless_channel_buf );
        printf( "GetWifiChannel: Wireless Channel = %u \n", *wireless_channel );
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
    if( !(GetWifiMode( wireless_mode ) ) )
    {
        printf( "Failed to get client MAC address.\n" );
        return -1;
    }
    printf( "Wireless Mode = %s \n", wireless_mode );


    unsigned short wireless_channel = 0;
    if( !(GetWifiChannel( &wireless_channel ) ) )
    {
        printf( "Failed to get client MAC address.\n" );
        return -1;
    }
    printf( "Wireless Channel = %u \n", wireless_channel );


    // Work done, now close the socket.
    close( skfd );
    return 0;   
}
