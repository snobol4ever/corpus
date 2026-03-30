// A15_lib_stack.sc — general-purpose stack: push, pop, peek, depth
// Snocone translation of crosscheck/library/test_stack.sno + lib/stack.sno
&TRIM = 1;

DATA('slink(snext, sval)');
stk = '';

procedure stack_init() {
    stk = '';
    return;
}
procedure stack_push(x) {
    stk = slink(stk, x);
    return;
}
procedure stack_pop()(val) {
    if (DIFFER(stk)) {
        val = sval(stk);
        stk = snext(stk);
        return val;
    }
    freturn;
}
procedure stack_peek() {
    if (DIFFER(stk)) { return sval(stk); }
    freturn;
}
procedure stack_depth()(sd, n) {
    n = 0;
    sd = stk;
    while (DIFFER(sd)) {
        n = n + 1;
        sd = snext(sd);
    }
    return n;
}

// basic push/pop/depth
stack_init();
stack_push('a');
stack_push('b');
stack_push('c');
OUTPUT = stack_depth();
OUTPUT = stack_pop();
OUTPUT = stack_pop();
OUTPUT = stack_depth();
OUTPUT = stack_pop();
OUTPUT = stack_depth();

// empty stack freturn
if (stack_pop()) {
    OUTPUT = 'fail: empty pop should freturn';
} else {
    OUTPUT = 'empty ok';
}

// peek does not pop
stack_init();
stack_push('x');
OUTPUT = stack_peek();
OUTPUT = stack_depth();
OUTPUT = stack_pop();

// pop into named variable (use direct assignment)
stack_init();
stack_push(42);
stack_push(99);
myvar = stack_pop();
OUTPUT = myvar;

// push values from pattern match
stack_init();
subject = 'hello world';
if (subject ? BREAK(' ') . w1 && LEN(1) && REM . w2) {
    stack_push(w1);
    stack_push(w2);
    OUTPUT = stack_pop();
    OUTPUT = stack_pop();
} else {
    OUTPUT = 'fail: pattern match failed';
}
