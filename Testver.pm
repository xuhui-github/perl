package Testver;

BEGIN{
  use Exporter();
  @ISA=(Exporter);
  $VERSION=1.03;
  @EXPORT=qw(&printout);
  @EXPORT_OK=qw(&noprint);
}

sub printout {
  print "Wow,this is cool\n";
}

sub noprint {
  print "This should not be expected!!!\n";
}

1;

