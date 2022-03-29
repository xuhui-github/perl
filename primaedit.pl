#!/usr/bin/perl

use Prima qw(Edit Application);
            my $e = Prima::Edit->new(
                    text         => 'Hello $world',
                    syntaxHilite => 1,
            );
            run Prima;

