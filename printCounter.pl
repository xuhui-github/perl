#!/usr/bin/perl

use feature 'state';
no warnings;
sub printCount{
  state $count=0;
  print "counter is ",$count,"\n";
  $count++;
  return;
}

for (1 .. 10){
  printCount();
  }



