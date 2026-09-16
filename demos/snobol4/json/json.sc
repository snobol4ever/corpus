// json.sc - JSON DE-SERIALIZER: RFC-8259 text -> native Snocone data structures.
// ENG 685, Lon Cherryholmes Sr.
// Equivalent of json.sno; same output, same oracle ref (json.ref).
//
// This is the WORK member of the json family (json-match.sc / json-match-fence.sc
// are the recognize-only members: same grammar, zero side effects). Here the ONE
// BIG pattern match carries deferred semantic actions that BUILD the data:
//     JSON object  ->  TABLE keyed by member name, wrapped in jobj so insertion
//                      order is retained for deterministic output
//     JSON array   ->  ARRAY(1..n), one-origin
//     JSON number  ->  INTEGER when no fraction and no exponent, else REAL
//     JSON string  ->  STRING, escapes decoded, \uXXXX -> UTF-8
//     true / false ->  STRING 'true' / 'false'
//     null         ->  the null string
// Values reduce on a shift/reduce value stack: a frame records the stack base at
// '{' or '[', and the close pops everything above that base into one TABLE or
// ARRAY. No per-frame allocation, so cost is O(nodes), not O(depth * nodes).
// All deferred actions are DIRECT (epsilon . *f()) - none are built through EVAL.
// Run: scrip json.sc < json.input
//------------------------------------------------------------------------------
bslash      =   CHAR(92);
tabch       =   CHAR(9);
lf          =   CHAR(10);
cr          =   CHAR(13);
dq          =   '"';
dig         =   '0123456789';
//------------------------------------------------------------------------------
DATA('jobj(otab,okeys,onum)');
//------------------------------------------------------------------------------
//  Value stack (shift/reduce), key stack, and frame stack.
//------------------------------------------------------------------------------
VMAX        =   262144;
DMAX        =   4096;
vs          =   ARRAY(VMAX);
ks          =   ARRAY(VMAX);
fkd         =   ARRAY(DMAX);
fvb         =   ARRAY(DMAX);
fkb         =   ARRAY(DMAX);
vsp         =   0;
ksp         =   0;
dep         =   0;
maxdep      =   0;
nObj        =   0;
nArr        =   0;
nStr        =   0;
nInt        =   0;
nReal       =   0;
nBool       =   0;
nNull       =   0;
//------------------------------------------------------------------------------
//  Escape and hex lookup tables.
//------------------------------------------------------------------------------
esc         =   TABLE();
esc[dq]     =   dq;
esc[bslash] =   bslash;
esc['/']    =   '/';
esc['b']    =   CHAR(8);
esc['f']    =   CHAR(12);
esc['n']    =   lf;
esc['r']    =   cr;
esc['t']    =   tabch;
hxv         =   TABLE();
hxs         =   '0123456789abcdef';
hxi         =   0;
hxlp:
if (~(hxi = LT(hxi, 16) hxi + 1)) goto hxdone;
hxc         =   SUBSTR(hxs, hxi, 1);
hxv[hxc]    =   hxi - 1;
hxv[REPLACE(hxc, &LCASE, &UCASE)] = hxi - 1;
goto hxlp;
hxdone:
//------------------------------------------------------------------------------
//  jutf8(n) - Unicode scalar -> UTF-8 byte string (BMP; surrogates passed through).
//------------------------------------------------------------------------------
function jutf8(n) {
    if (~LT(n, 128)) goto jutf8_2;
    jutf8   =   CHAR(n);
    return;
jutf8_2:
    if (~LT(n, 2048)) goto jutf8_3;
    jutf8   =   CHAR(192 + (n / 64)) CHAR(128 + REMDR(n, 64));
    return;
jutf8_3:
    jutf8   =   CHAR(224 + (n / 4096))
                CHAR(128 + REMDR(n / 64, 64))
                CHAR(128 + REMDR(n, 64));
    return;
}
//------------------------------------------------------------------------------
//  jdec(s) - decode JSON string escapes. Fast path returns s untouched when the
//  literal held no backslash at all, which is the common case by a wide margin.
//------------------------------------------------------------------------------
function jdec(s) r, seg, ec, hx, n {
    if (~(s ? bslash)) goto jdec_fast;
    r       =   '';
jdec_lp:
    if (~(s ? FENCE (BREAK(bslash) | '') . seg bslash LEN(1) . ec = '')) goto jdec_done;
    r       =   r seg;
    if (IDENT(ec, 'u')) goto jdec_u;
    r       =   r esc[ec];
    goto jdec_lp;
jdec_u:
    if (~(s ? FENCE LEN(4) . hx = '')) goto jdec_done;
    n       =   ((hxv[SUBSTR(hx, 1, 1)] * 16 + hxv[SUBSTR(hx, 2, 1)]) * 16
                + hxv[SUBSTR(hx, 3, 1)]) * 16 + hxv[SUBSTR(hx, 4, 1)];
    r       =   r jutf8(n);
    goto jdec_lp;
jdec_done:
    jdec    =   r s;
    return;
jdec_fast:
    jdec    =   s;
    return;
}
//------------------------------------------------------------------------------
//  Value-stack shift.
//------------------------------------------------------------------------------
function vpush(v) {
    vsp     =   vsp + 1;
    if (GT(vsp, VMAX)) goto voflo;
    vs[vsp] =   v;
    vpush   =   .dummy;
    return;
voflo:
    OUTPUT  =   'json.sc: value stack overflow at ' vsp;
    vpush   =   .dummy;
    return;
}
//------------------------------------------------------------------------------
//  Deferred semantic actions - ALL direct (epsilon . *f()), none via EVAL.
//------------------------------------------------------------------------------
function pobj() {
    dep     =   dep + 1;
    maxdep  =   GT(dep, maxdep) dep;
    maxdep  =   maxdep;
    fkd[dep] =  'O';
    fvb[dep] =  vsp;
    fkb[dep] =  ksp;
    pobj    =   .dummy;
    nreturn;
}
function parr() {
    dep     =   dep + 1;
    maxdep  =   GT(dep, maxdep) dep;
    maxdep  =   maxdep;
    fkd[dep] =  'A';
    fvb[dep] =  vsp;
    fkb[dep] =  ksp;
    parr    =   .dummy;
    nreturn;
}
function ekey() {
    ksp     =   ksp + 1;
    ks[ksp] =   jdec(jxk);
    ekey    =   .dummy;
    nreturn;
}
function eobj() vb, kb, n, t, ka, i {
    vb      =   fvb[dep];
    kb      =   fkb[dep];
    n       =   vsp - vb;
    t       =   TABLE();
    if (~(ka = ARRAY(GT(n, 0) n))) goto eobj_empty;
    i       =   0;
eobj_lp:
    if (~(i = LT(i, n) i + 1)) goto eobj_fin;
    ka[i]   =   ks[kb + i];
    t[ka[i]] =  vs[vb + i];
    goto eobj_lp;
eobj_empty:
    ka      =   ARRAY(1);
eobj_fin:
    vsp     =   vb;
    ksp     =   kb;
    dep     =   dep - 1;
    nObj    =   nObj + 1;
    dummy   =   vpush(jobj(t, ka, n));
    eobj    =   .dummy;
    nreturn;
}
function earr() vb, n, a, i {
    vb      =   fvb[dep];
    n       =   vsp - vb;
    if (~(a = ARRAY(GT(n, 0) n))) goto earr_empty;
    i       =   0;
earr_lp:
    if (~(i = LT(i, n) i + 1)) goto earr_fin;
    a[i]    =   vs[vb + i];
    goto earr_lp;
earr_empty:
    a       =   ARRAY(1);
earr_fin:
    vsp     =   vb;
    dep     =   dep - 1;
    nArr    =   nArr + 1;
    dummy   =   vpush(a);
    earr    =   .dummy;
    nreturn;
}
function estr() {
    nStr    =   nStr + 1;
    dummy   =   vpush(jdec(jxs));
    estr    =   .dummy;
    nreturn;
}
//------------------------------------------------------------------------------
//  INTEGER when the literal carried neither fraction nor exponent, else REAL.
//------------------------------------------------------------------------------
function enum() {
    if (jxn ? ANY('.eE')) goto enum_real;
    nInt    =   nInt + 1;
    dummy   =   vpush(CONVERT(jxn, 'INTEGER'));
    enum    =   .dummy;
    nreturn;
enum_real:
    nReal   =   nReal + 1;
    dummy   =   vpush(CONVERT(jxn, 'REAL'));
    enum    =   .dummy;
    nreturn;
}
function etru() { nBool = nBool + 1; dummy = vpush('true');  etru = .dummy; nreturn; }
function efal() { nBool = nBool + 1; dummy = vpush('false'); efal = .dummy; nreturn; }
function enul() { nNull = nNull + 1; dummy = vpush(NULL);    enul = .dummy; nreturn; }
//------------------------------------------------------------------------------
//  THE GRAMMAR - RFC 8259. Same shape as json-match.sc; the only additions are
//  the capture dots and the deferred action epsilons.
//------------------------------------------------------------------------------
ws          =   FENCE(SPAN(' ' tabch lf cr) | '');
jescape     =   bslash
                ( ANY(dq '/bfnrt' bslash)
                | 'u' ANY('0123456789abcdefABCDEF') ANY('0123456789abcdefABCDEF') ANY('0123456789abcdefABCDEF') ANY('0123456789abcdefABCDEF')
                );
jchunk      =   BREAK(dq bslash lf cr);
jstrbody    =   jchunk ARBNO(jescape jchunk);
//------------------------------------------------------------------------------
jnumber     =   ( FENCE('-' | '')
                  ( '0' | ANY('123456789') FENCE(SPAN(dig) | '') )
                  FENCE('.' SPAN(dig) | '')
                  FENCE(ANY('eE') FENCE(ANY('+-') | '') SPAN(dig) | '')
                ) . jxn;
//------------------------------------------------------------------------------
jkey        =   dq jstrbody . jxk dq FENCE (epsilon . *ekey());
jstring     =   dq jstrbody . jxs dq FENCE (epsilon . *estr());
//------------------------------------------------------------------------------
jmember     =   ws jkey ws ':' *jelement;
jobject     =   '{' (epsilon . *pobj())
                ( jmember ARBNO(',' jmember) | ws )
                '}' (epsilon . *eobj()) FENCE;
jarray      =   '[' (epsilon . *parr())
                ( *jelement ARBNO(',' *jelement) | ws )
                ']' (epsilon . *earr()) FENCE;
jvalue      =   jstring
                | jnumber (epsilon . *enum())
                | jobject
                | jarray
                | 'true'  (epsilon . *etru())
                | 'false' (epsilon . *efal())
                | 'null'  (epsilon . *enul());
