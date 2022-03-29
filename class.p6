class Address {

has Str $.housenumber;

has Str $.zipcode;

has Str $.country;

has Str $.town;

has Str $.street;

}

my $address = Address.new(

housenumber => '10',

zipcode => '1020',

country => 'Country',

town => 'Town',

street => 'Street',

);

print qq:to/ADDRESS/;

{$address.street} {$address.housenumber}

{$address.zipcode} {$address.town}

{$address.country}

ADDRESS
