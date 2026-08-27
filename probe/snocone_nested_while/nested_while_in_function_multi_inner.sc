// nested_while_in_function_multi_inner.sc -- regression witness, snocone-nested-while-in-function-segv.
// Same shape as nested_while_in_function.sc but the inner while runs 3 iterations per outer pass
// instead of 1, exercising the inner loop's own back-edge repeatedly before the outer-tail transition.
function S5(n, x, i, j, acc) {
    acc = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 3)) { acc = acc + j; j = j + 1; }
        i = i + 1; }
    S5 = acc; return;
}
OUTPUT = S5(4);
