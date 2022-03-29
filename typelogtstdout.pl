#!/usr/bin/perl
{
	local *STDOUT;
	open STDOUT, "|more " or die "Can not connect to pager (more)";

	foreach my $i (1..100){
		print "$i\n";
	}
	print "done\n";
}

open PAGER, "|more" or die "Can not connect to pager (more)";
foreach my $i  (1..100){
	print PAGER "$i\n";
}
close PAGER;
print "done\n";
