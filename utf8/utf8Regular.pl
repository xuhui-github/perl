#!/usr/bin/perl


use utf8;
no warnings;
my $character='ἧ';
if ($character =~ /\p{Lowercase}/){
  print "$character is lower case\n";
  }
if ($character =~ /\p{Uppercase}/){
  print "$character is upper case\n";
  }
print chr(0x263a),"\n";
print "\N{U+263B} \n";
print "\N{U+01F2} \n";
