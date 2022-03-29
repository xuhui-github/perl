#!/usr/bin/perl

#convert between utf-16 and iso-8859-1(Latin-1).To do this,you muse
#convert from one encoding to Perl's internal format and then 
#convert to the desired format

my $string=decode('UTF-16',$utf16_data);
my $latin1=encode('iso-8859-1',$string);

