use DB::Xoos::SQLite;

my DB::Xoos::SQLite $d .=new;

$d.connect('sqlite://xyz.sqlite3');

my $customer-model = $d.model('Customer');
my $new-customer   = $customer-model.new-row;
$new-customer.name('xyz co');
$new-customer.rate(150);
$new-customer.update; # runs an insert because this is a new row

my $xyz = $customer-model.search({ name => { 'like' => '%xyz%' } }).first;
$xyz.rate( $xyz.rate * 2 ); #twice the rate!
$xyz.update; # UPDATEs the database

my $xyz-orders = $xyz.orders.count;
