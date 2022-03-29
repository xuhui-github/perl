#!/usr/bin/perl
sub counter{
	state $count=shift;
	return $count++;
}
print counter(2);
print counter(4);
print  counter(6);
