#!/usr/bin/perl
use strict;
use warnings;
use DBIx::Class;
use DBI;
use Try::Catch;
use Moose;
use Async;
use DB;
unlink 'dbitrace.log' if -e 'dbitrace.log';
my $dbh=DBI->connect("dbi:mysql:employees","xuhui","flower") or die "Can not connect Mysql:";
DBI->trace(1,'dbitrace.log');
my $stmt=$dbh->prepare("select * from employees limit 10"); 
$stmt->execute;
DBI->trace(2,'dbitrace.log');
my @row;
while(@row=$stmt->fetchrow_array){
	print "Row: @row\n";
	
}

$dbh->disconnect;
sub doPrepare{
print "Preparing and executing statement\n";
	my $th=$dbh->prepare("
	SELECT * FROM employees LIMIT 10");
	$th->execute;
	return
}

sub test{
  my ($a,$b)=@_;
  if($a>$b){
    return $a;
    }
  return $b;
}
