#!/usr/bin/perl

use utf8;

no warnings 'utf8';
my $char="\N{U+01F2}";
if($char =~ /\p{Lowercase}/){
  print "$char is lower case\n";
}
if($char =~ /\p{Uppercase}/){
  print "$char is upper case\n";
}
if($char =~ /\p{Titlecase_Letter}/){
  print "$char is title case\n";
}
