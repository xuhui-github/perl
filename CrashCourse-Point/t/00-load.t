#!/usr/bin/env perl
use 5.006;
use strict;
use warnings;
use Test::More qw/no_plan/;

#plan tests => 1;

BEGIN {
   use_ok( 'CrashCourse::Point' ) || print "Bail out!\n";
}

diag( "Testing CrashCourse::Point $CrashCourse::Point::VERSION, Perl $], $^X" );

my $point = CrashCourse::Point->new(x=> 1, y => 2);
ok($point->x == 1, "x is 1");
print "Coordinates are", $point->x, ",", $point->y, "\n";
$point->clear;
print "Coordinates are ", $point->x, " ", $point->y,"\n";


