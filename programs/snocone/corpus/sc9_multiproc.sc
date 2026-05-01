function max(a, b) {
    if (a >= b) return a;
    return b;
}
function min(a, b) {
    if (a <= b) return a;
    return b;
}
function abs_val(n) {
    if (n >= 0) return n;
    return 0 - n;
}
OUTPUT = max(3, 7);
OUTPUT = min(3, 7);
OUTPUT = abs_val(0 - 5);
OUTPUT = max(abs_val(0 - 3), abs_val(0 - 8));
