use DBI qw(:sql_types);
my $dbh=DBI->connect("dbi:SQLite:test.db","","");

my $sth=$dbh->prepare('select count(*) from test');
$sth->execute();
my $row=$sth->fetch;
print @$row;

