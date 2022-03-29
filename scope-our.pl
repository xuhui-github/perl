use warnings;
use strict;

package MyPackage;

my $my_var="my-var";
our $our_var="our-var";
our $local_var="global-var";
use vars qw($use_var);

$use_var="use-var";

package AnotherPackage;
print "Outside,my_var is '$my_var' \n";
print "Outside,our_var is '$our_var \n";
print "Outside,local_var is '$local_var \n";
print "\n";
sub sub1{
  my $my_var ="my_in_sub1";
  our $our_var="our_in_sub1";
  local $local_var ="local_in_sub1";
  print "In sub1,my_var is '$my_var' \n";
  print "In sub1,our_var is '$our_var' \n";
  print "In sub1,local_var is '$local_var' \n";
  print "\n";
  sub2();
}

sub sub2{
  print "In sub2,my_var is '$my_var'\n";
  print "In sub2,out_var is '$our_var'\n";
  print "In sub2,local_var is '$local_var'\n";
  print "local变量旨在当前函数作用域内有效\n";
}

sub1();
print "\n";
print "Again outside,my_var is '$my_var' \n";
print "Again outsice,our_var is '$our_var' \n";
print "Again outside,local_var is '$local_var' \n";

