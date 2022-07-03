use Test::More;

for my $program ( "cat", "curl", "cut", "echo", "find", "git", "grep", "head", "ls", "mkdir","print", "rm", "sed", "sort", "tac", "tail", "tr", "uniq", "xargs" ) {
  is( system("which \"$program\" >/dev/null 2>/dev/null"), 0, "which $program" );
};

done_testing();

