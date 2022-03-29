#!+usr/bin/perl

use strict;

package First;
print "-"x8,__PACKAGE__,"-"x8,"\n";
our $scalar="first";
print $scalar,"\n";

package Second;
print '-'x8,__PACKAGE__,'-'x8,"\n";
print $scalar,"\n";#prints $First::scalar,produces 'first'
our $scalar="second";
print $scalar,"\n"; #prints $Second::scalar,produces 'second'
print "\$First::scalar is '$First::scalar'\n";
print "\$Second::scalar is '$Second::scalar'\n";

package Third;
{ 
 print __PACKAGE__,"\n";
  our $scalar = "inner Package Third"; #declaration contained in block
  print $scalar,"\n"; #print $Third::scalar
   print __PACKAGE__," end\n";

}

print "current package is ",__PACKAGE__,"\n";
print $scalar,"\n";#print $Second::scalar
print "\$Third::scalar is $Third::scalar\n";
