#!/usr/bin/env perl
use warnings;
use strict;
use Test::More tests => 6;

BEGIN{
       use_ok('Greeter::Member');
       }

my $member = Greeter::Member->new(name => 'Sleepy',
                                  greeting_string => 'Night Night __NAME__'
				  );
cmp_ok(ref($member), 'eq', 'Greeter::Member', "is a Greeter::Member");
cmp_ok($member->name, 'eq', 'Sleepy', 'correct name');
cmp_ok($member->greeting_string,'eq','Night Night __NAME__', 'correct raw greeting');
cmp_ok($member->greeting,'eq','Night Night Sleepy', 'Correct actual greeting');
cmp_ok($member->greet_guest('Homer'), 'eq','Night Night Homer','Greet guest');

