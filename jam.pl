#!/usr/bin/perl
#
require 'sys/ioctl.ph';
require 'sys/syscall.ph';

die "no TIOCSTI" unless defined &TIOCSTI;

sub time(){
  my $tv=pack("LL",());
  syscall(&main::SYS_gettimeofday,$tv,undef) >=0 
    or die "gettimeofday: $!";
  my($seconds,$microseconds)=unpack("LL",$tv);
  return $seconds+($microseconds/1_000_000);
}

print time(),"\n";
