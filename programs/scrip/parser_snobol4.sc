// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
// Rung 0: atoms + END. PASS=3 scaffold.
//
// Shape (beauty.sno model):
//   ONE Compiland PATTERN. ONE Src ? Compiland call.
//   ~ (OPSYN shift) and & (OPSYN reduce) for tree construction.
//   nPush/nInc/nPop embedded as patterns in grammar rules.
//   Pattern-returning functions (return not nreturn) compose at build time.
//   No goto. No parse-dispatch functions. tab/nl/digits from global.sc.
//
// Naming (RULES.md): beauty.sno token names; snobol4.y rule names; snobol4.h IR tags.

White   = SPAN(' ' tab);
Gray    = (White | epsilon);
nl_one  = ANY(nl);

Integer = SPAN(digits);
Id      = (ANY(&UCASE &LCASE) FENCE(SPAN(digits &UCASE &LCASE '_.') | epsilon));
SQ      = ("'" BREAK("'" nl) . _sb "'");
DQ      = ('"' BREAK('"' nl) . _sb '"');

//--- Runtime push functions (nreturn — called at match time) ---

function PushQLit(body) { Push(tree('E_QLIT', body)); PushQLit = .dummy; nreturn; }
function PushNameEnd()  { Push(tree('Name', 'END'));  PushNameEnd = .dummy; nreturn; }
function PushEndNode()  { Push(tree(':end', ''));     PushEndNode = .dummy; nreturn; }

//--- Pattern-returning functions (return — called at build time, like nInc/shift) ---

function push_qlit()    { push_qlit    = epsilon . *PushQLit(_sb);  return; }
function push_name_end(){ push_name_end = epsilon . *PushNameEnd(); return; }
function push_end_node(){ push_end_node = epsilon . *PushEndNode(); return; }

//--- Quoted reduce() args ---

sq      = "'";
r_Parse = sq 'Parse' sq;
r_nTop  = 'nTop()';
r_subj  = sq ':subj' sq;
r_lbl   = sq ':lbl'  sq;
r_STMT  = sq 'STMT'  sq;

//--- Atom ---

qlit_pat = ((SQ | DQ) push_qlit());

Atom = ( (Integer ~ 'E_ILIT')
       | qlit_pat
       | (Id ~ 'E_VAR')
       );

//--- Named stmt/end patterns ---

stmt_body = ( White Atom Gray (nl_one | RPOS(0))
              (r_subj & 1) (r_STMT & 1) nInc() );

end_body  = ( 'END' Gray (nl_one | RPOS(0))
              push_name_end()
              (r_lbl & 1)
              push_end_node()
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
