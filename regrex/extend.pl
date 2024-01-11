use warnings;
use strict;
no warnings 'uninitialized';
my $text = "Testing";
if ($text =~ /((?:T|N)est(ing|er))/)
  {
  print "\$1=$1\n\$2=$2\n\$3=$3\n\$4=$4";
  }

if("abc"){
  print("abc");
  print(true);
  }
