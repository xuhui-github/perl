#!/usr/bin/perl

use strict;
use warnings;

my $ip='127.0.0.1';
my $port=80;


my $binary = inet_aton($ip);
my $socket_addr = socket_in($port,$binary);

my ($socket_port,$socket_binary) = sockaddr_in($socket_addr);
my $socket_dotted_decimal = inet_ntoa($socket_binary);



