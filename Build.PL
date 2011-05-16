use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Geekdir',
    license             => 'perl',
    dist_author         => 'Steve Huff <shuff@cpan.org>',
    dist_version_from   => 'lib/Geekdir.pm',
    requires => {
        'Moose'      => 0,
        'JSON'       => 0,
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Geekdir-*' ],
    create_makefile_pl  => 'traditional',
);

$builder->create_build_script();
