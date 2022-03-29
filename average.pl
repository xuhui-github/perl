#!/usr/bin/perl

sub average{
  local(@temp)=@_;
  $temp[0]++;
  foreach(@temp){
    $total+=$_;
	}
  return ($total / ($#temp+1));
  }

  @temp=(10,20);
  print average(@temp);
  
