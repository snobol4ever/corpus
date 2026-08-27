// nested_while_in_function.sc -- PROBE, minimal repro.
// A `while` loop nested inside another `while` loop, both inside a Snocone
// FUNCTION body, SIGSEGVs on the function's own return/gamma-exit path in
// both --run and --compile (gdb: null-pointer dereference chasing a stale
// fixed-stack-offset continuation at S5_gamma+100, rcx=0 at the fault).
// The identical structure at TOP LEVEL (outside any function) does not
// crash -- see postoffice task snocone-nested-while-in-function-segv.
function S5(n, x, i, j) {
    x = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 1)) { x = j; j = j + 1; }
        i = i + 1; }
    S5 = x; return;
}
OUTPUT = S5(3);
