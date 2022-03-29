#!/usr/bin/perl
use DBI;
my $con=DBI->connect("dbi:mysql:flower","root","flower") or die $!；
my $stmt=$con
