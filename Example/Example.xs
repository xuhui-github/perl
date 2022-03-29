#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#include<stdio.h>

void print_hello(void){
  printf("hello, world\n");
}

int treble(int x){
  x *=3;
  return x;
}

int print_hello_retval(void){
  return printf("hello, world\n");
}
MODULE = Example		PACKAGE = Example		

void
print_hello()

int
treble( x )
  int x

int
print_hello_retval()


