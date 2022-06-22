use DB::SQLite;

my $s = DB::SQLite.new; # You can pass in connection information if you
want.

say $s.query('select 42').value; # 42

$s.execute('insert into foo (x,y) values (1,2)');

for $s.query('select * from foo').arrays -> @row { say @row; }

for $s.query('select * from foo').hashes -> %row { say %row; }


