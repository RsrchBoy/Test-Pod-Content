use Module::Build;
use version;
Module::Build->new(
    dist_author        => 'Martin Kutter <martin.kutter@fen-net.de>',
    create_makefile_pl => 'passthrough',
    dist_abstract      => 'Test Pod content',
    dist_name          => 'Test-Pod-Content',
    version_from       => 'Test::Pod::Content',
    module_name        => 'Test::Pod::Content',
    license            => 'artistic',
    requires           => {
        Test::More => 0,
        Pod::Simple => 0,
    }
)->create_build_script;
