use warnings;
use strict;

my $text = "proton";
while($text =~ /(?=(.))/g){
  print "[$1]";
  }
