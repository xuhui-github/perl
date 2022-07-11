#!/usr/bin/perl
use Prima qw(Application);

       # create a new image from scratch
       my $i = Prima::Image-> new(
          width => 32,
          height => 32,
          type   => im::BW, # same as im::bpp1 | im::GrayScale
       );

       # draw something
       $i-> begin_paint; 
       $i-> color( cl::White);
       $i-> ellipse( 5, 5, 10, 10);
       $i-> end_paint; 

       # mangle
       $i-> size( 64, 64);

       # file operations
       $i-> save('a.gif') or die "Error saving:$@\n";
       $i-> load('a.gif') or die "Error loading:$@\n";

       # draw on screen
       $::application-> begin_paint;

       # an image is drawn as specified by its palette
       $::application-> set( color => cl::Red, backColor => cl::Green);
       $::application-> put_image( 100, 100, $i);

       # a bitmap is drawn as specified by destination device colors
       $::application-> put_image( 200, 100, $i-> bitmap);

