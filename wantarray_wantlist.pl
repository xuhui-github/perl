#!/usr/bin/perl
sub test{
  if(wantarray){
    return ('first','second','third');
	}else{
	return 3;
	}
  }

  my @list=test();
  print @list,"\n";
  my $result=test();
  print $result,"\n";
