package Iterator;
$VERSION=3.00;
use strict;

sub new{
	my ($class,%data)=@_;#get class name and copy hash
	my $subref=sub { each %data};
	bless $subref,ref($class)||$class;
}

sub each{
	my($self)=@_;
	$self->();
}

1