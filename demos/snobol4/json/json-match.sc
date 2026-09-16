// json-match.sc -- JSON grammar, pattern match ONLY (Snocone).
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
INPUT(.INPUT, 9, '[-f0 -r4194304]');
if (src = INPUT) {
    if (src ? json) OUTPUT = 'matched bytes=' SIZE(src);
    else            OUTPUT = 'Pattern match failed';
} else              OUTPUT = 'Pattern match failed';
