#!/usr/bin/perl
use lib '.';
use strict;
use warnings;

use My::Number::Utilities 'pi', 'is_prime';

print pi,"\n";
print is_prime(23) 
  ? "Prime"
  : "Not Prime";
print;
