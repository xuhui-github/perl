use constant PI => 3.2435;

our $our_var="OUR VAR";
{
	my $counter=0;
	sub next_counter{
		return ++$counter;
	}
	sub prev_counter{
		return --$counter;
	}

	print "next_counter=",next_counter,"\n";
	print "next_counter=",next_counter,"\n";
	print "prev_counter=",prev_counter,"\n";
	local $our_var="local value wihthin scope";
	print "our var is ",$our_var,"\n";

	print "our var is from outside ",$our_var,"\n";
	local $our_var="23";
	print "our_var is",$our_var,"\n";

  local $our_var="updated within scope ";
}
 print $our_var,"\n";

sub get_value{
	#our $our_var;
	sub get{
		our $our_var;
		return $our_var;
	}
	sub set{
		our $our_var;
		$our_var=shift;
	}
	return (\&get,\&set);
}

my ($get,$set)=get_value();
print $get->(),"\n";
$set->(23);
print $get->(),"\n";
print "\$our_var is ",$our_var,"\n";

print "#################################\n";
while(my($k,$v)= each(%main::)){
	print $k," = ",$v,"\n";
}

print "###########Symbol in File::Find########\n";
use  File::Find;
while (my ($k,$v)=each(%File::Find::)){
	print $k," = ",$v,"\n";
}

print "*current_dir package=",*current_dir{PACKAGE},"\n";

printf ref(*dir),"\n";