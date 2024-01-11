use strict;
use warnings;

my $text="one,two,three,four";

while($text=~/\b(\w+)\b/g){
  print "outer: matched: $&, extracted: $1 \n";
  while($1=~/(\w)/g){
    print "\tinner: matched $&, extracted $1 \n";
    }
  }
