
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'PostgreSQL::PLPerl::Injector',
                       'DISTNAME' => 'PostgreSQL-PLPerl-Injector',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Tim Bunce <Tim.Bunce@pobox.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Inject subs and code into the PostgreSQL plperl language',
                       'EXE_FILES' => [],
                       'VERSION' => '1.002',
                       'PREREQ_PM' => {
                                        'DBI' => '1.605'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



