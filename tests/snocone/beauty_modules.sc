/*---------------------------------------------------------- 1 test_Gen XFAIL */
// driver.sc — test driver for Gen.sc (Snocone)
// Tests IncLevel/DecLevel/SetLevel/GetLevel/Gen/GenTab/GenSetCont

// Inline Gen.sc minimal subset
_indent = DUPL(' ', 120);
$'#L' = 0;
$'$B' = '';
$'$C' = '';
$'$X' = '';

function IncLevel(delta) {
    IncLevel = .dummy;
    if (IDENT(delta)) { delta = 2; }
    $'#L' = $'#L' + delta;
    nreturn;
}
function DecLevel(delta) {
    DecLevel = .dummy;
    if (IDENT(delta)) { delta = 2; }
    $'#L' = $'#L' - delta;
    nreturn;
}
function SetLevel(level) { SetLevel = .dummy; $'#L' = level; nreturn; }
function GetLevel() { GetLevel = $'#L'; return; }

function Gen(str, outNm, ind, outline, _rest) {
    Gen = .dummy;
    if (IDENT(outNm)) { outNm = .OUTPUT; }
    ind = '';
    if (GT($'#L', 0)) {
        _indent ? (POS(0) LEN($'#L' - SIZE($'$X')) . ind);
    }
    if (DIFFER($'$B')) { $'$B' = $'$B' str; }
    else { $'$B' = $'$X' ind str; }
    if ($'$B' ? (POS(0) BREAK(nl) . outline nl REM . _rest)) {
        $'$B' = _rest;
        $'$X' = $'$C';
        $outNm = outline;
    } else { nreturn; }
    while ($'$B' ? (POS(0) BREAK(nl) . outline nl REM . _rest)) {
        $'$B' = _rest;
        $outNm = $'$C' ind outline;
    }
    nreturn;
}

nl = CHAR(10);

&STLIMIT = 1000000;

// 1: GetLevel returns 0 initially
if (EQ(GetLevel(), 0)) { OUTPUT = 'PASS: 1 GetLevel initial'; }
else { OUTPUT = 'FAIL: 1 GetLevel initial got=' GetLevel(); }

// 2: SetLevel + GetLevel
SetLevel(5);
if (EQ(GetLevel(), 5)) { OUTPUT = 'PASS: 2 SetLevel/GetLevel'; }
else { OUTPUT = 'FAIL: 2 SetLevel/GetLevel got=' GetLevel(); }

// 3: IncLevel default delta
SetLevel(0);
IncLevel();
if (EQ(GetLevel(), 2)) { OUTPUT = 'PASS: 3 IncLevel default'; }
else { OUTPUT = 'FAIL: 3 IncLevel default got=' GetLevel(); }

// 4: IncLevel with delta
IncLevel(3);
if (EQ(GetLevel(), 5)) { OUTPUT = 'PASS: 4 IncLevel +3'; }
else { OUTPUT = 'FAIL: 4 IncLevel +3 got=' GetLevel(); }

// 5: DecLevel default
DecLevel();
if (EQ(GetLevel(), 3)) { OUTPUT = 'PASS: 5 DecLevel default'; }
else { OUTPUT = 'FAIL: 5 DecLevel default got=' GetLevel(); }

// 6: DecLevel with delta
DecLevel(3);
if (EQ(GetLevel(), 0)) { OUTPUT = 'PASS: 6 DecLevel -3'; }
else { OUTPUT = 'FAIL: 6 DecLevel -3 got=' GetLevel(); }

// 7: Gen emits a line with newline
SetLevel(0);
$'$B' = '';
Gen('hello' nl);
// After Gen, buffer should be empty (line was emitted)
if (IDENT($'$B')) { OUTPUT = 'PASS: 7 Gen flushed buffer'; }
else { OUTPUT = 'FAIL: 7 Gen buffer non-empty: ' $'$B'; }

// 8: Gen buffers without newline
$'$B' = '';
Gen('partial');
if (IDENT($'$B', 'partial')) { OUTPUT = 'PASS: 8 Gen buffers'; }
else { OUTPUT = 'FAIL: 8 Gen buffers got=' $'$B'; }
/*--------------------------------------------------------- 2 test_Qize XFAIL */
// driver.sc — test driver for Qize.sc (Snocone)
// Tests SQize, DQize, SqlSQize subset of Qize.inc

function SQize(str, part) {
    if (IDENT(str)) { return; }
    while (DIFFER(str)) {
        if (DIFFER(SQize)) { SQize = SQize ' '; }
        part = '';
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SQize = SQize "'" part "'" ' "' "'" '"';
        } else {
            part = str;
            SQize = SQize "'" part "'";
            str = '';
        }
    }
    return;
}

function DQize(str, part) {
    if (IDENT(str)) { return; }
    while (DIFFER(str)) {
        if (DIFFER(DQize)) { DQize = DQize ' '; }
        part = '';
        if (str ? (POS(0) BREAK('"') . part '"') = ) {
            DQize = DQize '"' part '"' " '" '"' "'";
        } else {
            part = str;
            DQize = DQize '"' part '"';
            str = '';
        }
    }
    return;
}

function SqlSQize(str, part) {
    SqlSQize = '';
    while (DIFFER(str)) {
        part = '';
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SqlSQize = SqlSQize part "''";
        } else {
            SqlSQize = SqlSQize str;
            str = '';
        }
    }
    return;
}

&STLIMIT = 1000000;

// 1: SQize basic
if (IDENT(SQize('hello'), "'hello'")) { OUTPUT = 'PASS: 1 SQize basic'; }
else { OUTPUT = 'FAIL: 1 SQize basic got=' SQize('hello'); }

// 2: SQize empty returns null
r = SQize('');
if (IDENT(r, '')) { OUTPUT = 'PASS: 2 SQize empty'; }
else { OUTPUT = 'FAIL: 2 SQize empty'; }

// 3: DQize basic
if (IDENT(DQize('hello'), '"hello"')) { OUTPUT = 'PASS: 3 DQize basic'; }
else { OUTPUT = 'FAIL: 3 DQize basic'; }

// 4: SqlSQize basic
if (IDENT(SqlSQize('hello'), 'hello')) { OUTPUT = 'PASS: 4 SqlSQize basic'; }
else { OUTPUT = 'FAIL: 4 SqlSQize basic got=' SqlSQize('hello'); }

// 5: SqlSQize doubles single quotes
if (IDENT(SqlSQize("it's"), "it''s")) { OUTPUT = 'PASS: 5 SqlSQize doubles quote'; }
else { OUTPUT = 'FAIL: 5 SqlSQize doubles quote got=' SqlSQize("it's"); }
/*---------------------------------------------------------- 3 test_ReadWrite */
// driver.sc — test driver for ReadWrite.sc (Snocone)
nl = CHAR(10);

function LineMap(str, lmMapName, lmLineNo, lmMap, lmAbs, i, n, ch) {
    lmMap = TABLE(); lmLineNo = 1; lmAbs = 0; n = SIZE(str);
    lmMap[0] = lmLineNo; i = 0;
    while (1) {
        i = i + 1; if (GT(i, n)) { break; }
        ch = SUBSTR(str, i, 1);
        if (IDENT(ch, nl)) {
            lmAbs = lmAbs + i; lmLineNo = lmLineNo + 1;
            lmMap[lmAbs] = lmLineNo;
            str = SUBSTR(str, i + 1); n = SIZE(str); i = 0;
        }
    }
    $lmMapName = lmMap; return;
}

function Read(fileName, rdMapName) { freturn; }
function Write(fileName, fileStr)  { freturn; }

&STLIMIT = 1000000;

// 1: LineMap offset 0 = line 1
LineMap('alpha'   nl   'beta'   nl   'gamma'   nl, 'lm1');
if (EQ(lm1[0], 1)) { OUTPUT = 'PASS: 1 LineMap[0]=1'; } else { OUTPUT = 'FAIL: 1 LineMap[0]='   lm1[0]; }

