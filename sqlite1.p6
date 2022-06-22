#!/usr/bin/env raku

use DB::SQLite;


 my $s = DB::SQLite.new;

 my $db = $s.db;

say  $db.query('select 42').value;

say $s.query('select 42').value;


 $s.execute('create table foo (int x); insert into foo values (42)');

say $s.query('select * from foo').value;

say $s.query(q<select 1       as a,
                            'this'  as b,
                            2e57    as c,
                            X'1234' as d,
                            NULL    as e>).hash;

 $s.finish; 

say DB::SQLite::Native.memory-used;


