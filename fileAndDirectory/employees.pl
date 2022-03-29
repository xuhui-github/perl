#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @employees=(
	{
		name => 'Sally Jones',
		years => 4,
		payscale => 4,
	},
	{
		name => "Abby Hoffman",
		years => 1,
		payscale => 10,
	},
	{
		name => 'Mr. Magnate',
		years => 12,
		payscale => 1,
	},
);

@employees=
  sort {$b->{years} <=> $a->{years}
	||
		$a->{payscale} <=> $b->{payscale}
	} 
	@employees;

@employees=sort by_seniority_then_pay_then_name @employees;
	printf "Name           Year     Payscale\n";
	foreach my $employee (@employees){
		printf "%-15s  %2d           %2d\n" => @{$employee}{qw/name years payscale/};
	}


sub by_seniority_then_pay_then_name($$){
	my($emp1,$emp2)=@_;
	$emp2->{years} <=> $emp1->{years}
	||
		$emp1->{payscale} <=> $emp2->{payscale}
	||
		$emp1->{name} cmp $emp2->{name}
		}
