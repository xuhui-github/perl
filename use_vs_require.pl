#Modules loaded with USE are loaded at COMPILE TIME;
#Modules loaded with REQUIRE are loaded during RUNTIME.
#
#use can be used to load pragmas; require can not load pragmas.
#
#use implicitly import exported identifiers from the modules being
#loaded;with require,you have to import the identifiers yourself.
#
#when you use the USE statement,you do not specify the ".pm"
#extension;when you use the REQUIRE statement,you can use the
#".pm" extension(or drop it if you want).


#you can "load" reular perl file into you script and use the code within your
#script.Using the REQUIRE or DO statements,you can do something like this:
#do 'file.pl';
#require 'file.pl";



