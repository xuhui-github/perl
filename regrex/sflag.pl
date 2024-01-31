#!/usr/bin/perl

use warnings;
use strict;

undef $/;
my $database = <>;
my @records;

while ($database =~ /item:(.*?)(?=item:|$)/sg){
  my $record = $1;
  $record =~ s/\n/ /g;
  push @records, $record;
  }

print "Got: $_\n" foreach(@records);

