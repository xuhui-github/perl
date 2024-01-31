use 5.006;
use strict;
use warnings;
use inc::Module::Install;

name     'CrashCourse-Point';
all_from 'lib/CrashCourse/Point.pm';
author   q{me <ofxuhui@gmail.com>};
license  'artistic2';

perl_version '5.006';

tests_recursive('t');

resources (
   #homepage   => 'http://yourwebsitehere.com',
   #IRC        => 'irc://irc.perl.org/#CrashCourse-Point',
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   #repository => 'git://github.com/me/CrashCourse-Point.git',
   #repository => 'https://bitbucket.org/me/CrashCourse-Point',
   bugtracker => 'https://rt.cpan.org/NoAuth/Bugs.html?Dist=CrashCourse-Point',
);

configure_requires (
   'Module::Install' => '0',
);

test_requires (
   'Test::More' => '0',
);

requires (
   #'ABC'              => '1.6',
   #'Foo::Bar::Module' => '5.0401',
);

install_as_cpan;
auto_install;
WriteAll;
