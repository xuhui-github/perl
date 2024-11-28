#!/usr/bin/perl
use Tk;
my $win=MainWindow->new;
$win->title("Hello World");
$win->Button(-text => "Done",
             -command => sub {exit})->pack;
MainLoop;
