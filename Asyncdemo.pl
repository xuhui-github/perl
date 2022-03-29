#!/usr/bin/perl
use Async;
use Async qw/ready/;
sub long_running_computation{
	my($x)=@_;
	sleep 5;
	return $x+2
}

my $proc=Async->new(sub {long_running_computation(2) or die});
while(1){
	print "Main program: The time is now ",scalar(localtime),"\n";
	my $e;
	if($proc->ready){
		if($e=$proc->error){
			print "Something went wrong.The error was: $e\n";

		} else {
			print "The result of the computation is:",$proc->result,"\n";
		}
		undef $proc;
		
	} 
	
	sleep 1;
}
