#!/usr/bin/perl
use DBI;
use strict;
use warnings;

foreach my $driver (DBI->available_drivers()){
    print( "Driver ", $driver,"\n");
    print( "\n", join ("\n",DBI->data_sources($driver)), "\n\n");
    print " -error ", $@, "\n\n" if $@;
}


