#!/usr/bin/perl

sub printHash{
	my (%hash)=@_;
	foreach $elem (%hash){
		print $elem,"\n";
	}
}

my %hash =('name' => 'runoob','age' => 3);
printHash(%hash);
my $funref=\&printHash;
&$funref(%hash);