jelement    =   ws *jvalue ws;
json        =   POS(0) jelement RPOS(0);
//------------------------------------------------------------------------------
&TRIM       =   0;
//  READ ALL AT ONCE - .INPUT re-associated raw on fd 0 with a 4 MiB record
//  length, so a single reference transfers the whole input in one read.
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
OUTPUT      =   'input bytes=' SIZE(src);
//------------------------------------------------------------------------------
//  THE ONE BIG PATTERN MATCH - timed alone. TIME() is integer nanoseconds off a
//  monotonic wall clock; t1 - t0 is the match only. Written to TERMINAL, i.e.
//  stderr, so stdout stays deterministic and byte-comparable against .ref.
//------------------------------------------------------------------------------
t0          =   TIME();
if (~(src ? json)) goto fail;
t1          =   TIME();
root        =   vs[1];
OUTPUT      =   'root=' DATATYPE(root);
OUTPUT      =   'objects=' nObj;
OUTPUT      =   'arrays=' nArr;
OUTPUT      =   'strings=' nStr;
OUTPUT      =   'integers=' nInt;
OUTPUT      =   'reals=' nReal;
OUTPUT      =   'booleans=' nBool;
OUTPUT      =   'nulls=' nNull;
OUTPUT      =   'maxdepth=' maxdep;
TERMINAL    =   'match_ms=' (t1 - t0) / 1000000;
goto done;
fail:
t1          =   TIME();
OUTPUT      =   'Pattern match failed';
TERMINAL    =   'match_ms=' (t1 - t0) / 1000000;
done:
