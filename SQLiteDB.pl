use SQLite::DB;
my $db=SQLite::DB->new('test.db');
$db->connect;
$db->select("select * from test", {})||print $db->get_error,"\n";
$result=$db->select_one_row("select count(*) as count from test");
print $$result{TOTAL};
