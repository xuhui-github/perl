#!/usr/bin/perl -w

use strict;
use warnings;

sub printwith {
  my($separator,@stuff)=@_;
  local $,=$separator;
  print @stuff,"\n";
}

printwith('... ',"one","two","three");

open MY_HANDLE,'>', "print_to_me_result" or die $!;
sub print_to_me{
  local *STDOUT=*MY_HANDLE;
  die unless print @_;
  print "print_to_me...\n";
  sub_in_print_to_me(); #local *STDOUT is still valid here
} #local *STDOUT is invalid after print_to_me is over


sub sub_in_print_to_me{
  print "can you see me!!!!!\n";
}

print_to_me "hello from print_to_me\n";
print "print_to_me end\n";
