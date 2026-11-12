sub chars($s) { return "mine:" ~ $s }
sub uc($s) { return "upper:" ~ $s }
say chars("abc");
say "abc".chars;
say uc("abc");
say "abc".uc;
{
    sub flip($s) { return "flipped:" ~ $s }
    say flip("ab");
    say "ab".flip;
}
say flip("cd");
