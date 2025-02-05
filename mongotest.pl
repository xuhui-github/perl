use MongoDB;
use warnings::register;
use Try::Catch;
use strict;

        my $client     = MongoDB->connect('mongodb://localhost');
        my $collection = $client->ns('foo.bar'); # database foo, collection bar
        my $result     = $collection->insert_one({ some => 'data' });
        my $data= $collection->find_one({ _id => $result->inserted_id });
