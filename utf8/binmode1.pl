#!/usr/bin/perl

use utf8;
binmode(STDOUT,":encoding(UTF-8)");
print uc("σ"),"\n";
print uc "ς","\n";

print lc(uc("σ")),"\n"; #Greek small letter sigma
print lc(uc("ς")),"\n"; #Greek small final letter sigma
