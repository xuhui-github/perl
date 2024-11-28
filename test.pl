use warnings;
use strict;
use IO::AIO;
no strict;
use DBI;
use Catalyst::Response::Writer;
my $a=23;
print $a;
my @dirs=opendir(".",DIR);
foreach(@dirs){
    print $_;
}

use Try::Catch;

try {
die "something went wrong";
}catch{
}finally{
print "finally block\n";
};

