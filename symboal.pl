use File::Find;
print ref(*File::Find::find{CODE}),"\n";
print *File::Find::find{NAME},"\n";
print *File::Find::find{PACKAGE},"\n";

print "defined find\n" if defined(*find{CODE});
print "find Package is ", *find{PACKAGE},"\n";
#@a=(2,3,4);
print "\@a defined " if defined(*a{ARRAY});
