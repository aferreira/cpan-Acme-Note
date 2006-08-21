package Acme::Note;

use vars qw($VERSION);
$VERSION = '0.1';

=head1 NAME

Acme::Note - Make a mental note for programming style

=head1 SYNOPSIS

 use Acme::Note;
 # and then your honorable Perl script

Or at command line

 perl -MAcme::Note script.pl

=head1 DESCRIPTION

Sometimes you just have to remember that odd little thing.

 Tell you what. Let's just issue a mandatory warning at the startup of
 every Perl script that says:
 "???"
           --Larry Wall

=head1 BUGS

Besides not being able to invoke C<Test::More::use_ok>?

=head1 MAINTAINER

I do not claim authorship of this. This module imposed to myself and I
care for it while it doesn't bite me.

Adriano R. Ferreira <ferreira@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2006 Adriano R. Ferreira, All Rights Reserved.

The Acme::Note module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut

sub skroook { local $_ = pop; s/[^zZ]//g; tr/zZ/01/; pack "b*", $_ }
BEGIN { eval skroook <<POONG;
ZZzzzZzzzzzzzZzzZzZZzZZzZZZZzZZzzZzzZZZzZZzzZZZzZzZzzZZzzzzz
zZzzZZZZzZZzzZZZzZZzzZzZzzzzZZzzzZzzzZzzzzZzZzZzzzZzZZZzzzZz
ZzzZzzZzzZZZzzZzzzzzzZzzZZzZZZZzzZzZzzzzzzzzzZzzZZZzZZZzZzzz
zZZzzZzzZZZzzZZZzZZzzzzzzZzzzZzzzZzzzzZzzzZzZZZZzZZzzZZZzZZz
ZZZzzZzzzzZzZZZzzzzzzZzzzZzzzZZzZzZzzZZzzzzzzZzzZZzzZZZzzzZz
ZZZzZzZzZZZzzzzzZZZzZzzZzZZzzzZzzZZzzZZZzZzzzzZZZzZzzZZZzZZz
zZzzzZzzzZzZzzzzzzzzzZzzzzzzzZzzzzzzzZzzZzZzZZZzzZZZzZZzzzZZ
zZZzZzZzzZZzZZzzZZZzZZzzZZZzzzzzzZzzzzZzzZzzZzZzzzZzzZZZzzZz
zZZzZzZzZZzZZZZzzzzZzzZzZzzzzzZzzZzzZzZzzZZZzzZzZzZzzzZzZZzz
ZzZzZZzzZzZzZZZZZzZzZzzzzzZzZZzzzzZzzzZzZzZzZzzZzzZzzZZzZzZz
ZzZzzzZzZzZZZZZzzZzZzzzzZZzzzZzzZzZZZZZzzZzZzzzzZZzzzZzzzzzz
zZzzZzZZzZZzZZZZzZZzzZzzZZZzZZzzZZZzZzZzzZZzzzzzzZzzZZZZzZZz
zZZzzZZzzZZzzZZzzZzZzzzz
POONG
} 

1;