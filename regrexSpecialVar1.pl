#!/usr/bin/perl
use strict;
use warnings;

my $text="One Two Three 456 Seven Eight 910 Eleven Twelve";
$text =~ /[0-9]+/;
print "\$- is", $-[0],"\n";
print "\$+ is", $+[0],"\n";

while ($text =~ /[0-9]+/g){
  my $prefix = substr($text,0,$-[0]);
  my $match = substr($text,$-[0],$+[0]-$-[0]);
  my $suffix = substr($text,$+[0]);
  print("\$match = \'$match\'\n\$prefix = \'$prefix\'\n\$suffix=\'$suffix\'\n");
  }

  #$-匹配起始字符位置
  #$+结束字符位置
  #substr(字符串,起始位置,长度)

