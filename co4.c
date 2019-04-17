#include <stdio.h>
// a small and fast proof of concept fcc bandplan generator, easily ported to an 8 bit mcu. GPL licensed.
// this is a way to avoid using cumbersome channel arrays.
// gcc ./co4.c on any linux system.
const char *myarg = NULL;
int main( int argc, const char **argv)
{
    
    if ( argc > 3 )
    {
        printf( "usage: %s channel [01-40] band [+-0] eg\n ./a.out 01 \n", argv[0] );
        return 0;    
    }
    
    int band = argv[1][3];
    band = band - 48;
    band = band * 450;
    if ( argc == 2 ){
    band = 0;
    }
    int chan = argv[1][1];
    int chanx = argv[1][0];
    chan = chan - 48;
    chanx = chanx - 48;
    int z = (10 * chanx) + chan;

    if (z > 40 || z < 1){
        printf( "usage: %s channel [01-40] band [+-0] eg\n ./a.out 01 0\n", argv[0] );  
        return 0;
    }

    int array[2][8] = {
       {3, 7, 11, 15, 19, 22, 23, 25},
       {1, 1,  1,  1,  1,  2, -3,  1}
    };

    int x = 0;
    int i = 0;

    for (i = 0; i < 8; i++ ){
       if (z > array[0][i]){
        x = x + array[1][i];
       }
    }

	printf("Channel %d ", z );
    x = (10*x) + 26955 + band + (z * 10);
    printf( "%d khz\n", x );

}
