/*---------------------------------------------------- 1 B05_alt_assign XFAIL */
// B05_alt_assign: alternation result captured and assigned
S = "testing";
if (S ? (("xyz", "test")) . RESULT) {
    OUTPUT = RESULT;
}
/*------------------------------------------------- 2 B05_alt_both_fail XFAIL */
// B05_alt_both_fail: both alternatives fail, match fails
S = "hello";
if (S ? (("xyz", "abc"))) {
    OUTPUT = "matched";
} else {
    OUTPUT = "no match";
}
/*----------------------------------------------------- 3 B05_alt_chain XFAIL */
// B05_alt_chain: three-way alternation, third arm matches
S = "world";
if (S ? (("foo", "bar", "wor")) . M) {
    OUTPUT = M;
}
/*------------------------------------------------- 4 B05_alt_left_wins XFAIL */
// B05_alt_left_wins: left alternative matches, right not tried
S = "hello";
if (S ? (("hel", "xyz")) . M) {
    OUTPUT = M;
}
/*-------------------------------------------- 5 B05_alt_right_fallback XFAIL */
// B05_alt_right_fallback: left fails, right succeeds
S = "hello";
if (S ? (("xyz", "ell")) . M) {
    OUTPUT = M;
}
