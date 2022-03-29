#!/usr/bin/perl

use warnings;
use strict;

my $file_scope="visible anywhere in the file";
print $file_scope,"\n";

sub topsub{
  my $top_scope="visible in 'topsub'\n";
}
