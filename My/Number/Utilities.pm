package My::Number::Utilities;

use strict;
use warnings;

use base 'Exporter'; #module for exporting symbols
our @EXPORT_OK=qw /pi is_prime/; #default exporting symbols
our @EXPORT_TAGS= (all => \@EXPORT_OK);


our $VERSION=0.01;

sub pi {3.14166}

sub is_prime {
  my $number=$_[0];
  return if $number < 2;
  return 1 if $number == 2;
  for (2 .. int sqrt($number)){
    return if !($number % $_);
	}
	return 1;
  }
1;

