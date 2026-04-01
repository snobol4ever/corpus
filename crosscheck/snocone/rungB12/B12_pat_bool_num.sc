// use numeric comparison as pattern subject (EQ succeeds/fails as pattern)
a = 5;
b = 5;
if (a == b) {
    OUTPUT = "match";
} else {
    OUTPUT = "no match";
}
c = 3;
if (a == c) {
    OUTPUT = "match";
} else {
    OUTPUT = "no match";
}
