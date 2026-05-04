// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
// Rung 0: atoms + END. PASS=3 scaffold.
//
// Shape (beauty.sno model):
//   ONE Compiland PATTERN. ONE Src ? Compiland call.
//   ~ (OPSYN shift) and & (OPSYN reduce) for tree construction.
//   nPush/nInc/nPop embedded as patterns in grammar rules.
//   ARBNO body inlined (FW-3 workaround: no ARBNO(*Q) deferred refs).
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

//--- Tree-building helpers (not parse dispatch) ---

function push_qlit(body) { Push(tree('E_QLIT', body)); push_qlit = .dummy; nreturn; }
function push_name_end() { Push(tree('Name', 'END'));  push_name_end = .dummy; nreturn; }
function push_end_node() { Push(tree(':end', ''));     push_end_node = .dummy; nreturn; }

//--- Quoted reduce() args: t must be "'TAG'" so EVAL sees 'TAG' ---

sq      = "'";
r_Parse = sq 'Parse' sq;
r_nTop  = 'nTop()';
r_subj  = sq ':subj' sq;
r_lbl   = sq ':lbl'  sq;
r_STMT  = sq 'STMT'  sq;

//--- Atom: ~ is OPSYN shift ---

Atom = ( (Integer ~ 'E_ILIT')
       | ((SQ | DQ) epsilon . *push_qlit(_sb))
       | (Id ~ 'E_VAR')
       );

//--- stmt/end patterns: & is OPSYN reduce, nInc() from semantic.sc ---

stmt_body = ( White Atom Gray (nl_one | RPOS(0))
              (r_subj & 1) (r_STMT & 1) nInc() );

end_body  = ( 'END' Gray (nl_one | RPOS(0))
              epsilon . *push_name_end()
              (r_lbl & 1)
              epsilon . *push_end_node()
              (r_STMT & 2) nInc() );

//--- Compiland: ONE pattern, ONE match ---

Compiland = nPush()
            ARBNO( FENCE(
                end_body
              | stmt_body
              | Gray (nl_one | RPOS(0))
            ))
            (r_Parse & r_nTop)
            nPop();

//--- Driver: no goto, while loops only ---

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
