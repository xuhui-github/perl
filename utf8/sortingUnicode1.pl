#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use utf8;

no warnings 'utf8';
use Unicode::Collate;
my @apples = (
"\N{U+212B}pples",
"\N{U+00C5}pples",
"\N{U+0041}\N{U+030A}pples",
"apples",
"Apples",
);

my @bad= sort @apples;
my @sorted= Unicode::Collate->new->sort(@apples);
print "Original: @apples\n";
print "Sorted: @bad\n";
print "Collated: @sorted\n";
