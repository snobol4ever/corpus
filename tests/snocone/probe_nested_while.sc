/*------------------------------------------ 1 nested_while_in_function XFAIL */
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
/*---------------------------- 2 nested_while_in_function_1deep_control XFAIL */
// nested_while_in_function_1deep_control.sc -- CONTROL sibling for the SEGV probe
// in this same directory (nested_while_in_function.sc). Same function shape (S5(n,x,i,j),
// same body statements: j=0; x=j; j=j+1; i=i+1), but the inner `while(LT(j,1)) {...}` wrapper
// is removed -- the same three statements run unconditionally once per outer iteration instead
// of via a nested loop. This does NOT crash (both --run and --compile), confirming the defect
// is specifically about a `while` nested inside a `while` (not about the statements themselves,
// not about iteration count of a single loop -- this one iterates the SAME 3 outer times).
// Used for ASM-DIFF-FIRST: compiling both this file and the sibling .sc with --compile and
// diffing the emitted .s isolates exactly what a second level of loop nesting changes in the
// generated stack accounting. See postoffice task snocone-nested-while-in-function-segv
// for the full bisection trail and confirmed root-cause mechanism.
function S5(n, x, i, j) {
    x = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        x = j; j = j + 1;
        i = i + 1; }
    S5 = x; return;
}
OUTPUT = S5(3);
/*------------------------------------ 3 nested_while_in_function_3deep XFAIL */
// nested_while_in_function_3deep.sc -- KNOWN-OPEN witness, three levels of while nesting in a function.
// SIGSEGVs as of 2026-08-27 (task snocone-triple-nested-while-baseline-drift): the fix for the 2-level
// case (snocone-nested-while-in-function-segv) does not generalize -- a freshly-planned "trailing
// statement after a nested loop" run is unconditionally baselined at local depth 0, which is only
// correct when nothing that run reaches later needs a different, non-zero baseline. Do not expect
// this file to pass without that follow-up landing first.
function S5(n, x, i, j, k, acc) {
    acc = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 2)) {
            k = 0;
            while (LT(k, 2)) { acc = acc + 1; k = k + 1; }
            j = j + 1; }
        i = i + 1; }
    S5 = acc; return;
}
OUTPUT = S5(3);
/*------------------------------ 4 nested_while_in_function_multi_inner XFAIL */
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
/*--------------------------- 5 nested_while_in_function_multistmt_tail XFAIL */
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