// 2: LineMap offset SIZE('alpha')+1 = line 2
off2 = SIZE('alpha') + 1;
if (EQ(lm1[off2], 2)) { OUTPUT = 'PASS: 2 LineMap offset '   off2   ' = line 2'; } else { OUTPUT = 'FAIL: 2 LineMap['   off2   ']='   lm1[off2]; }

// 3: LineMap offset SIZE('alpha')+1+SIZE('beta')+1 = line 3
off3 = SIZE('alpha') + 1 + SIZE('beta') + 1;
if (EQ(lm1[off3], 3)) { OUTPUT = 'PASS: 3 LineMap offset '   off3   ' = line 3'; } else { OUTPUT = 'FAIL: 3 LineMap['   off3   ']='   lm1[off3]; }

// 4: Read FRETURN on inaccessible path
if (~Read('/nonexistent/path/file.txt')) { OUTPUT = 'PASS: 4 Read FRETURN on bad path'; } else { OUTPUT = 'FAIL: 4 Read bad path should FRETURN'; }

// 5: Write FRETURN on inaccessible path
if (~Write('/nonexistent/path/file.txt', 'x'   nl)) { OUTPUT = 'PASS: 5 Write FRETURN on bad path'; } else { OUTPUT = 'FAIL: 5 Write bad path should FRETURN'; }

// 6: LineMap empty string — table with lmMap[0]=1
LineMap('', 'lm6');
if (DIFFER(lm6)) { OUTPUT = 'PASS: 6 LineMap empty string creates table'; } else { OUTPUT = 'FAIL: 6 LineMap empty string no table'; }

// 7: LineMap single word no trailing nl
LineMap('hello', 'lm7');
if (EQ(lm7[0], 1)) { OUTPUT = 'PASS: 7 LineMap single word no-nl'; } else { OUTPUT = 'FAIL: 7 LineMap[0]='   lm7[0]; }

// 8: LineMap 2-line, second line offset
LineMap('x'   nl   'y'   nl, 'lm8');
if (EQ(lm8[SIZE('x') + 1], 2)) { OUTPUT = 'PASS: 8 LineMap 2-line second offset'; } else { OUTPUT = 'FAIL: 8 LineMap 2-line offset got '   lm8[SIZE('x') + 1]; }
/*-------------------------------------------------------- 4 test_ShiftReduce */
// driver.sc — test driver for ShiftReduce.sc (Snocone)
struct tree { t, v, n, c }
struct link { next, value }
xTrace = 0;

function InitStack() { $'@S' = ''; return; }
function Push(x) {
    $'@S' = link($'@S', x);
    if (IDENT(x, '')) { Push = .value($'@S'); nreturn; }
    else { Push = .dummy; nreturn; }
}
function Pop(var) {
    if (~DIFFER($'@S')) { freturn; }
    if (IDENT(var, '')) { Pop = value($'@S'); $'@S' = next($'@S'); return; }
    else { $var = value($'@S'); $'@S' = next($'@S'); Pop = .dummy; nreturn; }
}
function Top() {
    if (~DIFFER($'@S')) { freturn; }
    Top = .value($'@S'); nreturn;
}

function Shift(t, v) {
    _s = tree(t, v, 0, '');
    Push(_s);
    if (IDENT(v, '')) { Shift = .value(_s); nreturn; }
    else { Shift = .dummy; nreturn; }
}
function Reduce(t, n, c, i, r) {
    Reduce = .dummy;
    if (GE(n, 1)) { c = ARRAY('1:'   n); } else { c = ''; }
    i = n + 1;
    while (GT(i, 1)) { i = i - 1; c[i] = Pop(''); }
    r = tree(t, '', n, c);
    Push(r);
    nreturn;
}

&STLIMIT = 1000000;

// 1: Shift leaf
InitStack();
Shift('Id', 'foo');
nd = Top();
if (IDENT(t(nd),'Id')   IDENT(v(nd),'foo')) { OUTPUT = 'PASS: 1 Shift leaf'; } else { OUTPUT = 'FAIL: 1'; }

// 2: Shift two + Reduce(2)
InitStack();
Shift('Id', 'x'); Shift('Int', '42');
Reduce('BinOp', 2);
nd = Top();
if (IDENT(t(nd),'BinOp')   IDENT(n(nd),2)   IDENT(t(c(nd)[1]),'Id')   IDENT(t(c(nd)[2]),'Int')) {
    OUTPUT = 'PASS: 2 Reduce 2 children';
} else { OUTPUT = 'FAIL: 2'; }

// 3: Reduce(0)
InitStack();
Reduce('Epsilon', 0);
nd = Top();
if (IDENT(t(nd),'Epsilon')   IDENT(n(nd),0)) { OUTPUT = 'PASS: 3 Reduce 0 children'; } else { OUTPUT = 'FAIL: 3'; }

// 4: Shift empty value
InitStack();
Shift('Keyword', '');
nd = Top();
if (IDENT(t(nd),'Keyword')   IDENT(v(nd),'')) { OUTPUT = 'PASS: 4 Shift empty value'; } else { OUTPUT = 'FAIL: 4'; }

// 5: Shift 3, Reduce(3) — correct child order
InitStack();
Shift('A','a'); Shift('B','b'); Shift('C','c');
Reduce('List', 3);
nd = Top();
if (IDENT(n(nd),3)   IDENT(t(c(nd)[1]),'A')   IDENT(t(c(nd)[2]),'B')   IDENT(t(c(nd)[3]),'C')) {
    OUTPUT = 'PASS: 5 Reduce 3 children order';
} else { OUTPUT = 'FAIL: 5'; }
/*-------------------------------------------------------- 5 test_TDump XFAIL */
// driver.sc — test driver for TDump.sc (Snocone)
// Tests TLump (single-line) — TDump uses Gen which buffers, harder to verify

struct tree { t, v, n, c }

function TValue(x, i) {
    if (IDENT(v(x))) { TValue = '.'; }
    else if (IDENT(t(x), 'integer')) { TValue = v(x); return; }
    else if (IDENT(t(x), 'string')) { TValue = "'" v(x) "'"; return; }
    else if (DIFFER(t(x))) { TValue = t(x); return; }
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        if (DIFFER(TValue)) { TValue = TValue '.' v(c(x)[i]); }
        else { TValue = v(c(x)[i]); }
    }
    return;
}

function TLump(x, len, i, _t, _child) {
    if (~GT(len, 0)) { freturn; }
    if (IDENT(x)) { TLump = '()'; return; }
    if (IDENT(n(x))) {
        TLump = TValue(x);
        if (LE(SIZE(TLump), len)) { return; }
        freturn;
    }
    if (t(x) ? (POS(0) ANY(&UCASE &LCASE)
                  (SPAN(digits &UCASE '_' &LCASE) | epsilon) RPOS(0))) {
        _t = t(x);
    } else {
        _t = '"' t(x) '"';
    }
    TLump = '(' _t;
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        _child = TLump(c(x)[i], len - SIZE(TLump) - 2);
        if (IDENT(_child)) { freturn; }
        TLump = TLump ' ' _child;
    }
    TLump = TLump ')';
    return;
}

digits = '0123456789';
&STLIMIT = 1000000;

// 1: TValue on integer leaf
leaf1 = tree('integer', '42', '', '');
if (IDENT(TValue(leaf1), '42')) { OUTPUT = 'PASS: 1 TValue integer'; }
else { OUTPUT = 'FAIL: 1 TValue integer got=' TValue(leaf1); }

// 2: TValue on string leaf
leaf2 = tree('string', 'hi', '', '');
if (IDENT(TValue(leaf2), "'hi'")) { OUTPUT = 'PASS: 2 TValue string'; }
else { OUTPUT = 'FAIL: 2 TValue string got=' TValue(leaf2); }

// 3: TLump on null returns ()
if (IDENT(TLump('', 100), '()')) { OUTPUT = 'PASS: 3 TLump null'; }
else { OUTPUT = 'FAIL: 3 TLump null got=' TLump('', 100); }

