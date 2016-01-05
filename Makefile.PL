
use ExtUtils::MakeMaker;

my $EUMM_VERSION = eval $ExtUtils::MakeMaker::VERSION;

WriteMakefile(
    NAME         => 'Acme::Note',
    VERSION_FROM => 'lib/Acme/Note.pm',
    PREREQ_PM    => {
        'strict' => 0,
        ( 'warnings'         => 0, ) x !!( $] >= 5.006 ),
        ( 'warnings::compat' => 0, ) x !!( $] < 5.006 ),
        'Term::ANSIColor' => 0,

        # build_requires
        'Test::More' => 0,
    },
    ($] >= 5.005 ? (
            ABSTRACT_FROM => 'lib/Acme/Note.pod',
            AUTHOR        => 'Adriano R. Ferreira <ferreira@cpan.org>'
          )
    : ()),
    ($EUMM_VERSION >= 6.31 ? (
            LICENSE    => 'perl',
            EXTRA_META => "recommends:\n"
              . "    Test::Pod:                     1.18\n"
              . "    Test::Pod::Coverage:           1.04\n"
              . "dynamic_config: 1"
          )
    : ()),
    ($EUMM_VERSION > 6.4501 ? (
            META_MERGE => {
                resources => {
                    repository => 'http://github.com/aferreira/cpan-Acme-Note',
                }
            },
          )
    : () ),

);
