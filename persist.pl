#!/usr/bin/perl

use warnings;
use strict;

sub definelexical{
  my $lexvar ="the original value";
  return \$lexvar;
}

sub printlexicalref{
  my $lexvar=${$_[0]};
  print "The variable still contains $lexvar \n";
}

my $ref=definelexical();
printlexicalref($ref);

#two $lexvar variables are entirely different,each 
#existing only in its own scope but both pointing 
#to the same underlying scalar
