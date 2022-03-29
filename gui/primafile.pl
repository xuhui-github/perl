      use strict;
      use Prima qw(Application);

      # create pipe and autoflush the writer end
      pipe(READ, WRITE) or die "pipe():$!\n"; 
      select WRITE;
      $|=1;
      select STDOUT;

      # create Prima listener on the reader end
      my $read = Prima::File-> new(
          file => \*READ,
          mask => fe::Read,
          onRead => sub {
             $_ = <READ>;
             print "read:$_\n";
          },
      );

      print WRITE "line\n";
      run Prima;

