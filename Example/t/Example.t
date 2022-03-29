use strict;
use Test;
BEGIN { plan tests => 3 }

use Example;

ok(1);
Example::print_hello();
ok(1);
my $retval = Example::print_hello_retval();
ok($retval, 13);

