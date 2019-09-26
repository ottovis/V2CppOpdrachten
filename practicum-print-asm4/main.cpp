#include "hwlib.hpp"
#include "main.hpp"

extern "C" void uart_put_char( char c ){
   hwlib::cout << c;
}

int main( void ){

   namespace target = hwlib::target;

      // wait for the PC console to start
   hwlib::wait_ms( 2000 );

   application();
}
