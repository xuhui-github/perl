#!/usr/bin/perl

use DBI;

my $dbh=DBI->connect("dbi:mysql:employee","root","flower") or die $!;
my $stmt=$dbh->prepare("select * from employees limit 10");


print "hell\n";

