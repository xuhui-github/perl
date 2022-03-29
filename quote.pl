use DBI;

my %attr=(
	PrintError => 0,
	RaiseError => 0,
);

my $con=DBI->connect("dbi:mysql:employees","root","flower",\%attr) or die 
  "Can not connect mysql database:",DBI->errstr,"\n";

$stmt=$con->prepare("select * from employees limit 10") 
  or die "Can not execute SQL statement:",$stmt->errstr,"\n";

$stmt->execute;
while(my @row=$stmt->fetchrow_array()){
	print "Row:",join "\t" ,@row,"\n";
}

warn "Problem in fetchrow_array():",$stmt->errstr(),"\n" 
if $stmt->err();

$con->disconnect
  or warn "Failed to disconnect: ",$con->errstr(),"\n";

exit;
