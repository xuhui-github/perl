#!/usr/bin/perl

use strict;
use warnings;

if((my $toss=rand) > 0.5){
  print "Heads ($toss)\n";
}else {
  print "Tails ($toss)\n";
  }
