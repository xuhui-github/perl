package My::Math;

use strict;
use warnings;

our $VERSION=0.01;
sub sum{
  my @numbers=@_;
  my $total=0;
  $total += $_ foreach @numbers;
  return $total;
}

package My::Math::Strict;

use Scalar::Util 'looks_like_number';
our $VERSION=0.01;
sub sum{
  my @numbers=@_;
  my $total=0;
  $total += $_ foreach grep {looks_like_number($_)} @numbers;
  return $total;
}

1;
