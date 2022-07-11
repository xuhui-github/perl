use JsonC;

# The traditional API use the same semantincs of other JSON modules.
#
 my %h = from-json('{ "foo": "mamá", "arr": [ 1, 4, 10 ] }');
#
 my $str = to-json(%h, :pretty);
 print $str;
