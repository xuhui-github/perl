#!/usr/bin/perl

use DBI;

my %attr=(
	RaiseError => 0,
	PrintError => 0,
);

while(1){
	my $con;

	until(
		$con=DBI->connect("dbi:mysql:employees",root,flower,\%attr)
	) {
		warn "Can not connect: $DBI->errstr. Pausing before retrying\n";
		sleep(10);
	}
}

eval {
	$con->{RaiseError} =1;
	my $stmt=$dbh->prepare("select * from employees limit 10");
	while(my @row=$stmt->fetchrow_array()){
		print "Row:",join("\t",@row);
	}
	sleep(10);
};
 
warn "Monitoring aborted by error $@\n" if $@;
sleep 5;
exit;