// B05_alt_chain: three-way alternation, third arm matches
S = "world";
if (S ? ("foo" || "bar" || "wor") . M) {
    OUTPUT = M;
}
