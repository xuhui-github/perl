#!/usr/bin/perl

use strict;
use warnings;

my $text="one,two,three,foue";
#display matches with their positions
while($text =~ /\b(\w+)\b/g){
  print "matched $1 at position ", pos($text), "\n";
  pos($text) = 0 if pos($text) > 15;
  }
