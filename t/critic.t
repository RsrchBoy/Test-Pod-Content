eval {
    require Test::Perl::Critic;
    Test::Perl::Critic::import('Test::Perl::Critic',
        -profile => 't/perlcriticrc', -serverity => 1
    );
};
if ($@) {
    require Test::More;
    Test::More::plan( 
       skip_all => 'Test::Critic required for testing criticism'
    );
}
if (-d 't/') {
    all_critic_ok();
}
else {
    # chdir .. is stupid, but the profile has to be given 
    # as argument to import and is loaded in all_critic_ok...
    chdir '..';
    all_critic_ok('lib');
}
