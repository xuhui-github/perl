use Net::Bluetooth;

      #### list all remote devices in the area
      my $device_ref = get_remote_devices();
      foreach $addr (keys %$device_ref) {
            print "Address: $addr Name: $device_ref->{$addr}\n";
      }


