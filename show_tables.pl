use DBI;
use strict;
use warnings;
use Try::Catch;
use 

my $dbh=DBI->connect("dbi:mysql:employees","root","flower") 
  or die "Can not connect database $!";

my @tables=$dbh->tables();
foreach my $tname (@tables){
	print "Table: $tname\n";
}



exit;
