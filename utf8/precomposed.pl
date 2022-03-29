use utf8;
use charnames ':full';

binmode STDOUT,':utf8';

my $precomposed="\N{LATIN SMALL LETTER A WITH DIAERESIS}";
print "\$precomposed is ",$precomposed,"\n";
print "Length of precomposed string is "
  . length($precomposed) . "\n";
