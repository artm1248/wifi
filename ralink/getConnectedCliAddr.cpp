#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <netdb.h>
#include <net/ethernet.h>
#include <linux/wireless.h>
#include <sys/ioctl.h>
#include <string.h>

static const char INTF_NAME_P2P0[] = "p2p0";
static const int RTPRIV_IOCTL_SHOW = SIOCIWFIRSTPRIV + 0x11;
static const int GET_CLI_ADDR = 98;
static const int MAC_ADDR_LEN = 6;
int skfd; // Generic raw socket desc.

bool GetConnectedCliAddr( char mac_addr[] )
{
    // Declare a iwreq struct to get info from the kernel.
    struct iwreq request = {};
    // Assign interface name.
    strcpy( request.ifr_name, INTF_NAME_P2P0 );
    // Ioclt call to get the connected Client MAC address from driver.
    request.u.data.flags   = GET_CLI_ADDR;
    request.u.data.pointer = mac_addr;
    request.u.data.length  = MAC_ADDR_LEN;

    int ret = ioctl( skfd, RTPRIV_IOCTL_SHOW, &request );
    if( 0 > ret )
    {
        printf( "GetConnectedCliAddr: Set ioctl failed code %d.\n", ret );
        return false;
    }
    else
    {
        printf( "GetConnectedCliAddr: Set ioctl ok. Client MAC address = %02x:%02x:%02x:%02x:%02x:%02x \n",
                mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3], mac_addr[4], mac_addr[5]);
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
    char buffer[MAC_ADDR_LEN + 1] = {0};
    if( !(GetConnectedCliAddr( buffer ) ) )
    {
        printf( "Failed to get client MAC address.\n" );
        return -1;
    }

    printf( "Client MAC address = %02X:%02X:%02X:%02X:%02X:%02X \n",
            buffer[0], buffer[1], buffer[2], buffer[3], buffer[4], buffer[5] );


    // Work done, now close the socket.
    close( skfd );
    return 0;   
}
