print "Today is ${\  substr(scalar(gmtime),0,10) } \n";
use warnings;
use strict;

sub now { return \scalar(localtime) };

print "The time is ${&now}\n";
