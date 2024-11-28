#!/usr/bin/perl

use warnings;
use strict;

sub do_list {
  my($subref,@in)=@_;
  return map {&$subref($_)} @in;

}

sub do_list_1(&@){
  my ($subref,@in)=@_;
  my @out;
  
  foreach(@in){
    push @out,&$subref($_);
	}
	return @out;
  }


sub add_one {
  return $_[0]+1;
}

$,=",";
print do_list (\&add_one,1,2,3),"\n";

my @words=qw/first second third fouth five/;
@words=do_list_1 {print reverse($_[0] =~/./g), "\n" } @words;
print "\@words is ",@words,"\n";
print "换行\n";
my @nums=(1,2,3);
do_list_1 {$_=$_+100} @nums;
print @nums,"\n";
#print @nums,"\n";
# my @result=();
# for(my $i=0;$i<#@items;$i++){
#   my $res=subref->($item[$i]);
#   push @result,$items[$i] if $res;
#   }
#
#     
#
