#!/usr/bin/perl

use strict;
use warnings;
use autodie;
my $dirname="/home/xuhui/perl";
opendir (my $dh,$dirname);
my @perlfiles= grep { /\.pl$/ } readdir($dh);
print join "\n",@perlfiles;
closedir $dh;
