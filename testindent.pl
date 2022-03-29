use DBI;
use warnings;
use strict 'vars';

my %attr=(
	PrintError => 0,
	RaiseError =>1,
);

print %attr,"\n";
while(my ($key,$val)= (each(%attr))){
	print join("\t",($key,$val)),"\n";
}
keys(%attr);
values(%attr);

print "java CLASSPATH:","\n";
print join("\n",split(/:/,$ENV{'CLASSPATH'})),"\n";


