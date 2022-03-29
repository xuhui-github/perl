package DUMPVAR;

sub dumpvar {
	my $packageName=@_;
	local (*alias); # a local typeglob
	
	#We want to get access to the stash corresponding to the package
	#name

	*stash = * { "${packageName}::"};
	$, = " "; #Output separator for print
  while (my( $varName,$globValue) = each %stash){
		print "$varName======================\n";
		*alias=$globValue;
		if (defined (*alias{SCALAR})){
			print " \$varName $alias \n";
		}
		if( defined( *alias{ARRAY})){
			#print "\t  \@varName @{alias} \n";
			print @alias,"\n";
		}
		if( defined( *alias{HASH})){
			print " \%$varName ",%alias," \n";
		}
	}
}

package XX;

my  $x=10;
 our @y=(1,3,4);
 my %z=(1,2,3,4,5,6);
 my $z=300;
 *packname=*XX;
DUMPVAR::dumpvar(__PACKAGE__);







