package A;
$x = 10;
sub foo{
  print "foo in packag A\n";
  return $_[0]+$_[1];
}

package B;
print ${"A::x"},"\n";

$pkg="A";
$var_name="x";
print ${"${pkg}::$var_name"},"\n";

print &{"A::foo"}(10,20),"\n";
