#!/usr/bin/perl
print join("\n",split(/:/,$ENV{'CLASSPATH'})),"\n";