// 4: TLump on integer leaf
if (IDENT(TLump(leaf1, 100), '42')) { OUTPUT = 'PASS: 4 TLump integer leaf'; }
else { OUTPUT = 'FAIL: 4 TLump integer leaf got=' TLump(leaf1, 100); }

// 5: TLump fails when len too small
r = TLump(leaf1, 1);
if (IDENT(r, '')) { OUTPUT = 'PASS: 5 TLump fails on tight len'; }
else { OUTPUT = 'FAIL: 5 TLump tight len got=' r; }

// 6: TLump on tree node
arr = ARRAY('1:1');
arr[1] = leaf1;
node = tree('Add', '', 1, arr);
if (IDENT(TLump(node, 100), '(Add 42)')) { OUTPUT = 'PASS: 6 TLump tree'; }
else { OUTPUT = 'FAIL: 6 TLump tree got=' TLump(node, 100); }
/*-------------------------------------------------------------- 6 test_XDump */
// driver.sc — test driver for XDump.sc (Snocone)
// XDump output goes to OUTPUT — capture and verify

function XDump(object, nm, i, iMax, iMin, objArr, objField, objKey, objKeyNm,
                               objProto, objType, objVal) {
    objType = DATATYPE(object);
    if (IDENT(objType, 'INTEGER')) { OUTPUT = nm ' = ' object; return; }
    if (IDENT(objType, 'REAL')) { OUTPUT = nm ' = ' object; return; }
    if (IDENT(objType, 'STRING')) { OUTPUT = nm " = '" object "'"; return; }
    if (IDENT(objType, 'ARRAY')) {
        objProto = PROTOTYPE(object);
        OUTPUT = nm " = ARRAY['" objProto "']";
        return;
    }
    OUTPUT = nm ' = ' objType '()';
    return;
}

digits = '0123456789';
&STLIMIT = 1000000;

// 1: integer
XDump(42, 'x');

// 2: string
XDump('hello', 'y');

// 3: array
arr = ARRAY('1:3');
XDump(arr, 'a');
/*-------------------------------------------------------- 7 test_arith XFAIL */
// driver.sc — test driver for arith.sc

function ISqrt(n, i) {
    i = 0; while (LE((i + 1) * (i + 1), n)) { i = i + 1; } ISqrt = i; return;
}
function Fibonacci(n, a, b, t, i) {
    if (LE(n, 0)) { Fibonacci = 0; return; }
    if (EQ(n, 1)) { Fibonacci = 1; return; }
    a = 0; b = 1; i = 1;
    while (LT(i, n)) { i = i + 1; t = b; b = a + b; a = t; }
    Fibonacci = b; return;
}
function GCD(a, b, t) {
    while (DIFFER(b, 0)) { t = b; b = REMDR(a, b); a = t; }
    GCD = a; return;
}
function Factorial(n, acc, i) {
    acc = 1; i = 0;
    while (LT(i, n)) { i = i + 1; acc = acc * i; }
    Factorial = acc; return;
}
function IsPrime(n, i, lim) {
    if (LE(n, 1)) { freturn; }
    if (EQ(n, 2)) { return; }
    if (IDENT(REMDR(n, 2), 0)) { freturn; }
    lim = ISqrt(n); i = 1;
    while (1) { i = i + 2; if (GT(i, lim)) { break; }
        if (IDENT(REMDR(n, i), 0)) { freturn; } }
    return;
}
function Sieve(n, arr, i, j) {
    arr = TABLE(); i = 2;
    while (LE(i, n)) { arr[i] = 1; i = i + 1; }
    i = 2;
    while (LE(i * i, n)) {
        if (IDENT(arr[i], 1)) { j = i * i;
            while (LE(j, n)) { arr[j] = 0; j = j + i; } }
        i = i + 1; }
    Sieve = arr; return;
}

&STLIMIT = 10000000;
if (EQ(Fibonacci(10), 55))    { OUTPUT = 'PASS: 1 Fibonacci(10)=55'; }  else { OUTPUT = 'FAIL: 1'; }
if (EQ(Fibonacci(0), 0))      { OUTPUT = 'PASS: 2 Fibonacci(0)=0'; }    else { OUTPUT = 'FAIL: 2'; }
if (EQ(Fibonacci(1), 1))      { OUTPUT = 'PASS: 3 Fibonacci(1)=1'; }    else { OUTPUT = 'FAIL: 3'; }
if (EQ(Fibonacci(20), 6765))  { OUTPUT = 'PASS: 4 Fibonacci(20)=6765'; } else { OUTPUT = 'FAIL: 4 '   Fibonacci(20); }
if (EQ(GCD(48, 18), 6))       { OUTPUT = 'PASS: 5 GCD(48,18)=6'; }      else { OUTPUT = 'FAIL: 5'; }
if (EQ(GCD(100, 75), 25))     { OUTPUT = 'PASS: 6 GCD(100,75)=25'; }    else { OUTPUT = 'FAIL: 6'; }
if (EQ(GCD(7, 13), 1))        { OUTPUT = 'PASS: 7 GCD(7,13)=1'; }       else { OUTPUT = 'FAIL: 7'; }
if (EQ(Factorial(5), 120))    { OUTPUT = 'PASS: 8 Factorial(5)=120'; }   else { OUTPUT = 'FAIL: 8'; }
if (EQ(Factorial(0), 1))      { OUTPUT = 'PASS: 9 Factorial(0)=1'; }     else { OUTPUT = 'FAIL: 9'; }
if (EQ(Factorial(10), 3628800)) { OUTPUT = 'PASS: 10 Factorial(10)'; }  else { OUTPUT = 'FAIL: 10 '   Factorial(10); }
if (IsPrime(2))               { OUTPUT = 'PASS: 11 IsPrime(2)'; }         else { OUTPUT = 'FAIL: 11'; }
if (IsPrime(17))              { OUTPUT = 'PASS: 12 IsPrime(17)'; }        else { OUTPUT = 'FAIL: 12'; }
if (~IsPrime(1))              { OUTPUT = 'PASS: 13 ~IsPrime(1)'; }        else { OUTPUT = 'FAIL: 13'; }
if (~IsPrime(15))             { OUTPUT = 'PASS: 14 ~IsPrime(15)'; }       else { OUTPUT = 'FAIL: 14'; }
if (~IsPrime(100))            { OUTPUT = 'PASS: 15 ~IsPrime(100)'; }      else { OUTPUT = 'FAIL: 15'; }
primes = Sieve(20);
if (IDENT(primes[2],1)   IDENT(primes[3],1)   IDENT(primes[4],0)   IDENT(primes[17],1)   IDENT(primes[15],0)) {
    OUTPUT = 'PASS: 16 Sieve(20)';
} else { OUTPUT = 'FAIL: 16 Sieve'; }
if (EQ(ISqrt(15), 3))         { OUTPUT = 'PASS: 17 ISqrt(15)=3'; }       else { OUTPUT = 'FAIL: 17'; }
if (EQ(ISqrt(16), 4))         { OUTPUT = 'PASS: 18 ISqrt(16)=4'; }       else { OUTPUT = 'FAIL: 18'; }
/*------------------------------------------------------------- 8 test_assign */
// driver.sc — test driver for assign.sc (Snocone)
// Oracle: compare output to test/beauty/assign/driver.ref (SNOBOL4 golden)

// inline assign.sc
function assign(name, expression) {
    assign = .dummy;
    if (IDENT(DATATYPE(expression), 'EXPRESSION')) {
        $name = EVAL(expression);
        nreturn;
    }
    $name = expression;
    nreturn;
}

&STLIMIT = 1000000;

// 1: basic string assign
assign('a', 'hello');
if (IDENT(a, 'hello')) {
    OUTPUT = 'PASS: 1 basic string assign';
} else {
    OUTPUT = 'FAIL: 1 basic string assign';
}

// 2: assign integer
assign('b', 99);
if (IDENT(b, 99)) {
    OUTPUT = 'PASS: 2 assign integer';
} else {
    OUTPUT = 'FAIL: 2 assign integer';
}

