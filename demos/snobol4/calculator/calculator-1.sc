// calculator-1.sc -- arithmetic expression evaluator, Variant 1 (Snocone).
// Right-recursive grammar with deferred semantic actions on a value stack:
// atoms push, operators pop two and push the result, eol emits.
// Equivalent of calculator-1.sno; same output, same oracle ref (calculator-1.ref).
// Run: scrip calculator-1.sc < calculator.input
//------------------------------------------------------------------------------
function EMIT() {
    OUTPUT  =   DRF(S[1]);
    sp      =   0;
    EMIT    =   .dm;
    nreturn;
}
function PSH() { PSH = .S[sp = sp + 1]; nreturn; }
function DRF(nm) {
    DRF     =   nm;
    if (~(nm ? POS(0) ANY(&LCASE) RPOS(0))) return;
    DRF     =   vars[nm];
    return;
}
function ADD() { S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1]); ADD = .dm; nreturn; }
function SUB() { S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1]); SUB = .dm; nreturn; }
function MUL() { S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1]); MUL = .dm; nreturn; }
function DIV() { S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1]); DIV = .dm; nreturn; }
function NEG() { S[sp] = -DRF(S[sp]);                          NEG = .dm; nreturn; }
//------------------------------------------------------------------------------
S           =   ARRAY(65536);
V           =   ANY(&LCASE) . *PSH();
I           =   SPAN('0123456789') . *PSH();
A           =   V | I | FENCE('(' *X ')');
F           =   A | FENCE('+' *F) | FENCE('-' *F . *NEG());
T           =   F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' );
X           =   T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' );
eol         =   CHAR(10) FENCE;
C           =   POS(0) ARBNO(X eol . *EMIT()) RPOS(0);
//------------------------------------------------------------------------------
&TRIM       =   0;
vars        =   TABLE();
vars['x']   =   1;
vars['y']   =   2;
vars['z']   =   3;
// read all at once: raw fd 0, one 4 MiB-max transfer
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// TIME() is integer nanoseconds off a monotonic wall clock; divide by 1000000
// for match_ms. Written to TERMINAL, i.e. stderr, so stdout stays comparable.
t0          =   TIME();
if (~(src ? C)) goto bad;
t1          =   TIME();
TERMINAL    =   'match_ms=' (t1 - t0) / 1000000;
goto fin;
bad:
t1          =   TIME();
OUTPUT      =   'Boo!';
TERMINAL    =   'match_ms=' (t1 - t0) / 1000000;
fin:
