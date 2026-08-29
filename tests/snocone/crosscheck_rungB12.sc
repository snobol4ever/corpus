/*-------------------------------------------------------- 1 B12_pat_bool_num */
// use numeric comparison as pattern subject (EQ succeeds/fails as pattern)
a = 5;
b = 5;
if (EQ(a, b)) {
    OUTPUT = "match";
} else {
    OUTPUT = "no match";
}
c = 3;
if (EQ(a, c)) {
    OUTPUT = "match";
} else {
    OUTPUT = "no match";
}
/*-------------------------------------------------------- 2 B12_pat_for_body */
// pattern match inside for loop body
words = "cat dog fox";
for (i = 1; LE(i, 3); i = i + 1) {
    if (words ? BREAK(" ") . w   LEN(1)) {
        OUTPUT = w;
    }
}
/*------------------------------------------------------ 3 B12_pat_if_capture */
// pattern in if with capture
s = "hello world";
if (s ? SPAN("abcdefghijklmnopqrstuvwxyz") . word) {
    OUTPUT = word;
}
/*----------------------------------------------------- 4 B12_pat_num_capture */
// capture a digit string and compare its numeric value
s = "42 things";
if (s ? SPAN("0123456789") . num) {
    if (EQ(num, 42)) {
        OUTPUT = "forty-two";
    }
}
/*------------------------------------------------------ 5 B12_pat_replace_if */
// replacement conditional on a numeric comparison
x = 10;
s = "the answer";
if (EQ(x, 10)) {
    s ? "answer" = "question";
}
OUTPUT = s;
/*---------------------------------------------------- 6 B12_str_pat_combined */
// string comparison guards a pattern operation
s = "hello";
t = "hello";
if (LEQ(s, t)) {
    if (s ? "ell" . m) {
        OUTPUT = m;
    }
}
