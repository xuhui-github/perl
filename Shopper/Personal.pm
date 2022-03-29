package Shopper::Personal;

use strict;
use warnings;

sub new {
  my ($class,$argref)=@_;
  return bless {
    name => $argref->{name},
	budget => $argref->{budget}
	}, $class;
  }

1;

