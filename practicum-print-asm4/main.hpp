#ifndef _MAIN_HPP
#define _MAIN_HPP

extern "C" void uart_put_char( char c );
extern "C" void print_asciz( const char * s );
extern "C" void application();
extern "C" char convert( char c );
int main( void );

#endif // _MAIN_HPP