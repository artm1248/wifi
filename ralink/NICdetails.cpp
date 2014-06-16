#include <unistd.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <netinet/ip.h>
#include <linux/ethtool.h>
#include <linux/sockios.h>
#include <string.h>
#include <errno.h>
#include <stdio.h>
#include <linux/wireless.h>


int main()
{
    int if_idx = 0;
    int socketfd, result;
    struct ifreq ifr;

    int ra0_idx = -1;

    printf( "Available interfaces: \n" );
    for( if_idx = 1; ; if_idx++ ) 
    {
        socketfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_IP);
        if( socketfd == -1 )
        {
            printf( "%s: errno = %d \n", __FUNCTION__, errno );
            break;
        }

        ifr.ifr_ifindex = if_idx;
        if( ioctl( socketfd, SIOCGIFNAME, &ifr ) == -1 ) 
        {
            do 
            {
                result = close(socketfd);
            } while ( result == -1 && errno == EINTR );
            break;
        }
        
        printf("Interface %d: %s. ", if_idx, ifr.ifr_name);
        if( strcmp( ifr.ifr_name, "ra0" ) == 0 )
        {
            ra0_idx = if_idx;
            printf( "Found ra0, idx = %d. ", ra0_idx );
        }
        
        if( ioctl(socketfd, SIOCGIFFLAGS, &ifr) == -1 )
        {
            printf( "%s: SIOCGIFFLAGS failed \n", __FUNCTION__ );
        }
        
        if ((ifr.ifr_flags & IFF_UP)) 
        {
            printf( "Status: UP" );
        }        
        else
        {
            printf( "Status: DOWN" );
        }
        printf("\n");
    }

    printf( "ra0_idx = %d \n", ra0_idx );

    const unsigned int WIFI_LINK_STATUS_SIZE = 1024;
    const char INTF_NAME_RA0[] = "ra0";
    const unsigned int RTPRIV_IOCTL_SHOW_CONN_STATUS = 4;
    const unsigned int RTPRIV_IOCTL_SHOW = SIOCIWFIRSTPRIV + 0x11;
    const char CONNECTED_STR[] = "Connected";


    // ra0 interface is found
    if( ra0_idx >= 0 )
    {
        
        socketfd = socket(AF_INET, SOCK_DGRAM, IPPROTO_IP);
        if( socketfd == -1 )
        {
            printf( "%s: errno = %d \n", __FUNCTION__, errno );
            return errno;
        }

        ifr.ifr_ifindex = ra0_idx;    
        if( ioctl( socketfd, SIOCGIFNAME, &ifr ) == -1 ) 
        {
            do 
            {
                result = close(socketfd);
            } while ( result == -1 && errno == EINTR );
            return errno = ENOENT;
        }
        
        printf("Interface %d: %s. \n", ra0_idx, ifr.ifr_name);        
                
        // Fill in request for connection status.
        char link_status[WIFI_LINK_STATUS_SIZE] = "";
        struct iwreq wifi_query = {};
        strcpy( wifi_query.ifr_name, INTF_NAME_RA0 );
        wifi_query.u.data.pointer = link_status;
        wifi_query.u.data.length  = sizeof( link_status );
        wifi_query.u.data.flags   = RTPRIV_IOCTL_SHOW_CONN_STATUS;

        if( 0 > ioctl( socketfd, RTPRIV_IOCTL_SHOW, &wifi_query ) )
        {
            printf( "IsLinkConnected: RTPRIV_IOCTL_SHOW failed for request %s \n", wifi_query.ifr_name );
        }

        // Parse returned string "Connected(AP: <ssid>[MAC address])" for a connected link'.
        bool is_link_connected = false;
        if( 0 == strncmp( link_status, CONNECTED_STR, strlen( CONNECTED_STR ) ) )
        {
            // Link is up.
            is_link_connected = true;
            printf( "ra0: WiFi link connected \n" );
        }
        else
        {
            // Link is down.
            is_link_connected = false;
            printf( "ra0: WiFi link disconnected \n" );
        }        
    }
    
    return 0;
}
