class Address {
  my Int $last_assigned_number =0;
  has Int $.housenumber is rw;
  method assign_next(){
	$last_assigned_number++;
	$.housenumber=$last_assigned_number;
  }

  our sub get_next() {
	return ++$last_assigned_number;
  }

}

class House{
  has Address $.address is rw;
}

my @street;
for 1 .. 10 {
  my $house = House.new(
	address => Address.new()
  );
  $house.address.assign_next();
  push @street,$house;
}

say $_.address.housenumber for @street;
say Address::get_next();

class HouseAnother {
  has $.rooms;
  has $.area;
  has $.height;
  has $.address;

  method energy_cost(){
	return 0.8 * $.area;
  }

}


class ModernHouse is HouseAnother {
  has $.power;
  
  method energy_cost(){
	return 0.3 * $.area;
  }
}

my $house1 = ModernHouse.new(
  rooms => 5,
  area => 150,
  height => 5,
  address => '...',
  power => 200,
);

say $house1.area;
say $house1.power;

sub f(HouseAnother $h){
  say "There are {$h.rooms} rooms in this house.";
}

sub f2(ModernHouse $h){
  say "This house generate {$h.power} kWh.";
}

my $house_arg=HouseAnother.new( rooms => 2 );
my $house_modern=ModernHouse.new(rooms => 3,power => 100);
f($house_arg);
f($house_modern);
#f2($house_arg);
#Type check failed in binding to parameter '$h'; expected ModernHouse but got HouseAnother (HouseAnother.new(roo...)
f2($house_modern);

my HouseAnother @anotherstreet;
push @anotherstreet,ModernHouse.new( rooms => 3, power => 100);
push @anotherstreet,HouseAnother.new( rooms => 2 );

f($_) for @anotherstreet;

my $h1 = HouseAnother.new( area => 100);
my $mh = ModernHouse.new( area => 400, power => 300);
say $h1.energy_cost();
say $mh.energy_cost();

my HouseAnother @street1;
push @street1,$h1;
push @street1,$mh;
say $_.energy_cost for @street1;


