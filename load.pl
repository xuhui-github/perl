#!/usr/bin/perl
use strict;
use warnings;

require "./8_lib.pl";
test();
&test;

use DBI;
use warnings;

sub testit {
    print shift;
}

testit "first";
t
