use utf8;

print "The smiley face is \x{263a}\n";
print "Watch out for the ",
  "Dread Pirate Fenwich! \x{2620}\n";

use charnames qw(:full);
my $arabic_alef="\N{ARABIC LETTER ALEF}";
print $arabic_alef,"\n";


