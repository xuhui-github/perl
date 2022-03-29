use Net::POP3;

my $mail_server="pop.qq.com";
my $username="1066508372";
my $password="dongxuhui1038";
$pop = Net::POP3->new($mail_server)

or die "Can't open connection to $mail_server : $!\n";

defined ($pop->login($username, $password))

or die "Can't authenticate: $!\n";

$messages = $pop->list

or die "Can't get list of undeleted messages: $!\n";

foreach $msgid (keys %$messages) {

$message = $pop->get($msgid);

unless (defined $message) {

warn "Couldn't fetch $msgid from server: $!\n";

next;

}

# $message is a reference to an array of lines

$pop->delete($msgid);

}
