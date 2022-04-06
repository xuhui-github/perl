my $file = '/home/xuhui/.bashrc';

given $file.IO {
  if .e {
	put qq:to/HERE/
	  Name:      $_
	    Modified: { .modified.DateTime }
		Accessed: { .accessed.DateTime }
		Changed: { .changed.DateTime }
		Node: { .mode }
	  HERE
	  }
	}

