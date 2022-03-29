package NewTest;

BEGIN{
  use Exporter();
  @ISA=qw(Exporter);
  @EXPORT=qw(&printout);
}

sub printout {
  print "Wow, this is cool\n";
 }

my $noprint=sub {
  print "This should not be exported!!!\n";
}

1;

