my @keys = 1 .. 10;
my @values = 91 .. 100;
my %hash;
%hash{@keys} = @values;
say %hash;

my Pair $pair = ("first" => 1);
say $pair.key;
say $pair.value;

my Pair $p2 = Pair( 1 => 2);
my Pair $p3 = Pair( 'isarray' => (1 .. 10));
say $p3.key.WHAT,' ',$p3.value[2];
say $p3.value.WHAT, ' ',$p3.value.elems;
say( 1 => 2).WHAT;
my @p4 = 1 .. 10;
say @p4.WHAT;
say Pair.new( 'first' , 1);

say :key.WHAT;
say :key.key;
say :key.value;
say :isreal.key;
say :isreal.value;
say :!isreal.value;

#you can tury any variable into a Pair,with the variable name
#as the key
my $age = 12;
my $p = :$age;
say $p; # -> age => 12

say $p.antipair;



my %trans = ("a" => 1, "b" => 2);
my %population  = (Oslo => 500_000,
                   Pairs => "unknown",
				   "Buenos Aires" => 'too many');

say %population.keys;
say %population.values;
say %population.kv;

my %numberhash = (11 .. 20);
say %numberhash;

my $trans1 ={ "a" => 1,"b" => 2};
say $trans1.WHAT;
say %numberhash.WHAT;

#if we forget the curilies,we get a list of Pairs:
my $trans = ( a => 1, b => 2);
say $trans.WHAT;
say $trans[0];

my %hashOfNumber = 1 .. 12;
say %hashOfNumber;

say '%population<Pairs>=', %population<Pairs>;
say '%population<Oslo> is ', %population<Oslo>;
say '%population<"Buenos Aires"> is ', %population{"Buenos Aires"};


#print hash keys
for %population.keys -> $city #for %population.keys.sort -> $city
{
  say "City $city has %population{$city} people";
}

for %population.values -> $val {
  say "population is ", $val;
}

say ( 1 => 2,2 => 3,4 => 5).values; # a list of Pairs not a hash

#print key values with kv 
for %population.kv -> $city , $population {
  say "City $city has $population people.";
}

my Int %h;
say %h.WHAT;
%h<a> = 12;

my %hashOfInt of Int;
say %hashOfInt.WHAT;

my Int %hashwithStringKeyIntValue{Str}; #key Str  value Int
say %hashwithStringKeyIntValue.WHAT;
%hashwithStringKeyIntValue<first> = 1;


my %hashStrKey{Str};
say %hashStrKey.WHAT;

say %hashStrKey.keyof;
my %h9; 
say %h9.keyof;

#of returns the type constraint for the values of the invocant

class Person {
  has Str $.name;
}
my Person %hashofPeople{Str};
%hashofPeople<"me"> = Person.new(name => 'XXXX');
say %hashofPeople.WHAT;
say %hashofPeople<"me">;
say %hashofPeople.of;

my %hashsharp{10;10;10};
say %hashsharp;

my %hashSharp;
%hashSharp{"A"; "B"; "C" } = 12;
%hashSharp{"A"; "B"; "D" } = 13;
say %hashSharp;
