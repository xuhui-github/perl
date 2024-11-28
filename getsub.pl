use DBI;

sub getsub{
  return sub {
    print("sub...\n");
  };
}

my $sub = getsub;
$sub->();

sub mygrep(&@){
 my ($test,@items)=@_;
 
 my @results=();
 foreach(@items){
   if($test->($_)){
     print($_);
     push @results,$_;
     }
     }
return @results;
}
sub mygrep2(&@){
  #my($sub,@items)=@_;
  my $subref=shift;
  #my $ptr=\@_;
  *items=*_;
  my @results=();
  print("@_ is ",@_,"\n");
  for(my $i=0;$i<@_;$i++){
    my $val=$subref->($_[$i]);
    #print $val,"\n";
    push @results,$_[$i] if $val;
    
    #$ptr->[$i]=$sub->($_[$i]);
    $_[$i]=$subref->($_[$i]);
    #$_[$i]=$val;
    #print $_[$i],"\n";
    }
    return @results;
  }


    
my @items=(1,2,3,4,5);
my @result=mygrep {$_>2} @items;

print(@result,"\n");
my @result1=mygrep2 {$_="hi";} @items;
print(@result1,"\n");
print("-----\n");
print(@items,"\n");

   

