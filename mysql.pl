
#!/usr/bin/perl
use strict;
use warnings;
use DBI;
use Try::Catch;
use Thread qw/async /;
use Class::DBI;
use constant;
use DBIx::Class;
use Try::Tiny;



my $t = Thread->new(sub {print shift},"hello");
my $result = $t->join;
$t->detach;

if ($t->done){
    $t->join;
}
my $tid = Thread->self->tid;
async {print shift};




unlink 'dbitrace.log' if -e 'dbitrace.log';
my $dbh=DBI->connect("dbi:mysql:employees","xuhui","flower") or die "Can not connect Mysql:";
d
DBI->trace(1,'dbitrace.log');
my $stmt=$dbh->prepare("select * from employees limit 10"); 
$stmt->execute;
DBI->trace(2,'dbitrace.log');
my @row;
while(@row=$stmt->fetchrow_array){
  print "Row: @row\n";
  
}
    
$dbh->disconnect;

sub query{
print "Preparing and executing statement\n";
  my $th=$dbh->prepare("
  SELECT * FROM employees LIMIT 10");
  $th->execute;
  return
}



sub test{
  my ($a,$b)=@_;
  if($a>$b){
    return $a;
    }
  return $b;
}
sub test2{
    print "test2\n";
}





