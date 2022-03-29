#!/usr/bin/perl

package MyPackage;
our $scalar= "value";

package AnotherPackage;
print $scalar;
$MyPackage::scalar="changed";
print $scalar;
