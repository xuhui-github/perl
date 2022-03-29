#!/usr/bin/perl

use Prima::sys::FS;

my $fn="\x{dead}\x{beef}";
if(_f $fn){
  open F,">", $fn or die $!;
  close F;
  }

print "ls: ",getdir,"\n";
print "pwd: ",getcwd,"\n";