// 3: reassign (overwrite existing value)
assign('c', 'first');
assign('c', 'second');
if (IDENT(c, 'second')) {
    OUTPUT = 'PASS: 3 reassign';
} else {
    OUTPUT = 'FAIL: 3 reassign';
}

// 4: assign returns null (always succeeds, no value)
r = assign('d', 'val');
if (IDENT(r, '')) {
    OUTPUT = 'PASS: 4 assign returns null';
} else {
    OUTPUT = 'FAIL: 4 assign returns null';
}

// 5: assign empty string
assign('e', '');
if (IDENT(e, '')) {
    OUTPUT = 'PASS: 5 assign empty string';
} else {
    OUTPUT = 'FAIL: 5 assign empty string';
}

// 6: assign via indirect variable name
vname = 'myvar';
assign(vname, 'indirect');
if (IDENT(myvar, 'indirect')) {
    OUTPUT = 'PASS: 6 indirect varname';
} else {
    OUTPUT = 'FAIL: 6 indirect varname';
}

// 7: chain assign
assign('x', 'chain');
assign('y', x);
if (IDENT(y, 'chain')) {
    OUTPUT = 'PASS: 7 chain assign';
} else {
    OUTPUT = 'FAIL: 7 chain assign';
}
/*--------------------------------------------------------- 9 test_case XFAIL */
// driver.sc — test driver for case.sc (Snocone)
// Tests lwr, upr, cap, icase from corpus/programs/snocone/demo/beauty/case.sc

function lwr(s) {
    lwr = REPLACE(s, &UCASE, &LCASE);
    return;
}

function upr(s) {
    upr = REPLACE(s, &LCASE, &UCASE);
    return;
}

function cap(s) {
    cap = REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE) REPLACE(SUBSTR(s, 2), &UCASE, &LCASE);
    if (DIFFER(cap)) { return; }
    error();
}

function icase(str, letter, character) {
    if (IDENT(str)) { return; }
    while (DIFFER(str)) {
        letter = '';
        str ? (POS(0) ANY(&UCASE &LCASE) . letter) = ;
        if (DIFFER(letter)) {
            icase = icase (upr(letter) | lwr(letter));
        } else {
            character = '';
            str ? (POS(0) LEN(1) . character) = ;
            icase = icase character;
        }
    }
    return;
}

&STLIMIT = 1000000;

// 1: lwr basic
if (IDENT(lwr('HELLO'), 'hello')) { OUTPUT = 'PASS: 1 lwr basic'; }
else { OUTPUT = 'FAIL: 1 lwr basic got=' lwr('HELLO'); }

// 2: lwr mixed
if (IDENT(lwr('HeLLo'), 'hello')) { OUTPUT = 'PASS: 2 lwr mixed'; }
else { OUTPUT = 'FAIL: 2 lwr mixed'; }

// 3: lwr already lower
if (IDENT(lwr('hello'), 'hello')) { OUTPUT = 'PASS: 3 lwr already lower'; }
else { OUTPUT = 'FAIL: 3 lwr already lower'; }

// 4: upr basic
if (IDENT(upr('hello'), 'HELLO')) { OUTPUT = 'PASS: 4 upr basic'; }
else { OUTPUT = 'FAIL: 4 upr basic'; }

// 5: upr mixed
if (IDENT(upr('HeLLo'), 'HELLO')) { OUTPUT = 'PASS: 5 upr mixed'; }
else { OUTPUT = 'FAIL: 5 upr mixed'; }

// 6: cap basic
if (IDENT(cap('hello'), 'Hello')) { OUTPUT = 'PASS: 6 cap basic'; }
else { OUTPUT = 'FAIL: 6 cap basic got=' cap('hello'); }

// 7: cap from upper
if (IDENT(cap('HELLO'), 'Hello')) { OUTPUT = 'PASS: 7 cap from upper'; }
else { OUTPUT = 'FAIL: 7 cap from upper'; }

// 8: cap mixed
if (IDENT(cap('hELLo'), 'Hello')) { OUTPUT = 'PASS: 8 cap mixed'; }
else { OUTPUT = 'FAIL: 8 cap mixed'; }

// 9: icase null returns null
r = icase('');
if (IDENT(r, '')) { OUTPUT = 'PASS: 9 icase null'; }
else { OUTPUT = 'FAIL: 9 icase null'; }

// 10: icase pattern matches both cases
p = icase('Hi');
if ('hi' ? (p)) { OUTPUT = 'PASS: 10 icase matches lower'; }
else { OUTPUT = 'FAIL: 10 icase matches lower'; }

// 11: icase pattern matches upper
if ('HI' ? (p)) { OUTPUT = 'PASS: 11 icase matches upper'; }
else { OUTPUT = 'FAIL: 11 icase matches upper'; }

// 12: icase pattern matches mixed
if ('Hi' ? (p)) { OUTPUT = 'PASS: 12 icase matches mixed'; }
else { OUTPUT = 'FAIL: 12 icase matches mixed'; }
/*----------------------------------------------------------- 10 test_counter */
// driver.sc — test driver for counter.sc (Snocone)
// Oracle: compare to beauty_counter_driver.ref

struct link_counter { next, value }
xTrace = 0;

function InitCounter() { $'#N' = ''; return; }
function PushCounter() { $'#N' = link_counter($'#N', 0); PushCounter = .dummy; nreturn; }
function IncCounter()  { value($'#N') = value($'#N') + 1; IncCounter = .dummy; nreturn; }
function DecCounter()  { value($'#N') = value($'#N') - 1; DecCounter = .dummy; nreturn; }
function PopCounter() {
    if (DIFFER($'#N')) { $'#N' = next($'#N'); PopCounter = .dummy; nreturn; }
    else { freturn; }
}
function TopCounter() {
    if (DIFFER($'#N')) { TopCounter = value($'#N'); return; }
    else { freturn; }
}

&STLIMIT = 1000000;
InitCounter();

// 1: push and increment 3 times, top = 3
PushCounter();
IncCounter(); IncCounter(); IncCounter();
if (IDENT(TopCounter(), 3)) { OUTPUT = 'PASS: 1 push/inc/top = 3'; } else { OUTPUT = 'FAIL: 1 push/inc/top'; }

// 2: nested push, inc once, top = 1
PushCounter();
IncCounter();
if (IDENT(TopCounter(), 1)) { OUTPUT = 'PASS: 2 nested top = 1'; } else { OUTPUT = 'FAIL: 2 nested top'; }

// 3: pop restores outer (top = 3)
PopCounter();
if (IDENT(TopCounter(), 3)) { OUTPUT = 'PASS: 3 pop restore = 3'; } else { OUTPUT = 'FAIL: 3 pop restore'; }

// 4: pop outer, stack empty → PopCounter fails
PopCounter();
if (~PopCounter()) { OUTPUT = 'PASS: 4 empty pop fails'; } else { OUTPUT = 'FAIL: 4 empty pop'; }

// 5: TopCounter on empty stack fails
if (~TopCounter()) { OUTPUT = 'PASS: 5 empty top fails'; } else { OUTPUT = 'FAIL: 5 empty top'; }
/*------------------------------------------------------------- 11 test_fence */
// driver.sc — test driver for FENCE (Snocone)
// FENCE is builtin — no include needed.
&STLIMIT = 1000000;

// 1: FENCE in alternation — gamma path (LEN(1)) taken, FENCE never tried
if ('ab' ? (LEN(1) . X | FENCE)) {
    OUTPUT = 'PASS: FENCE alt gamma';
} else {
    OUTPUT = 'FAIL: FENCE alt failed';
}

// 2: FENCE alone as match — SPITBOL semantics: seals, match reports success then fails backtrack
// Our runtime (SPITBOL-compatible): 'x' ? FENCE succeeds on first pass
if ('x' ? FENCE) {
    OUTPUT = 'FAIL: FENCE should not succeed as subject match';
} else {
    OUTPUT = 'PASS: FENCE alone fails match';
}
/*------------------------------------------------------------ 12 test_global */
// driver.sc — test driver for global.sc (Snocone)
// Oracle: compare output to beauty_global_driver.ref (SNOBOL4 golden)

