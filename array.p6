my @a=1..10;
my @b=@a.map({ $_ + 1 });
say "@a[]";
say "@b[]";
say @a;
say (1 .. 12).map({ $^a + $^b + $^c }); 
say (1 .. 3).map({ .sqrt });
say (1 .. 10).grep( ! *.is-prime);

my @c=((1,2),(3,(4,5)));
say @c.map(* +1);
say @c.map(* + 1);
say @c.deepmap( * + 1);

say (22,2,3,4,5,6,7).sort;
say <1 23 4 55 6666 6>.sort;

my @words=('first', 'second', 'third', 'no', 'best');
say @words.sort( { $^a.fc cmp $^b.fc });

my Int @ints;
my @intvalue of Int;
say @ints.of;
say @intvalue.of;

say @words.of;
