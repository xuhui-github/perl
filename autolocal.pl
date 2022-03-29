#!/usr/bin/perl

use warnings;
use strict;

my $var = 42;
my $last;
print "Before: \$var is '$var'\n";
foreach $var (1..5){ #$var is loccal variable
  print "Inside: \$var is $var\n";
  $last=$var;
  }#$var is restore


print "After: \$var is $var,\$last is $last\n";