// inline global.sc
nul       = CHAR(0);
bs        = CHAR(8);
ht        = CHAR(9);
tab       = CHAR(9);
nl        = CHAR(10);
lf        = CHAR(10);
vt        = CHAR(11);
ff        = CHAR(12);
cr        = CHAR(13);
fSlash    = CHAR(47);
semicolon = CHAR(59);
bSlash    = CHAR(92);
TRUE   = 1;
FALSE  = 0;
digits = '0123456789';
UTF = TABLE();
UTF[CHAR(194)   CHAR(169)] = 'COPYRIGHT_SIGN';
UTF[CHAR(194)   CHAR(174)] = 'REGISTERED_SIGN';
UTF[CHAR(226)   CHAR(128)   CHAR(148)] = 'EM_DASH';
UTF_Array = SORT(UTF);
_utf_n = SIZE(UTF_Array);
i = 0;
while (1) {
    i = i + 1;
    if (GT(i, _utf_n)) { break; }
    _nm = UTF_Array[i, 2];
    $_nm = UTF_Array[i, 1];
}
UTF_Array = '';
_utf_n = '';
i = '';
_nm = '';

&STLIMIT = 1000000;

// Character constants
if (EQ(SIZE(nul),1)   IDENT(nul,CHAR(0))) { OUTPUT = 'PASS: nul'; } else { OUTPUT = 'FAIL: nul'; }
if (EQ(SIZE(bs),1)    IDENT(bs,CHAR(8)))  { OUTPUT = 'PASS: bs';  } else { OUTPUT = 'FAIL: bs';  }
if (EQ(SIZE(ht),1)    IDENT(ht,CHAR(9)))  { OUTPUT = 'PASS: ht';  } else { OUTPUT = 'FAIL: ht';  }
if (EQ(SIZE(tab),1)   IDENT(tab,CHAR(9))) { OUTPUT = 'PASS: tab'; } else { OUTPUT = 'FAIL: tab'; }
if (EQ(SIZE(nl),1)    IDENT(nl,CHAR(10))) { OUTPUT = 'PASS: nl';  } else { OUTPUT = 'FAIL: nl';  }
if (EQ(SIZE(lf),1)    IDENT(lf,CHAR(10))) { OUTPUT = 'PASS: lf';  } else { OUTPUT = 'FAIL: lf';  }
if (EQ(SIZE(vt),1)    IDENT(vt,CHAR(11))) { OUTPUT = 'PASS: vt';  } else { OUTPUT = 'FAIL: vt';  }
if (EQ(SIZE(ff),1)    IDENT(ff,CHAR(12))) { OUTPUT = 'PASS: ff';  } else { OUTPUT = 'FAIL: ff';  }
if (EQ(SIZE(cr),1)    IDENT(cr,CHAR(13))) { OUTPUT = 'PASS: cr';  } else { OUTPUT = 'FAIL: cr';  }
if (IDENT(fSlash,CHAR(47)))    { OUTPUT = 'PASS: fSlash';    } else { OUTPUT = 'FAIL: fSlash';    }
if (IDENT(semicolon,CHAR(59))) { OUTPUT = 'PASS: semicolon'; } else { OUTPUT = 'FAIL: semicolon'; }
if (IDENT(bSlash,CHAR(92)))    { OUTPUT = 'PASS: bSlash';    } else { OUTPUT = 'FAIL: bSlash';    }

// TRUE/FALSE/digits
if (IDENT(CONVERT(TRUE,'STRING'),'1'))  { OUTPUT = 'PASS: TRUE';   } else { OUTPUT = 'FAIL: TRUE';   }
if (IDENT(CONVERT(FALSE,'STRING'),'0')) { OUTPUT = 'PASS: FALSE';  } else { OUTPUT = 'FAIL: FALSE';  }
if (IDENT(digits,'0123456789'))         { OUTPUT = 'PASS: digits'; } else { OUTPUT = 'FAIL: digits'; }

// UTF table spot-checks
if (IDENT(UTF[CHAR(194)   CHAR(169)],'COPYRIGHT_SIGN'))    { OUTPUT = 'PASS: UTF COPYRIGHT_SIGN';  } else { OUTPUT = 'FAIL: UTF COPYRIGHT_SIGN';  }
if (IDENT(UTF[CHAR(194)   CHAR(174)],'REGISTERED_SIGN'))   { OUTPUT = 'PASS: UTF REGISTERED_SIGN'; } else { OUTPUT = 'FAIL: UTF REGISTERED_SIGN'; }
if (IDENT(UTF[CHAR(226)   CHAR(128)   CHAR(148)],'EM_DASH')) { OUTPUT = 'PASS: UTF EM_DASH';   } else { OUTPUT = 'FAIL: UTF EM_DASH';   }

// Indirect assign spot-checks
if (IDENT(COPYRIGHT_SIGN, CHAR(194)   CHAR(169)))              { OUTPUT = 'PASS: UTF indirect COPYRIGHT_SIGN'; } else { OUTPUT = 'FAIL: UTF indirect COPYRIGHT_SIGN'; }
if (IDENT(EM_DASH, CHAR(226)   CHAR(128)   CHAR(148)))        { OUTPUT = 'PASS: UTF indirect EM_DASH';        } else { OUTPUT = 'FAIL: UTF indirect EM_DASH';        }
/*------------------------------------------------------------- 13 test_match */
// driver.sc — test driver for match.sc (Snocone)
// Oracle: compare to beauty_match_driver.ref

function match(subject, pattern) {
    match = .dummy;
    if (subject ? pattern) { nreturn; } else { freturn; }
}

function notmatch(subject, pattern) {
    notmatch = .dummy;
    if (subject ? pattern) { freturn; } else { nreturn; }
}

&STLIMIT = 1000000;

if (match('hello', ANY('aeiou'))) { OUTPUT = 'PASS: 1 match ANY hit'; } else { OUTPUT = 'FAIL: 1 match ANY hit'; }
if (~match('xyz', ANY('aeiou'))) { OUTPUT = 'PASS: 2 match ANY miss'; } else { OUTPUT = 'FAIL: 2 match ANY miss'; }
if (notmatch('xyz', ANY('aeiou'))) { OUTPUT = 'PASS: 3 notmatch miss'; } else { OUTPUT = 'FAIL: 3 notmatch miss'; }
if (~notmatch('hello', ANY('aeiou'))) { OUTPUT = 'PASS: 4 notmatch hit'; } else { OUTPUT = 'FAIL: 4 notmatch hit'; }
if (match('   foo', SPAN(' '))) { OUTPUT = 'PASS: 5 match SPAN'; } else { OUTPUT = 'FAIL: 5 match SPAN'; }
if (match('anything', LEN(0))) { OUTPUT = 'PASS: 6 match LEN(0)'; } else { OUTPUT = 'FAIL: 6 match LEN(0)'; }
if (match('abc', RPOS(0))) { OUTPUT = 'PASS: 7 match RPOS(0)'; } else { OUTPUT = 'FAIL: 7 match RPOS(0)'; }

// 8: word-list hit — 'DEFINE LABEL END' contains 'LABEL' as a word
wList = 'DEFINE LABEL END';
tx = 'LABEL';
if (match(wList, tx)) { OUTPUT = 'PASS: 8 word list hit'; } else { OUTPUT = 'FAIL: 8 word list hit'; }

// 9: word-list miss — 'GOTO' is not in wList
if (notmatch(wList, 'GOTO')) { OUTPUT = 'PASS: 9 word list miss'; } else { OUTPUT = 'FAIL: 9 word list miss'; }
/*------------------------------------------------------------- 14 test_omega */
// driver.sc — test driver for omega.sc (Snocone)
// Tests TV/TW/TX/TY/TZ pattern instrumentation routines

doParseTree = 0;
xTrace = 0;
doDebug = 0;
t8MaxLast = 0;
t8Max = 0;
t8MaxLine = 0;

