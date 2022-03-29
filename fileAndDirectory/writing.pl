#!/usr/bin/perl
my $filename="target.txt";
open my $fh, '>>',$filename 
  or die "Cannot open '$filename' for appending: $!";
print $fh "Maxwell Smart|86|Definitely a spy\n";

