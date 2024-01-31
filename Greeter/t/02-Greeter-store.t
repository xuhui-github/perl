#!/usr/bin/env perl

use warnings;
use strict;
use Test::More qw(no_plan);
BEGIN{
       use_ok('Greeter');
}

use Greeter::Member;
my $member = Greeter::Member->new(name => 'Sleepy',
                                  greeting_string => 'Night Night __NAME__');

my $greeter = Greeter->new(
    members => [$member],
    guests => [qw( Homer Bart Marge Maggie) ]);

cmp_ok(ref($greeter->members->[0]),'eq','Greeter::Member');
cmp_ok($greeter->guests->[0],'eq','Homer');
