#!/usr/bin/perl -w
use strict;
use Image::Magick;
my $image = new Image::Magick;
my $status = $image->Read('24bitimage.jpg');
die "$status\n" if $status;
my $image2 = $image->Clone( );
# Reduce to 16 colors with and without dithering
$image->Quantize(colorspace => 'RGB',
colors => 16, dither => 1
);
$image->Write('gif:4bitimage.gif');
$image2->Quantize(colorspace => 'RGB',
colors => 16, dither => 0
);
$image2->Write('gif:4bitimagenodither.gif');
undef $image;
undef $image2;
