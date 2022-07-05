#!/usr/bin/perl

use DBI;
my %attr=(
  PrintError => 0,
  RaiseError => 1,
  );
my $con=DBI->connect("dbi:mysql:employees","root","flower",\%attr) or 
  die "Can not connect database:",DBI::errstr,"\n";

my $stmt=$con->prepare("select * from employees limit 10") or 
  die "Can not execute statement ",$stmt->errstr,"\n";

$stmt->execute();
my $row=$stmt->dump_results();
print $row;

open FILE, '>dumpresult.lis' or die "Can not open sumpresult.lis:$!";

$stmt->execute();#execute before dump_results
$rows=$stmt->dump_results(80,"\n",":",\*FILE);
close FILE or die "Can not closing dumpresult.lis:$!\n";
$con->disconnect;
sub test{
  
}