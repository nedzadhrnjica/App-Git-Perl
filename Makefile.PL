use 5.006;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME             => 'App::Git::Perl',
  VERSION_FROM     => 'script/git-perl',
  ABSTRACT_FROM    => 'lib/App/Git/Perl.pm',
  AUTHOR           => 'Nedzad Hrnjica',
  LICENSE          => 'perl',
  MIN_PERL_VERSION => '5.006',
  EXE_FILES        => ['script/git-perl'],
  (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
    'meta-spec' => { version => 2 },
    resources => {
      repository => {
        type       => 'git',
        url        => 'https://github.com/nedzadhrnjica/App-Git-Perl.git',
        web        => 'https://github.com/nedzadhrnjica/App-Git-Perl',
      },
      bugtracker => {
        web        => 'https://github.com/nedzadhrnjica/App-Git-Perl/issues',
      },
    }})
  : ()
  ),
);

