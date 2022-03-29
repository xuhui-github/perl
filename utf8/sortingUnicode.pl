#!/usr/bin/perl

use utf8;
use charnames ":full";

print "\N{ANGSTROM SIGN}\n";
print "\N{LATIN CAPITAL LETTER A WITH RING ABOVE}\n";

use charnames ":short";
binmode STDOUT, ':utf8';
print "\N{U+212B}\n";
print "\N{U+00C5}\n";
print "\N{U+0041}\N{U+030A}\n";