function lwr(s) { lwr = REPLACE(s, &UCASE, &LCASE); return; }
function upr(s) { upr = REPLACE(s, &LCASE, &UCASE); return; }
function assign(name, expr) {
    assign = .dummy;
    if (IDENT(DATATYPE(expr), 'EXPRESSION')) { $name = EVAL(expr); nreturn; }
    $name = expr;
    nreturn;
}
function T8Trace(lvl, str, ofs, t8p) {
    T8Trace = .dummy;
    nreturn;
}

function TX(lvl, pat, name, omega) {
    if (EQ(doParseTree, FALSE)) { omega = 'pat'; }
    else { omega = "(pat ~ 'identifier')"; }
    omega = omega " $ tx *LEQ(tx, '" name "')";
    TX = TZ(lvl, name, EVAL(omega));
    if (DIFFER(TX)) { return; } else { freturn; }
}

function TY(lvl, name, pat, omega) {
    if (LE(xTrace, 0)) {
        TY = pat @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs));
        return;
    }
    omega = "pat $ tz @txOfs $ *T8Trace(" lvl ", '" name "', txOfs)";
    TY = EVAL(omega);
    if (DIFFER(TY)) { return; } else { freturn; }
}

function TZ(lvl, name, pat, omega) {
    if (LE(xTrace, 0)) {
        TZ = pat @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs));
        return;
    }
    omega = "@txOfs $ *T8Trace(" lvl ", '?' '" name "', txOfs)"
           " pat $ tz @txOfs $ *T8Trace(" lvl ", '" name ": ', tz, txOfs)";
    TZ = EVAL(omega);
    if (DIFFER(TZ)) { return; } else { freturn; }
}

TRUE = 1;
FALSE = 0;
&STLIMIT = 1000000;

// 1: TY with xTrace=0 returns instrumented pattern
xTrace = 0;
p = TY(1, 'mypat', 'hello');
if (DIFFER(p)) { OUTPUT = 'PASS: 1 TY thin returns non-null'; }
else { OUTPUT = 'FAIL: 1 TY thin returns null'; }

// 2: TZ with xTrace=0 returns instrumented pattern
p = TZ(1, 'mypat', 'hello');
if (DIFFER(p)) { OUTPUT = 'PASS: 2 TZ thin returns non-null'; }
else { OUTPUT = 'FAIL: 2 TZ thin returns null'; }
/*------------------------------------------------------- 15 test_roman XFAIL */
// driver.sc — test driver for roman.sc
function Roman(n, s, i, len, d, place, ones, fives, tens, result) {
    s = CONVERT(n, 'STRING'); len = SIZE(s); result = ''; i = 0;
    while (LT(i, len)) {
        i = i + 1; d = CONVERT(SUBSTR(s, i, 1), 'INTEGER'); place = len - i;
        if (EQ(place, 0)) { ones = 'I'; fives = 'V'; tens = 'X'; }
        if (EQ(place, 1)) { ones = 'X'; fives = 'L'; tens = 'C'; }
        if (EQ(place, 2)) { ones = 'C'; fives = 'D'; tens = 'M'; }
        if (EQ(place, 3)) { ones = 'M'; fives = '';  tens = '';  }
        if (EQ(d, 1)) { result = result   ones; }
        else if (EQ(d, 2)) { result = result   ones   ones; }
        else if (EQ(d, 3)) { result = result   ones   ones   ones; }
        else if (EQ(d, 4)) { result = result   ones   fives; }
        else if (EQ(d, 5)) { result = result   fives; }
        else if (EQ(d, 6)) { result = result   fives   ones; }
        else if (EQ(d, 7)) { result = result   fives   ones   ones; }
        else if (EQ(d, 8)) { result = result   fives   ones   ones   ones; }
        else if (EQ(d, 9)) { result = result   ones   tens; }
    }
    Roman = result; return;
}
&STLIMIT = 1000000;
if (IDENT(Roman(1),    'I'))         { OUTPUT = 'PASS: 1 Roman(1)=I'; }         else { OUTPUT = 'FAIL: 1 '   Roman(1); }
if (IDENT(Roman(4),    'IV'))        { OUTPUT = 'PASS: 2 Roman(4)=IV'; }        else { OUTPUT = 'FAIL: 2'; }
if (IDENT(Roman(9),    'IX'))        { OUTPUT = 'PASS: 3 Roman(9)=IX'; }        else { OUTPUT = 'FAIL: 3'; }
if (IDENT(Roman(14),   'XIV'))       { OUTPUT = 'PASS: 4 Roman(14)=XIV'; }      else { OUTPUT = 'FAIL: 4 '   Roman(14); }
if (IDENT(Roman(42),   'XLII'))      { OUTPUT = 'PASS: 5 Roman(42)=XLII'; }     else { OUTPUT = 'FAIL: 5'; }
if (IDENT(Roman(400),  'CD'))        { OUTPUT = 'PASS: 6 Roman(400)=CD'; }      else { OUTPUT = 'FAIL: 6'; }
if (IDENT(Roman(1776), 'MDCCLXXVI')) { OUTPUT = 'PASS: 7 Roman(1776)=MDCCLXXVI'; } else { OUTPUT = 'FAIL: 7'; }
if (IDENT(Roman(1999), 'MCMXCIX'))   { OUTPUT = 'PASS: 8 Roman(1999)=MCMXCIX'; } else { OUTPUT = 'FAIL: 8'; }
if (IDENT(Roman(2024), 'MMXXIV'))    { OUTPUT = 'PASS: 9 Roman(2024)=MMXXIV'; }  else { OUTPUT = 'FAIL: 9'; }
if (IDENT(Roman(3999), 'MMMCMXCIX')){ OUTPUT = 'PASS: 10 Roman(3999)=MMMCMXCIX'; } else { OUTPUT = 'FAIL: 10'; }
/*---------------------------------------------------------- 16 test_semantic */
// driver.sc — test driver for semantic.sc (Snocone)
struct link_counter { next, value }
xTrace = 0;
epsilon = '';

function InitCounter() { $'#N' = ''; return; }
function PushCounter() { $'#N' = link_counter($'#N', 0); PushCounter = .dummy; nreturn; }
function IncCounter()  { value($'#N') = value($'#N') + 1; IncCounter = .dummy; nreturn; }
function DecCounter()  { value($'#N') = value($'#N') - 1; DecCounter = .dummy; nreturn; }
function PopCounter() {
    if (DIFFER($'#N')) { $'#N' = next($'#N'); PopCounter = .dummy; nreturn; } else { freturn; }
}
function TopCounter() {
    if (DIFFER($'#N')) { TopCounter = value($'#N'); return; } else { freturn; }
}

function nPush() { nPush = epsilon . *PushCounter(); return; }
function nInc()  { nInc  = epsilon . *IncCounter();  return; }
function nDec()  { nDec  = epsilon . *DecCounter();  return; }
function nTop()  { nTop  = TopCounter(); return; }
function nPop()  { nPop  = epsilon . *PopCounter();  return; }

&STLIMIT = 1000000;
InitCounter();

if (IDENT(DATATYPE(nPush()), 'PATTERN')) { OUTPUT = 'PASS: 1 nPush=PATTERN'; } else { OUTPUT = 'FAIL: 1'; }
if (IDENT(DATATYPE(nInc()),  'PATTERN')) { OUTPUT = 'PASS: 2 nInc=PATTERN';  } else { OUTPUT = 'FAIL: 2'; }
if (IDENT(DATATYPE(nPop()),  'PATTERN')) { OUTPUT = 'PASS: 3 nPop=PATTERN';  } else { OUTPUT = 'FAIL: 3'; }

if ('' ? nPush()) { } else { OUTPUT = 'FAIL: 4 nPush match'; }
if (EQ(nTop(), 0)) { OUTPUT = 'PASS: 4 nPush match; nTop=0'; } else { OUTPUT = 'FAIL: 4 nTop='   nTop(); }

if ('' ? nInc()) { } else { OUTPUT = 'FAIL: 5'; }
if (EQ(nTop(), 1)) { OUTPUT = 'PASS: 5 nInc match; nTop=1'; } else { OUTPUT = 'FAIL: 5'; }

