#!/usr/bin/perl
use warnings;
use strict;


    
sub printHash{
	my (%hash)=@_;
	foreach my  $elem (%hash){
		print $elem,"\n";
	}
}

my %hash =('name' => 'runoob','age' => 3);
printHash(%hash);
my $funref=\&printHash;
&$funref(%hash);

