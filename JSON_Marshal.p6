use JSON::Marshal;
use JSON::OptIn;

class MyClass {
  has Str $.string is json;
  has Int $.int is json;
  has Str $.secret;
  has Version $.version is marshalled-by('Str');
}
my $obj=MyClass.new(secret => "secret",string => "string", int => 42 , version => Version.new("0.0.1"));
my Str $json = marshal($obj,:opt-in);
print $json;
