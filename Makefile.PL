use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Daje::Utils::Selectnames',
  VERSION_FROM => 'lib/Daje/Utils/Selectnames.pm',
  AUTHOR       => 'Jan Eskilsson <nospam@cpan.org>',
  PREREQ_PM    => {
    
    },
  test         => {TESTS => 't/*.t'}
);
