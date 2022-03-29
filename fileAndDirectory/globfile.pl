#!/usr/bin/perl
use strict;
use warnings;
use autodie;

my $dir="~/perl/";
my @perlfiles=glob("$dir/*.pl");
print join "\n",@perlfiles;

my $javadir="~/java/";
my @javafiles=< $javadir/*.java>;
print join "\n",@javafiles;

