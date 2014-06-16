#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <arpa/inet.h>
#include <sys/ioctl.h>
#include <linux/if.h>
#include <linux/wireless.h>

unsigned int sock_fd;

bool GetIntfFlags( unsigned int &intf_flags, char intf_name[] )
{
    struct ifreq intf_query = {};
    strncpy( intf_query.ifr_name, intf_name, sizeof( intf_query.ifr_name ) );

    if( 0 > ioctl( sock_fd, SIOCGIFFLAGS, &intf_query ) )
    {
        return false;
    }
    intf_flags = intf_query.ifr_flags;

    return true;
}

bool SetIntfFlags( const unsigned int intf_flags, char intf_name[] )
{
    struct ifreq intf_query = {};
    strncpy( intf_query.ifr_name, intf_name, sizeof( intf_query.ifr_name ) );
    intf_query.ifr_flags = intf_flags;

    if( 0 > ioctl( sock_fd, SIOCSIFFLAGS, &intf_query ) )
    {
        return false;
    }

    return true;
}

int main( int argc, char *argv[] )
{
    if( 3 != argc )
    {
        fprintf( stderr, "Usage: %s up/down < intf_name > \n", argv[0] );
        exit( -1 );
    }

    char intf_name[100] = "";
    strncpy( intf_name, argv[2], strlen( argv[2] ) );

    if( 0 > ( sock_fd = socket( PF_INET, SOCK_STREAM, 0 ) ) )
    {
        printf( "Failed to get interface file descriptor \n" );
        return -1;
    }

    unsigned int intf_flags = 0;
    if( 0 == strcmp( argv[1], "down" ) )
    {
        if( !GetIntfFlags( intf_flags, intf_name ) )
        {
            fprintf( stderr, "GetIntfFlags failed (%s) \n", intf_name );
            return -1;
        }
        if( intf_flags & IFF_UP )
        {
            printf( "Interface %s is up, bringing it down \n", intf_name );
            intf_flags &= ~IFF_UP;
            if( !SetIntfFlags( intf_flags, intf_name ) )
            {
                fprintf( stderr, "SetIntfFlags failed  (%s) \n", intf_name );
                return -1;
            }
        }    
    }
    else if( 0 == strcmp(argv[1], "up" ) )
    {
        if( !GetIntfFlags( intf_flags, intf_name ) )
        {
            fprintf( stderr, "GetIntfFlags failed (%s) \n", intf_name );
            return -1;
        }
        if( !( intf_flags & IFF_UP ) )
        {
            printf( "Interface %s is down, bringing it up \n", intf_name );
            intf_flags |= IFF_UP;
            if( !SetIntfFlags( intf_flags, intf_name ) )
            {
                fprintf( stderr, "SetIntfFlags failed (%s) \n", intf_name );
                return -1;
            }
        }    
    }
    else
    {
        fprintf( stderr, "Usage: %s up/down < intf_name > \n", argv[0] );
        return -1;
    }

    return 0;
}
