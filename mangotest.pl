use strict;
use warnings;
use Mango;
use feature state;

sub mango { state $m = Mango->new('mongodb://localhost:27017')}

#Insert document
my $oid=mango->db('test')->collection('foo')->insert({bar => 'baz'});
#Find document
my $doc=mango->db('test')->collection('foo')->find_one({bar => 'baz'});
print $doc->{bar};

#Update document
mango->db('test')->collection('foo')->update({bar => 'baz'}, {bar => 'yada'});
mango->db('test')->collection('foo')->remove({bar => 'yada'});

