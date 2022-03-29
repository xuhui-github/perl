package BankAccount;
$total=0;
sub deposit {
  my $amount=@_;
  $total+=$amount;
  print "You now have $total dollars \n";

}
sub withdraw {
  my $amount=@_;
  $total -= $amount;
  $total=0 if $total <0;
  print "You now have $total dollars \n";
}

package ATM;
BankAccount::deposit(10);
print $BankAccount::total,"\n";
