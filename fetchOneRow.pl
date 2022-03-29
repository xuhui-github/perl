#!/usr/bin/perl
use DBI;

use strict;
use warnings;

my $con=DBI->connect("dbi:mysql:employees","root","flower") or 
  die "Can not connect database";
#my $stmt=$con->prepare("select * from employees limit 2") or 
 # die 'Error occured preparing statemnt:',$con->errstr,"\n";

my $th=$con->prepare("select * from employees limit 10");
sub select_one_row{ #参数$stmt sql语句
	#my $stmt=shift @_; #获取$stmt
	#$_[0]->prepare($_[1])or die $_[0]->errstr(); #剩下的参数作为要执行的语句
	$_[0]->execute;
        my @row=$_[0]->fetchrow_array();
	$_[0]->finish();
	return @row;
}
my @result=select_one_row( $th,"select * from employees limit 10");
print @result,"\n";

sub select_one{
	my $stmt=shift;
	$stmt->execute($_[0]);
	my @row=$stmt->fetchrow_array();
	$stmt->finish;
	return @row;
}

my @result1=select_one($th,"select * from employees limit 3");
print @result1,"\n";
