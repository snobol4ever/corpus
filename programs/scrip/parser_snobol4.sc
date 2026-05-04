// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
// ONE Compiland pattern, ONE Src ? Compiland. No goto. No parse functions.
// shift/reduce via function calls (INFRA-11b). nPush/nInc/nTop/nPop as patterns.

tab   = '	';
nl    = '
';
Gray  = (SPAN(' ' tab) | epsilon);
White = SPAN(' ' tab);
nl_one = ANY(nl);

Integer = SPAN(digits);
Id      = (ANY(&UCASE &LCASE) (SPAN(digits &UCASE &LCASE '_.') | epsilon));
SQ      = ("'" BREAK("'" nl) . _sb "'");
DQ      = ('"' BREAK('"' nl) . _sb '"');
String  = (SQ | DQ);

//--- tree-building helpers ---

function push_qlit(body) {
    Push(tree('E_QLIT', body)); push_qlit = .dummy; nreturn;
}
function push_subj_stmt() {
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, Pop())));
    IncCounter();
    push_subj_stmt = .dummy; nreturn;
}
function push_end_stmt() {
    Push(Tree('STMT', '', 2,
              Tree(':lbl', '', 1, tree('Name', 'END')),
              tree(':end', '')));
    IncCounter();
    push_end_stmt = .dummy; nreturn;
}

//--- grammar patterns ---

sq      = "'";
r_Parse = sq 'Parse' sq;
r_nTop  = 'nTop()';

// Atom: Integer and Id shift matched text directly.
// String: capture body into _sb then push via helper (quotes excluded).
Atom = ( shift(Integer, 'E_ILIT')
       | String epsilon . *push_qlit(_sb)
       | shift(Id, 'E_VAR')
       );

EndMarker = ( 'END' Gray (nl_one | RPOS(0))
              epsilon . *push_end_stmt() );

stmt = ( White Atom Gray (nl_one | RPOS(0))
         epsilon . *push_subj_stmt() );

Command = ( EndMarker
          | stmt
          | Gray (nl_one | RPOS(0))
          );

Compiland = nPush()
            ARBNO( Command )
            reduce(r_Parse, r_nTop)
            nPop();

//--- driver ---
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
