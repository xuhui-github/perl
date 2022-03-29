#!/usr/bin/perl

use Prima qw(Application);
use Prima::MsgBox qq(input_box,message);

my $text=input_box("Sample input box","Enter text:",'');
message(\ "You have entered: 'B<Q<< $text >>>'",mb::Ok);

