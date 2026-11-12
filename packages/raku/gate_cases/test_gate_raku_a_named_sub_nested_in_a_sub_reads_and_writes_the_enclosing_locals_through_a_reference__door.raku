sub e { my $n = 3; my sub f() { return $n }; my $g = &f; return $g(); }
say e();
