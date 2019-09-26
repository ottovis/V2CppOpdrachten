#include "hwlib.hpp"
#include "main.hpp"

extern "C" void uart_put_char( char c ){
   hwlib::cout << c;
}

extern "C" char convert( char c ){
   if (65 <= c && c <= 90)
   {
      c += 32;
   }
   else if (97 <= c && c <= 122)
   {
      c -= 32;
   }
   
   return c;
}


int main( void ){

   namespace target = hwlib::target;

      // wait for the PC console to start
   hwlib::wait_ms( 2000 );

   application();
}
