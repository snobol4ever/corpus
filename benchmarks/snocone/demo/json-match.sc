// json-match.sc (Snocone BENCHMARK) -- JSON grammar, pattern match ONLY (Snocone).
// Replicates the LOGIC of benchmarks/snobol4/demo/json-match.sno statement for statement:
// the JSON_MATCH(N) kernel, the *BENCH marker and the OUTPUT = JSON_MATCH(1) driver.
// Equivalent of json-match.sno; same output, same oracle ref (json-match.ref).
// Run: scrip json-match.sc < json.input
//------------------------------------------------------------------------------
&TRIM          =  0;
$' '           =  SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '';
//------------------------------------------------------------------------------
jescape        =  '\'
                  ( ANY('"/bfnrt\')
                  | 'u'
                    ANY('0123456789abcdefABCDEF')
                    ANY('0123456789abcdefABCDEF')
                    ANY('0123456789abcdefABCDEF')
                    ANY('0123456789abcdefABCDEF')
                  );
jchunk         =  BREAK('"\' CHAR(10) CHAR(13));
jstring        =  '"' jchunk ARBNO(jescape jchunk) '"';
//------------------------------------------------------------------------------
jnumber        =  ('-' | '')
                  ('0' | ANY('123456789') (SPAN('0123456789') | ''))
                  ('.' SPAN('0123456789') | '')
                  ( ANY('eE') (ANY('+-') | '') SPAN('0123456789')
                  | ''
                  );
//------------------------------------------------------------------------------
jmember        =  $' ' jstring $' ' ':' *jelement;
jobject        =  '{' ( jmember ARBNO($' ' ',' jmember) | $' ' ) '}';
jarray         =  '[' ( *jelement ARBNO($' ' ',' *jelement) | $' ' ) ']';
jvalue         =  ( jstring
                  | jnumber
                  | jobject
                  | jarray
                  | 'true'
                  | 'false'
                  | 'null'
                  );
jelement       =  $' ' *jvalue $' ';
json           =  POS(0) jelement RPOS(0);
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// JSON_MATCH(N) -- run the recognizer N times over the slurped source and report the
// number of bytes it matched.  N=1 is what the standalone driver below asks for;
// the timed twin built by scripts/bench_wrap.sh asks for many.
//------------------------------------------------------------------------------
function JSON_MATCH(N) {
    ZI      =   1;
ZBL:
    if (~(src ? json)) goto ZBAD;
    if (ZI = LT(ZI, N) ZI + 1) goto ZBL;
    JSON_MATCH = 'matched bytes=' SIZE(src);
    return;
ZBAD:
    JSON_MATCH = 'Pattern match failed';
    return;
}
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// *BENCH kernel=JSON_MATCH check=1 bud=1000 flr=20
OUTPUT      =   JSON_MATCH(1);
