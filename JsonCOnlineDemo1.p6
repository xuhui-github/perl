use JsonC;

my $json = JSON.new-from-file('foo.json');

given $json {
      when Associative {
	       # You got an object.
	       #        say $_<foo>;
	       #               say so $_<bar>:exists;
	       #                      for %$_.pairs {
		 #                                  # Do someting
		 #                                         }
		 #                                             }
		 #                                                 when Positional {
		   #                                                        # You got an array
		   #                                                               my @a := $_;         # You can bind to one
		   #                                                                      say @a[10..20];
		   #
		   #                                                                             say @a.elems;        # How many
		   #
		   #                                                                                    my $foo = @a.shift;
		   #
		   #                                                                                           # But beware:
		   #                                                                                                  say so @a ~~ Array;  # False, not a Perl6's Array
		   #                                                                                                         say so @a ~~ JSON-P; # True   but a JSON Positional
		   #
		   #                                                                                                                # Need a real Array?
		   #                                                                                                                       my @foo = @a;         # Do a copy to an Array;
		   #                                                                                                                              my @bar := Array(@a); # Or cast to one, better
		   #                                                                                                                                  }
		   #                                                                                                                                      when Int { ... }
		   #                                                                                                                                          when Bool { ... }
		   #                                                                                                                                              when Str { ... }
		   #                                                                                                                                                  when Any { ... } # null
		   #                                                                                                                                                  }
