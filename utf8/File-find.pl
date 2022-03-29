#!/usr/bin/perl

use strict;
use warnings;

use File::Find;
our $count=0;
my $dirname="/home/xuhui/perl";
find(\&wanted,$dirname);

print "Found ",$count," files\n";
sub wanted {
  if (/\.pl$/ && -f $_){
    print $_," found\n";
    ++$count;
	}
  }

