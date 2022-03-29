#!/usr/bin/perl
#use strict;
#use warnings;

sub switch ($$){
  return ($_[1],$_[0]);
}

$a=10;
$b=20;
$c=30;
($a,$b)=switch $a,$b;
#($a,$b)=switch $a,$b,$c;
#Too many arguments for main::switch at - line 13, near "$c;"
#Execution of - aborted due to compilation errors.


#($a,$b) = switch ($a);
#Not enough arguments for main::switch at - line 18, near "$a)"
#Execution of - aborted due to compilation errors.



print "\$a=$a","\n";
print "\$b=$b","\n";


@nums=(10,10,20,40,50);
($a,$b) = switch (@nums,$c);
print "\$a=$a\n";
print "\$b=$b\n";
