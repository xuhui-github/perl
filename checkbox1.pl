#!/usr/bin/perl

use Tk;

$cb_value=0;
$mw=MainWindow->new;
$mw->title("Checkbutton");

for($i=1;$i<=5;$i++){
  push @buttons,$mw->Button(-text => "Button$i");
  }

$mw->Checkbutton( -text => 'Show all widget',
                  -variable => \$cb_value,
				  -command => sub {
				    if($cb_value) {
					  foreach(@buttons){
					    $_->pack(-side => 'left');
						}
					}else{
					  foreach(@buttons){
					    $_->packForget;	
						}
						}})->pack(-side => 'top');	

MainLoop;
