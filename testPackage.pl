
#use lib '/home/xuhui/perl/';
use lib '.';
use My::Math;
use Shopper::Personal;
use DBIx::Class;

use Class::AccessorMaker
print My::Math::sum(2,4,4),"\n";
print My::Math::Strict::sum('first',23,'xx',200),"\n";

my $person=Shopper::Personal->new({
  name => 'Evar',
  budger => 100
  });

print ref($person),"\n";

sub test{
}

