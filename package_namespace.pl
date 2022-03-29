package Pack;

  sub first_sub{}


Pack::first_sub();

package Pack;

  sub second_sub{
  }


Pack::second_sub();

package main;

sub Pack::third_sub{
  print "Pack::third_sub\n";
}
