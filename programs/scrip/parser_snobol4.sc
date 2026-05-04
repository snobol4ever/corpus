// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
// Rung 0: atoms + END. PASS=3 scaffold.
//
// Shape (beauty.sno model):
//   ONE Compiland PATTERN. ONE Src ? Compiland call.
//   ~ (OPSYN shift) and & (OPSYN reduce) for tree construction.
//   nPush/nInc/nPop embedded as patterns in grammar rules.
//   Naming convention (mirrors shift/nInc):
//     Uppercase = build-time, returns a pattern (like shift, nInc, nPush)
//     lowercase = match-time, called inside pattern (like Shift, IncCounter)
//   No goto. No parse-dispatch functions. tab/nl/digits from global.sc.

White   = SPAN(' ' tab);
Gray    = (White | epsilon);
nl_one  = ANY(nl);

Integer = SPAN(digits);
Id      = (ANY(&UCASE &LCASE) FENCE(SPAN(digits &UCASE &LCASE '_.') | epsilon));
SQ      = ("'" BREAK("'" nl) . _sb "'");
DQ      = ('"' BREAK('"' nl) . _sb '"');

//--- Match-time functions (lowercase, nreturn — called inside patterns) ---

function pushQLit(body) { Push(tree('E_QLIT', body)); pushQLit   = .dummy; nreturn; }
function pushNameEnd()  { Push(tree('Name', 'END'));  pushNameEnd = .dummy; nreturn; }
function pushEndNode()  { Push(tree(':end', ''));     pushEndNode = .dummy; nreturn; }

//--- Build-time functions (Uppercase, return — return patterns, like shift/nInc) ---

function PushQLit()    { PushQLit    = epsilon . *pushQLit(_sb);  return; }
function PushNameEnd() { PushNameEnd = epsilon . *pushNameEnd();  return; }
function PushEndNode() { PushEndNode = epsilon . *pushEndNode();  return; }

//--- Quoted reduce() args ---

sq      = "'";
r_Parse = sq 'Parse' sq;
r_nTop  = 'nTop()';
r_subj  = sq ':subj' sq;
r_lbl   = sq ':lbl'  sq;
r_STMT  = sq 'STMT'  sq;

//--- Atom ---

qlit_pat = ((SQ | DQ) PushQLit());

Atom = ( (Integer ~ 'E_ILIT')
       | qlit_pat
       | (Id ~ 'E_VAR')
       );

//--- Named stmt/end patterns ---

stmt_body = ( White Atom Gray (nl_one | RPOS(0))
              (r_subj & 1) (r_STMT & 1) nInc() );

end_body  = ( 'END' Gray (nl_one | RPOS(0))
              PushNameEnd()
              (r_lbl & 1)
              PushEndNode()
              (r_STMT & 2) nInc() );

//--- Compiland ---

Compiland = nPush()
            ARBNO( FENCE(
                end_body
              | stmt_body
              | Gray (nl_one | RPOS(0))
            ))
            (r_Parse & r_nTop)
            nPop();

//--- Driver ---
InitCounter();
InitStack();
Src = '';
while ((Line = INPUT)) { Src = Src Line nl; }
ok = (Src ? Compiland);
if (ok) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        i = 1; nk = n(ptree);
        while (LE(i, nk)) { TDump(c(ptree)[i]); i = i + 1; }
    }
}
