
use 5.006;
use ExtUtils::MakeMaker;

my $EUMM_VERSION = eval $ExtUtils::MakeMaker::VERSION;

WriteMakefile(
    NAME              => 'Acme::Note',
    VERSION_FROM      => 'lib/Acme/Note.pm',
    PREREQ_PM         => {
        Test::More        => 0,
    },
    ($] >= 5.005 ? (
        'ABSTRACT_FROM' => 'lib/Acme/Note.pm',
        'AUTHOR'        => 'Adriano R. Ferreira <ferreira@cpan.org>'
    ) : ()),
    ($EUMM_VERSION >= 6.30_01 ? (
        LICENSE => 'perl', 
        EXTRA_META => "recommends:\n" .
                      "    Test::Pod:                     1.18\n" .
                      "    Test::Pod::Coverage:           1.04\n" 
    ) :())

);

