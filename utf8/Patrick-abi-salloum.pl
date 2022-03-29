use charnames ':full';

use utf8;

my $phrase='ءارحصلا لمجلا زاتجإ';
if($phrase =~ m/\N{ARABIC LETTER HAMZA}/){
  print "I matched a HAMZA!\n";
  }
  
print $phrase,"\n";