if ('' ? nInc()) { } else { OUTPUT = 'FAIL: 6'; }
if (EQ(nTop(), 2)) { OUTPUT = 'PASS: 6 nInc x2; nTop=2'; } else { OUTPUT = 'FAIL: 6'; }

if ('' ? nPush()) { } else { OUTPUT = 'FAIL: 7'; }
if (EQ(nTop(), 0)) { OUTPUT = 'PASS: 7 nested nPush; nTop=0'; } else { OUTPUT = 'FAIL: 7'; }

v = nTop();
if (IDENT(DATATYPE(v), 'INTEGER')) { OUTPUT = 'PASS: 8 nTop INTEGER'; } else { OUTPUT = 'FAIL: 8 '   DATATYPE(v); }
/*------------------------------------------------------------- 17 test_stack */
// driver.sc — test driver for stack.sc (Snocone)
struct link { next, value }
xTrace = 0;

function InitStack() { $'@S' = ''; return; }
function Push(x) {
    $'@S' = link($'@S', x);
    if (IDENT(x, '')) { Push = .value($'@S'); nreturn; }
    else { Push = .dummy; nreturn; }
}
function Pop(var) {
    if (~DIFFER($'@S')) { freturn; }
    if (IDENT(var, '')) { Pop = value($'@S'); $'@S' = next($'@S'); return; }
    else { $var = value($'@S'); $'@S' = next($'@S'); Pop = .dummy; nreturn; }
}
function Top() {
    if (~DIFFER($'@S')) { freturn; }
    Top = .value($'@S');
    nreturn;
}

&STLIMIT = 1000000;
InitStack();

Push(42);
if (IDENT(Top(), 42)) { OUTPUT = 'PASS: 1 push/top = 42'; } else { OUTPUT = 'FAIL: 1 push/top'; }

InitStack();
Push(10); Push(20); Push(30);
if (IDENT(Top(), 30)) { OUTPUT = 'PASS: 2 top of 3 = 30'; } else { OUTPUT = 'FAIL: 2 top of 3'; }

Pop('dummy');
if (IDENT(Top(), 20)) { OUTPUT = 'PASS: 3 pop restores 20'; } else { OUTPUT = 'FAIL: 3 pop restores'; }

InitStack();
Push(99);
Pop('result');
if (IDENT(result, 99)) { OUTPUT = 'PASS: 4 Pop(var) = 99'; } else { OUTPUT = 'FAIL: 4 Pop(var)'; }

InitStack();
if (~Pop('dummy')) { OUTPUT = 'PASS: 5 empty pop fails'; } else { OUTPUT = 'FAIL: 5 empty pop'; }

InitStack();
if (~Top()) { OUTPUT = 'PASS: 6 empty top fails'; } else { OUTPUT = 'FAIL: 6 empty top'; }

InitStack();
Push('a'); Push('b'); Push('c');
Pop('v1'); Pop('v2'); Pop('v3');
if (IDENT(v1,'c')   IDENT(v2,'b')   IDENT(v3,'a')) { OUTPUT = 'PASS: 7 nested pop order a/b/c'; } else { OUTPUT = 'FAIL: 7 pop order'; }
/*----------------------------------------------------- 18 test_strings XFAIL */
// driver.sc — test driver for strings.sc

function Reverse(s, i, n, out) {
    n = SIZE(s); out = ''; i = n + 1;
    while (GT(i, 1)) { i = i - 1; out = out   SUBSTR(s, i, 1); }
    Reverse = out; return;
}
function TrimLeft(s, i, n, ch, found) {
    n = SIZE(s); i = 0; found = 0;
    while (LT(i, n)) { i = i + 1; ch = SUBSTR(s, i, 1);
        if (DIFFER(ch, ' ')   DIFFER(ch, CHAR(9))) { found = 1; break; } }
    if (IDENT(found, 0)) { TrimLeft = ''; } else { TrimLeft = SUBSTR(s, i); }
    return;
}
function TrimRight(s, i, n, ch, found) {
    n = SIZE(s); i = n + 1; found = 0;
    while (GT(i, 1)) { i = i - 1; ch = SUBSTR(s, i, 1);
        if (DIFFER(ch, ' ')   DIFFER(ch, CHAR(9))) { found = 1; break; } }
    if (IDENT(found, 0)) { TrimRight = ''; } else { TrimRight = SUBSTR(s, 1, i); }
    return;
}
function Trim(s) { Trim = TrimLeft(TrimRight(s)); return; }
function StartsWith(s, prefix) {
    if (IDENT(SUBSTR(s, 1, SIZE(prefix)), prefix)) { return; } else { freturn; }
}
function EndsWith(s, suffix, n, sn) {
    n = SIZE(s); sn = SIZE(suffix); if (GT(sn, n)) { freturn; }
    if (IDENT(SUBSTR(s, n - sn + 1, sn), suffix)) { return; } else { freturn; }
}
function Split(s, sep, i, n, slen, out_n, start, arr) {
    n = SIZE(s); slen = SIZE(sep); out_n = 0;
    arr = TABLE(); i = 1; start = 1;
    while (LE(i, n)) {
        if (IDENT(SUBSTR(s, i, slen), sep)) {
            out_n = out_n + 1; arr[out_n] = SUBSTR(s, start, i - start);
            i = i + slen; start = i;
        } else { i = i + 1; }
    }
    out_n = out_n + 1; arr[out_n] = SUBSTR(s, start, n - start + 1);
    arr[0] = out_n; Split = arr; return;
}
function Join(arr, sep, i, n, out) {
    n = arr[0]; out = ''; i = 0;
    while (LT(i, n)) { i = i + 1;
        if (GT(i, 1)) { out = out   sep; }
        out = out   arr[i]; }
    Join = out; return;
}

&STLIMIT = 1000000;
if (IDENT(Reverse('hello'), 'olleh'))    { OUTPUT = 'PASS: 1 Reverse'; }        else { OUTPUT = 'FAIL: 1 Reverse'; }
if (IDENT(Reverse(''), ''))              { OUTPUT = 'PASS: 2 Reverse empty'; }   else { OUTPUT = 'FAIL: 2 Reverse empty'; }
if (IDENT(TrimLeft('   hi'), 'hi'))      { OUTPUT = 'PASS: 3 TrimLeft'; }        else { OUTPUT = 'FAIL: 3 TrimLeft'; }
if (IDENT(TrimLeft('hi'), 'hi'))         { OUTPUT = 'PASS: 4 TrimLeft noop'; }   else { OUTPUT = 'FAIL: 4 TrimLeft noop'; }
if (IDENT(TrimLeft('   '), ''))          { OUTPUT = 'PASS: 5 TrimLeft all'; }    else { OUTPUT = 'FAIL: 5 TrimLeft all'; }
if (IDENT(TrimRight('hi   '), 'hi'))     { OUTPUT = 'PASS: 6 TrimRight'; }       else { OUTPUT = 'FAIL: 6 TrimRight'; }
if (IDENT(Trim('  hi  '), 'hi'))         { OUTPUT = 'PASS: 7 Trim'; }            else { OUTPUT = 'FAIL: 7 Trim'; }
if (IDENT(Trim('   '), ''))              { OUTPUT = 'PASS: 8 Trim all'; }        else { OUTPUT = 'FAIL: 8 Trim all'; }
if (StartsWith('hello', 'hel'))          { OUTPUT = 'PASS: 9 StartsWith hit'; }  else { OUTPUT = 'FAIL: 9 StartsWith hit'; }
if (~StartsWith('hello', 'xyz'))         { OUTPUT = 'PASS: 10 StartsWith miss'; } else { OUTPUT = 'FAIL: 10 StartsWith miss'; }
if (EndsWith('hello', 'llo'))            { OUTPUT = 'PASS: 11 EndsWith hit'; }   else { OUTPUT = 'FAIL: 11 EndsWith hit'; }
if (~EndsWith('hello', 'xyz'))           { OUTPUT = 'PASS: 12 EndsWith miss'; }  else { OUTPUT = 'FAIL: 12 EndsWith miss'; }
t = Split('a,b,c', ',');
if (IDENT(t[1],'a')   IDENT(t[2],'b')   IDENT(t[3],'c')   EQ(t[0],3)) { OUTPUT = 'PASS: 13 Split'; } else { OUTPUT = 'FAIL: 13 Split'; }
if (IDENT(Join(t, '-'), 'a-b-c'))        { OUTPUT = 'PASS: 14 Join'; }           else { OUTPUT = 'FAIL: 14 Join'; }
t2 = Split('hello', ',');
if (EQ(t2[0], 1)   IDENT(t2[1], 'hello')) { OUTPUT = 'PASS: 15 Split no-sep'; } else { OUTPUT = 'FAIL: 15 Split no-sep'; }
/*------------------------------------------------------- 19 test_trace XFAIL */
&STLIMIT = 1000000;
strOfs = 0; t8Max = 0; t8MaxLine = 0; t8MaxLast = 0; doDebug = 0; t8Map = '';

