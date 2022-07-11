use JSON::Class;
use JSON::OptIn;
class Something does JSON::Class[:opt-in] {
        has Str $.foo is json;
        has Str $.secret = 'secret';
        }
my Something $something = Something.from-json('{ "foo" : "stuff"}');
my Str $json=$something.to-json();
print $json
