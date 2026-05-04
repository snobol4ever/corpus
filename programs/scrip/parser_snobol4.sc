// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
// Rung 0: atoms + END. PASS=3 scaffold.
//
// Shape mirrors beauty.sno:
//   Operator tokens with surrounding White/Gray (beauty.sno $'op' convention).
//   ~ (OPSYN shift), & (OPSYN reduce), nPush/nInc/nPop as patterns.
//   Uppercase = build-time pattern-returner. lowercase = match-time nreturn.
//   ONE Compiland. ARBNO body inlined (scrip FW-3: nInc in *Q doesn't fire).
//   No goto. No parse-dispatch functions. tab/nl/digits from global.sc.

//--- Whitespace (beauty.sno) ---

White   = (  SPAN(' ' tab)
                FENCE(nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon) | epsilon)
          |  nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon)
          );
Gray    = (*White | epsilon);
nl_one  = ANY(nl);

//--- Token classifiers (beauty.sno names) ---

Integer = SPAN(digits);
Id      = (ANY(&UCASE &LCASE) FENCE(SPAN(digits &UCASE &LCASE '_.') | epsilon));
SQ      = ("'" BREAK("'" nl) . _sb "'");
DQ      = ('"' BREAK('"' nl) . _sb '"');

//--- Operator token patterns (beauty.sno $'op' style, named without $) ---

op_eq   = (*White '=' *White);
op_or   = (*White '|' *White);
op_pls  = (*White '+' *White);
op_mns  = (*White '-' *White);
op_div  = (*White '/' *White);
op_mul  = (*White '*' *White);
op_pow  = (*White '^' *White);
op_pow2 = (*White '**' *White);
op_bang = (*White '!' *White);
op_cap  = (*White '$' *White);
op_dot  = (*White '.' *White);
op_com  = (*Gray  ',' *Gray);
op_lp   = ('(' *Gray);
op_rp   = (*Gray ')');

//--- Match-time functions (lowercase, nreturn) ---

function pushQLit(body) { Push(tree('E_QLIT', body)); pushQLit   = .dummy; nreturn; }
function pushNameEnd()  { Push(tree('Name', 'END'));  pushNameEnd = .dummy; nreturn; }
function pushEndNode()  { Push(tree(':end', ''));     pushEndNode = .dummy; nreturn; }

//--- Build-time functions (Uppercase, return patterns) ---

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

//--- Named stmt/end patterns (nInc at end of each, not at Command level) ---

stmt_body = ( *White Atom *Gray (nl_one | RPOS(0))
              (r_subj & 1) (r_STMT & 1) nInc() );

end_body  = ( 'END' *Gray (nl_one | RPOS(0))
              PushNameEnd()
              (r_lbl & 1)
              PushEndNode()
              (r_STMT & 2) nInc() );

//--- Compiland: ARBNO body inlined per scrip FW-3 workaround ---

Compiland = nPush()
            ARBNO( FENCE(
                end_body
              | stmt_body
              | *Gray (nl_one | RPOS(0))
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
