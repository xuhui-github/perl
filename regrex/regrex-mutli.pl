#!/usr/bin/perl
use strict;
use warnings;

my $text = "one:two:three:four:five";
while($text =~/(([^:]+):?)/g){
 print "\$1 = $1\n\$2 = $2\n";
 }
