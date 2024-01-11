#!/usr/bin/perl
use warnings;
use strict;

while(<>){
  chomp;
  next if /^\s*($|#)/;
  print "Got: $_ \n";
  }
