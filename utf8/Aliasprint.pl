 use utf8;
 no warnings 'utf8';
 use charnames ":full", ":alias" => {
   e_ACUTE => "LATIN SMALL LETTER E WITH ACUTE",
   mychar => 0xE8000,  # Private use area
   "自転車に乗る人" => "BICYCLIST"
 };
 print "\N{e_ACUTE} is a small letter e with an acute.\n";
 print "\N{mychar} allows me to name private use characters.\n";
 print "And I can create synonyms in other languages,",
       " such as \N{自転車に乗る人} for BICYCLIST (U+1F6B4)\n";

 use charnames ();
 print charnames::viacode(0x1234); # prints "ETHIOPIC SYLLABLE SEE"
 printf "%04X", charnames::vianame("GOTHIC LETTER AHSA"); # prints
                                                          # "10330"
 print charnames::vianame("LATIN CAPITAL LETTER A"); # prints 65 on
                                                     # ASCII platforms;
                                                     # 193 on EBCDIC
 print charnames::string_vianame("LATIN CAPITAL LETTER A"); # prints "A
