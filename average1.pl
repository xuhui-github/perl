#sub average {
#  $_[0]++;
#  foreach $num (@_){
#    $total += $num;
#	}
#  return ( $total / ($#_ +1));
#  }


sub average {
  @temp=@_;
  $temp[0]++;
  foreach $num (@temp){
    $total += $num;
	}
  return ($total / ($#temp+1));
  }

  $a=10;
  $b=20;
  @temp=(10,20);
  print average($a,$b),"\n";
  print $a,"\n";
  print join ",",@temp,"\n";
