#!/usr/bin/perl

my $dirname="/home/xuhui";

opendir (my $dh,$dirname) 
  or die "Can not open '$dirname' for reading: $!";

my @entries=grep {! /^\./ } readdir($dh);
print "There are ",0+@entries," files\n";

closedir $dh or die "Can not close '$dirname':$!";

