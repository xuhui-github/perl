use DB::MySQL;
my $my =DB::MySQL.new(:user<xuhui>,:password<flower>,:database<test>);
say $my.query('select 42').value;
$my.execute('insert into foo(x,y) values (1,2)');
for $my.query('select * from foo').arrays -> @row {say @row};
for $my.query('select * from foo').hashes -> %row {say %row};

