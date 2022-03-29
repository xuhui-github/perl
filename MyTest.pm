package MyTest;

BEGIN{
  use Exporter();
  @ISA=qw(Exporter);
  @EXPORT=qw(&printout);
}

sub printout { print "Wow, this is cool\n";}
sub noprint {print "This should not be exported!!!\n";}

1;
