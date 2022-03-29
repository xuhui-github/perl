#!/usr/bin/perl

INIT {
  print "This is the first INIT block\n";
  my $var_First_INIT;
}

print "REALLY WORKING CODE\n";

CHECK {
  print "This is the first CHECK block\n";
  print "\$var_First_INT is not initialized in INIT BLOCK1\n" if not defined($var_First_INIT);
  $var_First_INIT="RECEIVING VALUE"
}

CHECK {
  print "This is the second CHECK block\n";
  print "\$var_First_INIT is not initialized in INIT BLOCK!\n" if not defined $var_First_INIT;
}

INIT {
  print "THIS IS THE FIRST INIT BLOCK\n";
  print "\$var_First_INIT is initialized already\n" if defined $var_First_INIT;
  print "\$var_First_INIT is not initialized yet\n" if not defined $var_First_INIT;
}



