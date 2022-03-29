use strict;
use warnings;

use DBI;

my $dbh=DBI->connect("dbi:mysql:employees","root","flower") or die $!;
print "connected\n";
my $stmt=$dbh->prepare("select * from employees limit 10");
$stmt->execute();
while (my @row=$stmt->fetchrow_array()) {
    print join(" ",@row),"\n";
    
}
$stmt->disconnect;

