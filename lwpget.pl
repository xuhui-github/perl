#!/usr/bin/perl -w

use strict;

use LWP::UserAgent;

my $ua = LWP::UserAgent->new;

$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 6.1 en-US; rv:1.9.2.18)

Gecko/20110614 Firefox/3.6.18");

my $req = HTTP::Request->new(GET => shift);

my $res = $ua->request($req);

my @lines = split(/\n/,$res->content);

die "URL cannot be reached!" unless $res->code == 200;

foreach(@lines){

print $_."\n" if($_ =~ m/<img.+src=(“|’).*>/);

}
