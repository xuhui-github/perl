#!/usr/bin/perl
use warnings;
use strict;

undef $/;
my $configuration = <>;

my %config;

while($configuration =~ /^\s*(\w+)\s* = \s*(.+?)\s*$/mg){
  $config{$1} = $2;
  }

print "Got: $_ => '$config{$_}'\n" foreach (sort keys %config);


