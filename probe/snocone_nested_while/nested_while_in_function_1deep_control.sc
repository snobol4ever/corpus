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
