if 'abc' ~~ /\w/ {
  make {'a' => 'bc'};
  say $/.made;
}
