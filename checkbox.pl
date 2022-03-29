#!/usr/bin/perl

use Tk;

$cb_value=0;
$mw=new MainWindow;
$cb=$mw->Checkbutton(-text => 'Checkbutton',
                     -variable => \$cb_value,
					 -command => sub { print "Clicked! $cb_value\n" }
					 )->pack(-side => 'top');
$mw->Button(-text => "CB on",
            -command => sub { $cb_value =1})->pack(-side => 'left');
$mw->Button(-text => 'CB off',
            -command => sub { $cb_value=0})->pack(-side => 'right');
MainLoop;
