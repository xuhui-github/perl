#!/usr/bin/perl

use strict;
use Tk;

use vars qw($var);


my $var=1;
my $w_top=Tk::MainWindow->new;

my $b=$w_top->Menubutton(
  -text => "Button: $var")->pack();

foreach my $i qw(1 2 5 10 20){
  $b->command( -label => "$i",
    -command => sub {
	                  $var=$i;
	                  $b->configure(-text => "Button: $var");
										}
		);
	  }

$w_top->Button(-relief => 'raised',
               -text => "exit",
			   -command => sub {$w_top->destroy();})->pack();
MainLoop;
