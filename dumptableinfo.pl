#!/usr/bin/perl

use DBI;

my $dbh=DBI->connect("dbi:mysql:employees",'root','flower',{
	RaiseError => 1
});

my $tbinfo=$dbh->table_info();

print "Qualifier  Owner  Table Name            Type  Remarks\n";
print "=========  ====== ====================  ===== ========\n\n";

while(my ($qual,$owner,$name,$type,$remarks)=
  $tbinfo->fetchrow_array()){
		foreach($qual,$owner,$name,$type,$remarks){
			$_="N/A" unless defined $_;
		}
		printf "%-9s  %-9s  %-32s %-6s %s\n",$qual,$owner,$name,$type,$remarks;
	}

	exit;
