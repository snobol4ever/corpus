my $s = "  Hello World  ";
say lc($s.trim), "|", uc("abc"), "|", tc("abc"), "|", tclc("aBC"), "|", fc("ABC");
say chomp("x\n"), "|", chop("abc"), "|", flip("abc"), "|", wordcase("hello world");
say trim-leading($s), "|", trim-trailing($s), "|", substr("abcdef", 2, 3), "|", index("abcabc", "c"), "|", rindex("abcabc", "c");
say ords("AB"), "|", samecase("hello", "AbCd");
