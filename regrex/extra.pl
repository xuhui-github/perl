use warnings;
use strict;

my $text = "one:two:three:four:five";
if($text=~/(([^:]+):?){3}/){
  print "\$1 = \'$1\'\n\$2 = \'$2\'\n";
  }
if($text=~/(([^:]+):?){5}/){
  print "\$1 = \'$1\'\n\$2 = \'$2\'\n";
  }



