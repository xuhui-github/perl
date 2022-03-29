#!/usr/bin/perl
my $filename="target.txt";
open FH,'+<',$filename or die "Can not open file '$filename' for update $!";
my @lines = sort grep { !/^\s*#/ } <FH>;
seek FH,0,0 or die "Can not seek '$filename',0,0:$!";
print FH @lines;

truncate FH,tell(FH)
  or die "Can not truncate '$filename':$!";
close FH or die "Can not close $filename: $!";
