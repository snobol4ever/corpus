// A13_define_loop_call.sc — function called in loop, concat results
procedure bump(v) {
    return v + 1;
}
s = '';
j = 0;
while (LT(j, 5)) {
    s = s && bump(2 * j);
    j = j + 1;
}
OUTPUT = s;
