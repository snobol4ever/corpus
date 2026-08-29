/*----------------------------------------------------------- 1 A15_lib_case */
// A15_lib_case.sc — case conversion: lwr, upr, cap, icase pattern
// Snocone translation of crosscheck/library/test_case.sno + lib/case.sno
&TRIM = 1;

function lwr(s) {
    return REPLACE(s, &UCASE, &LCASE);
}
function upr(s) {
    return REPLACE(s, &LCASE, &UCASE);
}
function cap(s) {
    return REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE)   REPLACE(SUBSTR(s, 2), &UCASE, &LCASE);
}
// icase(subject, pattern): succeed if subject matches pattern case-insensitively
function icase(subject, pat) {
    if (IDENT(lwr(subject), lwr(pat))) { return; } else { freturn; }
}

OUTPUT = lwr('HELLO WORLD');
OUTPUT = upr('hello world');
OUTPUT = cap('hELLO wORLD');

if (icase('Hello', 'hello')) {
    OUTPUT = 'ok: icase hello';
}
if (icase('HELLO', 'hello')) {
    OUTPUT = 'ok: icase HELLO';
}
if (icase('HeLLo', 'hello')) {
    OUTPUT = 'ok: icase HeLLo';
}
if (icase('world', 'hello')) {
    OUTPUT = 'fail: icase matched wrong string';
} else {
    OUTPUT = 'no match ok';
}
/*----------------------------------------------------- 2 A15_lib_math XFAIL */
// A15_lib_math.sc — numeric utility functions: max, min, abs, sign, gcd, lcm
// Snocone translation of crosscheck/library/test_math.sno + lib/math.sno
&TRIM = 1;

function max(a, b) {
    if (LT(a, b)) { return b; }
    return a;
}
function min(a, b) {
    if (GT(a, b)) { return b; }
    return a;
}
function abs(n) {
    if (LT(n, 0)) { return -n; }
    return n;
}
function sign(n) {
    if (LT(n, 0)) { return -1; }
    if (GT(n, 0)) { return 1; }
    return 0;
}
function gcd(a, b)(r) {
    while (DIFFER(b, 0)) {
        r = REMDR(a, b);
        a = b;
        b = r;
    }
    return a;
}
function lcm(a, b)(g) {
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
/*---------------------------------------------------- 3 A15_lib_stack XFAIL */
// A15_lib_stack.sc — general-purpose stack: push, pop, peek, depth
// Snocone translation of crosscheck/library/test_stack.sno + lib/stack.sno
&TRIM = 1;

DATA('slink(snext, sval)');
stk = '';

function stack_init() {
    stk = '';
    return;
}
function stack_push(x) {
    stk = slink(stk, x);
    return;
}
function stack_pop()(val) {
    if (DIFFER(stk)) {
        val = sval(stk);
        stk = snext(stk);
        return val;
    }
    freturn;
}
function stack_peek() {
    if (DIFFER(stk)) { return sval(stk); }
    freturn;
}
function stack_depth()(sd, n) {
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
if (subject ? BREAK(' ') . w1   LEN(1)   REM . w2) {
    stack_push(w1);
    stack_push(w2);
    OUTPUT = stack_pop();
    OUTPUT = stack_pop();
} else {
    OUTPUT = 'fail: pattern match failed';
}
/*--------------------------------------------------- 4 A15_lib_string XFAIL */
// A15_lib_string.sc — string utilities: pad_left, pad_right, ltrim, rtrim, trimws,
//                      repeat, contains, startswith, endswith, index
// Snocone translation of crosscheck/library/test_string.sno + lib/string.sno
&TRIM = 1;

function pad_left(s, n, c) {
    if (IDENT(c, '')) { c = ' '; }
    if (GE(SIZE(s), n)) { return s; }
    return DUPL(c, n - SIZE(s))   s;
}
function pad_right(s, n, c) {
    if (IDENT(c, '')) { c = ' '; }
    if (GE(SIZE(s), n)) { return s; }
    return s   DUPL(c, n - SIZE(s));
}
function ltrim(s)(ws) {
    ws = ' ';
    while (GT(SIZE(s), 0)) {
        if (SUBSTR(s, 1, 1) ? ANY(ws)) {
            s = SUBSTR(s, 2);
        } else {
            break;
        }
    }
    return s;
}
function rtrim(s)(ws, i, ch) {
    ws = ' ';
    i = SIZE(s);
    while (GT(i, 0)) {
        ch = SUBSTR(s, i, 1);
        if (ch ? ANY(ws)) {
            i = i - 1;
        } else {
            break;
        }
    }
    return SUBSTR(s, 1, i);
}
function trimws(s) {
    return ltrim(rtrim(s));
}
function repeat(s, n) {
    return DUPL(s, n);
}
function contains(s, t) {
    if (s ? BREAK(t)   t) { return; } else { freturn; }
}
function startswith(s, t) {
    if (s ? POS(0)   t) { return; } else { freturn; }
}
function endswith(s, t) {
    if (s ? t   RPOS(0)) { return; } else { freturn; }
}
function index(s, t)(ix) {
    ix = s;
    if (ix ? BREAK(t) . ix) { return SIZE(ix) + 1; }
    return 0;
}

OUTPUT = pad_left('hi', 6, '*');
OUTPUT = pad_right('hi', 6, '*');
OUTPUT = ltrim('   hello');
OUTPUT = rtrim('hello   ');
OUTPUT = trimws('  hello  ');
OUTPUT = repeat('hi', 3);

if (contains('foobar', 'oba')) {
    OUTPUT = 'contains ok';
} else {
    OUTPUT = 'fail: contains';
}
if (startswith('foobar', 'foo')) {
    OUTPUT = 'startswith ok';
} else {
    OUTPUT = 'fail: startswith';
}
if (endswith('foobar', 'bar')) {
    OUTPUT = 'endswith ok';
} else {
    OUTPUT = 'fail: endswith';
}
if (startswith('foobar', 'bar')) {
    OUTPUT = 'fail: startswith matched wrong';
} else {
    OUTPUT = 'no startswith ok';
}
OUTPUT = index('foobar', 'oba');
OUTPUT = index('foobar', 'xyz');
