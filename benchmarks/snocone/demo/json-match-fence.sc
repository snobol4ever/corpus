// json-match-fence.sc (Snocone BENCHMARK) -- JSON grammar, pattern match ONLY with FENCE (Snocone).
// Replicates the LOGIC of benchmarks/snobol4/demo/json-match-fence.sno statement for statement:
// the JSON_MATCH_FENCE(N) kernel, the *BENCH marker and the OUTPUT = JSON_MATCH_FENCE(1) driver.
// Equivalent of json-match-fence.sno; same output, same oracle ref (json-match-fence.ref).
// Run: scrip json-match-fence.sc < json.input
//------------------------------------------------------------------------------
&TRIM          =  0;
$' '           =  FENCE(SPAN(' ' CHAR(9) CHAR(10) CHAR(13)) | '');
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
jstring        =  '"' jchunk ARBNO(jescape jchunk) '"' FENCE;
//------------------------------------------------------------------------------
jnumber        =  FENCE('-' | '')
                  ('0' | ANY('123456789') FENCE(SPAN('0123456789') | ''))
                  FENCE('.' SPAN('0123456789') | '')
                  FENCE( ANY('eE') FENCE(ANY('+-') | '') SPAN('0123456789')
                       | ''
                       );
//------------------------------------------------------------------------------
jmember        =  $' ' jstring $' ' ':' *jelement;
jobject        =  '{' ( jmember ARBNO($' ' ',' jmember) | $' ' ) '}';
jarray         =  '[' ( *jelement ARBNO($' ' ',' *jelement) | $' ' ) ']';
jvalue         =  ( jstring
                  | jnumber
                  | jobject FENCE
                  | jarray FENCE
                  | 'true'
                  | 'false'
                  | 'null'
                  );
jelement       =  $' ' *jvalue $' ';
json           =  POS(0) jelement RPOS(0);
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// JSON_MATCH_FENCE(N) -- run the recognizer N times over the slurped source and report the
// number of bytes it matched.  N=1 is what the standalone driver below asks for;
// the timed twin built by scripts/bench_wrap.sh asks for many.
//------------------------------------------------------------------------------
function JSON_MATCH_FENCE(N) {
    ZI      =   1;
ZBL:
    if (~(src ? json)) goto ZBAD;
    if (ZI = LT(ZI, N) ZI + 1) goto ZBL;
    JSON_MATCH_FENCE = 'matched bytes=' SIZE(src);
    return;
ZBAD:
    JSON_MATCH_FENCE = 'Pattern match failed';
    return;
}
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// *BENCH kernel=JSON_MATCH_FENCE check=1 bud=1000 flr=20
OUTPUT      =   JSON_MATCH_FENCE(1);
