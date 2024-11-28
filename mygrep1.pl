sub mygrep(&@){
  my ($test,@items)=@_;
  my @results=();
  foreach (@items){
     *temp=*_;
  if($test->(*temp)){
   push @results,$_;
   }
   }
   #*items=*results;
  return @results;
}

my @items=(1,2,3,4,5);
my @results=mygrep {print $_,"\n";} @items;
print(@results,"\n");
 @results=mygrep {$_>3} @items;
print(@results,"\n");

@results=mygrep {$_=1000} @items;
print("----------\n");
print @results,"\n";
print @items,"\n";
print("----------\n");
my @vals=mygrep {if($_ == 3){$_="third"}else{$_="four"}} @items;
print(@items,"\n");
print(@vals,"\n");

my @strs=("helloaab","sab","sba","aaaab","ba","helloworld");
my @s=mygrep { $_=~/hello/} @strs;

print @s,"\n";
print @strs,"\n";
