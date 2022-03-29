#!/usr/bin/perl
use utf8;
my $string='日本国';
my $length=length($string);
print "$string has $length characters\n";

use Encode 'is_utf8';
print "it is utf8\n" if is_utf8($string);
print "it is utf8 again\n" if utf8::is_utf8($string);
