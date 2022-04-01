class House{
  has $.area;

  method tariff_coef(){
	return 0.8;
  }

  method energy_cost(){
	return self.tariff_coef * $.area;
  }

}

class ModernHouse is House {
  has $.power;

  method tariff_coef(){
	return 0.3;
  }
}

my $house = House.new(area => 100);
my $modern_house=ModernHouse.new(area => 200, power => 300);

say $house.energy_cost();
say $modern_house.energy_cost();

#Per6 allows so-called submethods.They are not inherited.
class Parent{
  method meth(){
	say "meth";
  }

  submethod submeth(){
	say 'submeth';
  }
}

class Child is Parent {
}

my $o1=Parent.new;
my $o2=Child.new;

$o1.meth();
$o2.meth();
$o1.submeth;
#$o2.submeth();

class P{
  has $!count;

  method get_count(){
	return $!count++;
  }
}

class P1 is P {


  method p1(){
	say "p1() at P1";
  }


  
}

class P2 is P {
  method p2(){
	say "p2 at P2";
  }
}

class C is P1 is P2 {
  method c(){
	say "c at C";
  }
}

my $p=P.new;
my $p1=P1.new;
my $p2=P2.new;
my $c =C.new;
$c.p1();
$c.p2();
$c.c();
say $c.WHAT;
say $c.get_count() for 1 .. 3;

say '$p.^mro is ', $p.^mro;
say '$p1.^mro is ', $p1.^mro;
say '$p2.^mro is ', $p2.^mro;
say '$c.^mro is ',$c.^mro;


