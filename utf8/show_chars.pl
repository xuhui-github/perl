use utf8;
use charnames ':full';
my $precomposed=
  "\N{LATIN SMALL LETTER A WITH DIAERESIS}";
my $composed=
  "\N{LATIN SMALL LETTER A}" . "\N{COMBINING DIAERESIS}";


print "precomposed:\n\t",show_chars($precomposed),"\n";
print "composed:\n\t",show_chars($composed),"\n";

sub show_chars{
  my $phrase=shift;

  my $string='';
  foreach my $char (split //,$phrase){
    my $name=charnames::viacode(ord $char);
	$string .= "$name\n\t";
	}
  return $string;
}

binmode STDOUT, ':utf8';
print $composed,"\n";
print $precomposed,"\n";
