use v6;
use XML;
use XML::XPath::Action;
class Butterfly {
  method who-am-i {
	put "I am a " ~ self.^name }
  }
Butterfly.who-am-i;

