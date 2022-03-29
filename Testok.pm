package Testok;

BEGIN {
  use Exporter();
  @ISA=qw(Exporter);
  @EXPORT=qw(&printout);
  @EXPORT_OK=(noprint);
}

sub printout { print "Wow, this is cool\n";}

sub noprint {print "This should not be exported!!!\n";}

1;
