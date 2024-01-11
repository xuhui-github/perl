#!/usr/bin/perl

use strict;
use warnings;

my $text = "one, two, three, four";

#iterator over matches with foreach and $_

foreach($text =~ /\b\w+\b/g){
  print $_,"\n";
  }
print "end foreach...\n";
while($text =~ /\b(\w+)\b/g){
  print $1,"\n";
  }

my @matches = $text =~ /\b\w+\b/g;
foreach(@matches){
  print $_, "\n";
  }
