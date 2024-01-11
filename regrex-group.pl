#!/usr/bin/perl
use strict;
use warnings;

my $text="Testing";
if($text =~ /((T|N)est(ing|er))/){ #outside to inside left to right
  print "\$1 = $1\n$2 = $2\n$3 = $3\n\$4 = $4\n";
  }
