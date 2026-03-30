// A13_define_loop_call.sc — function called in loop, concat results
procedure bump(v) {
    return v + 1;
}
S = '';
J = 0;
while (LT(J, 5)) {
    S = S && bump(2 * J);
    J = J + 1;
}
OUTPUT = S;
