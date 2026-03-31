// B05_alt_both_fail: both alternatives fail, match fails
S = "hello";
if (S ? ("xyz" || "abc")) {
    OUTPUT = "matched";
} else {
    OUTPUT = "no match";
}
