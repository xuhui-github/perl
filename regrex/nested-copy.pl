#!/use/bin/perl
use strict;
use warnings;

my $text="one,two,three,four";
while($text =~ /\b(\w+)\b/g){
  print "outer: matched: $&, extracted: $1 \n";
  my $inner=$1;
  while($inner=~/(\w)/g){
    print "\tinner: matched $&, extractd $1 \n";
    }
  }

