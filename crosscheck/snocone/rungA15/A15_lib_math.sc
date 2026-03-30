// A15_lib_math.sc — numeric utility functions: max, min, abs, sign, gcd, lcm
// Snocone translation of crosscheck/library/test_math.sno + lib/math.sno
&TRIM = 1;

procedure max(a, b) {
    if (LT(a, b)) { return b; }
    return a;
}
procedure min(a, b) {
    if (GT(a, b)) { return b; }
    return a;
}
procedure abs(n) {
    if (LT(n, 0)) { return -n; }
    return n;
}
procedure sign(n) {
    if (LT(n, 0)) { return -1; }
    if (GT(n, 0)) { return 1; }
    return 0;
}
procedure gcd(a, b)(r) {
    while (DIFFER(b, 0)) {
        r = REMDR(a, b);
        a = b;
        b = r;
    }
    return a;
}
procedure lcm(a, b)(g) {
    g = gcd(a, b);
    return (a / g) * b;
}

OUTPUT = max(3, 7);
OUTPUT = min(3, 7);
OUTPUT = max(3.5, 2.1);
OUTPUT = min(3.5, 2.1);
OUTPUT = abs(-42);
OUTPUT = sign(0);
OUTPUT = sign(5);
OUTPUT = sign(-3);
OUTPUT = gcd(12, 8);
OUTPUT = gcd(100, 75);
OUTPUT = lcm(4, 6);
