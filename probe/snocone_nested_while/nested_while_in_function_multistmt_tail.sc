// nested_while_in_function_multistmt_tail.sc -- regression witness, snocone-nested-while-in-function-segv.
// Two statements (not one) follow the inner while inside the outer body, checking that only the
// first trailing statement needs its own fresh depth-planning head -- the second must chain from it.
function S5(n, x, i, j, y) {
    x = 0; i = 1; y = 0;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 1)) { x = x + 1; j = j + 1; }
        i = i + 1;
        y = y + 10; }
    S5 = x + y; return;
}
OUTPUT = S5(3);
