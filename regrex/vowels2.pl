use strict;
use warnings;

my $text = "beautiful creature";
while($text =~ /(?=([aeiou]{2}))/g){
  print "Found adjacent '$1' at position ", pos($text), "\n";
  }
