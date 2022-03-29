package Foo;

use strict;
use warnings;

print "perl statement before first block\n";

BEGIN{
  print "This is the first BEGIN block\n";
}

print "perl statement between first and second BLOCK\n";

BEGIN{
  print "This is the second BEGIN blick\n";
}

#my $x=;

END {
  print "This is the first END block\n";
my  $x='first end block';
  print "\$x = $x in first END block\n";
  }

END {
  print "This is the second END block\n";
}
