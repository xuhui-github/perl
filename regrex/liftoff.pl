#!/usr/bin/perl

use strict;
use warnings;

my $text ="3 2 1 liftoff";
while($text =~ /(\d)/gc){
  print("$1...\n");
  }
if($text =~ /\G\s*(.+)$/){
  print ucfirst($1),"!\n";
  }
