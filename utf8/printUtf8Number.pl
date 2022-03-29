use utf8;
binmode STDOUT, ':uft8';


foreach my $point (0 .. 65535){
  no warnings 'utf8';
  my $string =chr $point;
  next unless $string =~ /\p{Number}/;
  print "$point --> $string\n";
}
