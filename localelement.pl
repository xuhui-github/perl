#!/usr/bin/perl
local $,="\t";
our @array=qw / 1 2 3/;
{
 local $array[1]=4;
 print @array,"\n";
 }
 
print @array,"\n";

sub execute_specialpath_cathint($cmd,@args){
  local $ENV{PATH};
  local $SIG{INT} = \&catch_sigint;
  system $cmd => @args;
}


