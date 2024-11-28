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

my @items=(1,2,3,4,5);
my @result=mygrep {$_>2} @items;

print(@result);
my @result1=mygrep {$_=0} @items;
print(@result1)

   

