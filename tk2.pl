use strict;
use warnings;
use Tk;

my $mw = MainWindow->new;
$mw->title("BadWindow");

$mw->Label(-text  => "This is an example of a windown looks bad\nwhen you do not send any options to pack")->pack;
$mw->Checkbutton(-text => 'I like it') ->pack;
$mw->Checkbutton(-text => 'I hate it!') ->pack;
$mw->Button(-text => "Exit",
	    -command => sub {exit})->pack;

MainLoop;
