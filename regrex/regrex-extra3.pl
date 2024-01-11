#!/usr/bin/perl
use strict;
use warnings;

my $text="one:two:three:four:five";
if($text =~ /^(([^:]+):?)(([^:]+):?)(([^:]+):?)/){
  print "\$2 = $2\n\$4 = $4\n\$6 = $6\n";
  }
