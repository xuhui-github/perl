#!/usr/bin/perl
my $filename="target.txt";

open my $FH, '<',$filename or die "Can not open '$filename' for reading: $!";
my @lines=sort grep {!/^s*#/ } <$FH>;
foreach(@lines){
  print;
  }

open $FH, '>',$filename or die "Can not open '$filename' for writing $!";
print $FH @lines;
close $FH;