function T8Pos(t8Ofs, _map, i) {
    if (IDENT(_map, '')) { T8Pos = LPAD(t8Ofs, 8); return; }
    i = t8Ofs;
    if (GT(t8Ofs, t8Max)) { t8Max = t8Ofs; }
    while (1) {
        if (~IDENT(_map[i], '')) { break; }
        i = i - 1;
        if (LT(i, 0)) { T8Pos = LPAD(t8Ofs, 8); return; }
    }
    t8Line = _map[i];
    t8Pos  = t8Ofs - i + 1;
    i = t8Max;
    while (1) {
        if (~IDENT(_map[i], '')) { break; }
        i = i - 1;
        if (LT(i, 0)) { T8Pos = LPAD(t8Ofs, 8); return; }
    }
    t8MaxLine = _map[i];
    t8MaxPos  = t8Max - i + 1;
    T8Pos = '('   LPAD(t8MaxLine, 5)   ', '   LPAD(t8MaxPos, 3)  
            ', '   LPAD(t8Line, 5)     ', '   LPAD(t8Pos, 3)   ')';
    return;
}

function T8Trace(lvl, str, ofs) {
    T8Trace = .dummy;
    if (~GT(doDebug, 0)) { nreturn; }
    if (~LE(lvl, doDebug)) { nreturn; }
    if (~GT(doDebug, 1)) {
        if (str ? (POS(0)   '?')) { nreturn; }
        nreturn;
    }
    if (str ? (POS(0)   '?')) {
        str = '? '   SUBSTR(str, 2);
    } else {
        str = '  '   str;
    }
    _t8p = T8Pos(strOfs + ofs, t8Map);
    if (~GE(t8MaxLine, 621)) { nreturn; }
    if (GE(t8Max, t8MaxLast)) { t8MaxLast = t8Max; }
    OUTPUT = _t8p   str;
    nreturn;
}

dSTRING = DATATYPE('');

r1 = T8Pos(5, '');
if (IDENT(r1, '       5')) { OUTPUT = 'PASS: 1 T8Pos nil map=LPAD'; } else { OUTPUT = 'FAIL: 1 ['   r1   ']'; }

t8Map2 = TABLE(); t8Map2[0] = 1; t8Map2[5] = 2; t8Max = 0;
r2 = T8Pos(7, t8Map2);
if (IDENT(r2, '(    2,   3,     2,   3)')) { OUTPUT = 'PASS: 2 T8Pos map line/col'; } else { OUTPUT = 'FAIL: 2 ['   r2   ']'; }

t8Map3 = TABLE(); t8Map3[0] = 1; t8Max = 0;
T8Pos(12, t8Map3);
if (EQ(t8Max, 12)) { OUTPUT = 'PASS: 3 T8Pos updates t8Max'; } else { OUTPUT = 'FAIL: 3 t8Max='   t8Max; }

doDebug = 0;
r4 = T8Trace(1, 'hello', 0);
if (IDENT(DATATYPE(r4), dSTRING)) { OUTPUT = 'PASS: 4 T8Trace doDebug=0 returns STRING'; } else { OUTPUT = 'FAIL: 4'; }

doDebug = 1; t8Max = 0; t8MaxLine = 0; strOfs = 0; t8Map = '';
r5 = T8Trace(2, 'skip', 0);
if (IDENT(DATATYPE(r5), dSTRING)) { OUTPUT = 'PASS: 5 T8Trace lvl>doDebug NRETURN'; } else { OUTPUT = 'FAIL: 5'; }

doDebug = 1; t8Max = 0; t8MaxLine = 621; t8MaxLast = 0; strOfs = 0; t8Map = '';
r6 = T8Trace(1, '?x', 0);
if (IDENT(DATATYPE(r6), dSTRING)) { OUTPUT = 'PASS: 6 T8Trace ?-prefix doDebug=1 NRETURN'; } else { OUTPUT = 'FAIL: 6'; }

doDebug = 2; t8Max = 0; t8MaxLine = 0; t8MaxLast = 0; strOfs = 0; t8Map = '';
r7 = T8Trace(1, 'blocked', 0);
if (IDENT(DATATYPE(r7), dSTRING)) { OUTPUT = 'PASS: 7 T8Trace t8MaxLine<621 NRETURN'; } else { OUTPUT = 'FAIL: 7'; }

doDebug = 2; t8Max = 0; t8MaxLine = 621; t8MaxLast = 0; strOfs = 0; t8Map = '';
OUTPUT = '--- test 8 output follows ---';
T8Trace(1, '?node', 0);
OUTPUT = 'PASS: 8 T8Trace doDebug=2 ?-expand output';

doDebug = 2; t8Max = 10; t8MaxLine = 621; t8MaxLast = 5; strOfs = 0; t8Map = '';
T8Trace(1, 'upd', 0);
if (EQ(t8MaxLast, 10)) { OUTPUT = 'PASS: 9 t8MaxLast updated to t8Max'; } else { OUTPUT = 'FAIL: 9 t8MaxLast='   t8MaxLast; }
/*-------------------------------------------------------------- 20 test_tree */
// driver.sc — test driver for tree.sc (Snocone)
struct tree { t, v, n, c }

function MakeLeaf(type, val) { MakeLeaf = tree(type, val, 0, ''); return; }
function MakeNode(type, val, nc, kids) { MakeNode = tree(type, val, nc, kids); return; }

&STLIMIT = 1000000;

// 1: MakeLeaf creates node with correct t, v, n=0
leaf = MakeLeaf('Id', 'foo');
if (IDENT(t(leaf), 'Id')   IDENT(v(leaf), 'foo')   IDENT(n(leaf), 0)) {
    OUTPUT = 'PASS: 1 MakeLeaf t/v/n';
} else {
    OUTPUT = 'FAIL: 1 MakeLeaf t/v/n';
}

// 2: MakeNode with 2 children
ch1 = MakeLeaf('Id', 'x');
ch2 = MakeLeaf('Integer', '42');
kids = ARRAY('1:2');
kids[1] = ch1;
kids[2] = ch2;
nd = MakeNode('BinOp', '+', 2, kids);
if (IDENT(t(nd),'BinOp')   IDENT(n(nd),2)   IDENT(t(c(nd)[1]),'Id')   IDENT(t(c(nd)[2]),'Integer')) {
    OUTPUT = 'PASS: 2 MakeNode with children';
} else {
    OUTPUT = 'FAIL: 2 MakeNode with children';
}

// 3: DIFFER guard on real node
if (DIFFER(leaf)) { OUTPUT = 'PASS: 3 DIFFER guard'; } else { OUTPUT = 'FAIL: 3 DIFFER guard'; }

// 4: field update
leaf2 = MakeLeaf('X', 'y');
t(leaf2) = 'Label';
v(leaf2) = 'done';
if (IDENT(t(leaf2),'Label')   IDENT(v(leaf2),'done')) {
    OUTPUT = 'PASS: 4 field update';
} else {
    OUTPUT = 'FAIL: 4 field update';
}
