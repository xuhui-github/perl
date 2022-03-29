#!/usr/bin/perl

use Perl6::Caller;

my $sub= caller->subroutine;
my $line_number=caller->line;
my $is_require = caller(3)->is_require;
print $line_number,"\n";
print $is_require,"\n";

print "In", caller->subroutine,"called from ",caller->file," line ",caller->line,"\n";
