#!/usr/bin/perl


use warnings;
use strict;

my $text = "one, two, three, four";
foreach($text =~ /\b(\w+)\b/g){
  print "outer: got: $_, matched: $&, extracted: $1 \n";
  foreach(/(\w)/g){
    print "\tinner: got: $_, matched $&, extraed $1 \n";
    }
  }

