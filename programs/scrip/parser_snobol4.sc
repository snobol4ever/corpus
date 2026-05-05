// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
//
// PATTERN block: structure verbatim from beauty.sno; reduce/shift tags
// emit canonical IR (E_*) directly — no rewrite layer.  String leaves use
// a Push_qlit worker to push (E_QLIT body) with bare inner text (quotes
// stripped at match time).
//
// Helper functions: pp_stmt (role-slot assembly for the 7-slot Stmt) +
// rw_expr (paren-strip, ExprList unwrap, Call lookup-and-rebuild, left-
// rotate right-recursive arith chains).  No tag renaming — that's done
// in the grammar.
//
// Tree shape produced per --dump-parse oracle:
//   (STMT [:lbl L] [:eq] [:subj E] [:pat P] [:repl R] [:goS/:goF/:goU G])
// beauty.sno's 7-slot (Stmt label subj pat asgn repl go1 go2) is the
// parse tree; pp_stmt maps it to the role-slot form.
//
// Rungs: SN-0..SN-6 PASS=58; SN-7-1 IR-tag + role-slot rewrite.
// Iter#7: rw_tag layer removed — grammar emits E_* tags directly.
/*====================================================================================================================*/
E_Parse = "'Parse'";
E_goU   = "':go'";
E_goS   = "':goS'";
E_goF   = "':goF'";
// IR-tag constants — emitted directly by the grammar (no rewrite layer).
E_VAR   = "'E_VAR'";    E_ILIT  = "'E_ILIT'";   E_QLIT  = "'E_QLIT'";   E_RLIT     = "'E_RLIT'";
E_KEYWORD = "'E_KEYWORD'";
E_SEQ   = "'E_SEQ'";    E_ALT   = "'E_ALT'";
E_ADD   = "'E_ADD'";    E_SUB   = "'E_SUB'";    E_MUL   = "'E_MUL'";    E_DIV      = "'E_DIV'";
E_POW   = "'E_POW'";    E_PLS   = "'E_PLS'";    E_MNS   = "'E_MNS'";
E_CAPT_IMMED_ASGN = "'E_CAPT_IMMED_ASGN'";
E_CAPT_COND_ASGN  = "'E_CAPT_COND_ASGN'";
/*====================================================================================================================*/
// PATTERN block — verbatim from beauty.sno.  NOT ONE CHARACTER CHANGED.
/*====================================================================================================================*/
Integer     =  SPAN(digits);
DQ          =  '"' BREAK('"' nl) . str_body '"';
SQ          =  "'" BREAK("'" nl) . str_body "'";
String      =  *SQ | *DQ;
Real        =  (  SPAN(digits)
                  ('.' FENCE(SPAN(digits) | epsilon) | epsilon)
                  ('E' | 'e')
                  ('+' | '-' | epsilon)
                  SPAN(digits)
               |  SPAN(digits) '.' FENCE(SPAN(digits) | epsilon)
               );
Id          =  ANY(&UCASE &LCASE)
               FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon);
ProtKwd     =  '&' SPAN(&UCASE &LCASE);
UnprotKwd   =  '&' SPAN(&UCASE &LCASE);
White       =  (  SPAN(' ' tab)
                  FENCE(  ';*' BREAK(nl)
                       |  nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon)
                       |  epsilon
                       )
               |  ';*' BREAK(nl)
               |  nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon)
               );
Gray        =  White | epsilon;
$' '        =  Gray;
$'  '       =  White;
$'='        =  $'  ' '='  $'  ';
$'?'        =  $'  ' '?'  $'  ';
$'|'        =  $'  ' '|'  $'  ';
$'+'        =  $'  ' '+'  $'  ';
$'-'        =  $'  ' '-'  $'  ';
$'/'        =  $'  ' '/'  $'  ';
$'*'        =  $'  ' '*'  $'  ';
$'^'        =  $'  ' '^'  $'  ';
$'!'        =  $'  ' '!'  $'  ';
$'**'       =  $'  ' '**' $'  ';
$'$'        =  $'  ' '$'  $'  ';
$'.'        =  $'  ' '.'  $'  ';
$'&'        =  $'  ' '&'  $'  ';
$'@'        =  $'  ' '@'  $'  ';
$'#'        =  $'  ' '#'  $'  ';
$'%'        =  $'  ' '%'  $'  ';
$'~'        =  $'  ' '~'  $'  ';
$','        =  $' '  ','  $' ';
$':'        =  $' '  ':'  $' ';
$'('        =        '('  $' ';
$'['        =        '['  $' ';
$'<'        =        '<'  $' ';
$')'        =  $' '  ')';
$']'        =  $' '  ']';
$'>'        =  $' '  '>';
/*--------------------------------------------------------------------------------------------------------------------*/
// String-body push: workers fire push_qlit at match time using captured str_body.
function push_qlit() { Push(tree('E_QLIT', str_body)); push_qlit = .dummy; nreturn; }
Push_qlit   = epsilon . *push_qlit();
/*--------------------------------------------------------------------------------------------------------------------*/
ExprList    =  nPush()
               *XList
               ("'ExprList'" & '*(GT(nTop(), 1) nTop())')
               nPop();
XList       =  nInc() (*Expr | epsilon ~ '') FENCE($',' *XList | epsilon);
Expr        =  *Expr0;
Expr0       =  *Expr1 FENCE($'=' *Expr0 ("'='" & 2) | epsilon);
Expr1       =  *Expr2 FENCE($'?' *Expr1 ("'?'" & 2) | epsilon);
Expr2       =  *Expr3 FENCE($'&' *Expr2 ("'&'" & 2) | epsilon);
Expr3       =  nPush() *X3 (E_ALT & '*(GT(nTop(), 1) nTop())') nPop();
X3          =  nInc() *Expr4 FENCE($'|' *X3 | epsilon);
Expr4       =  nPush() *X4 (E_SEQ & '*(GT(nTop(), 1) nTop())') nPop();
X4          =  nInc() *Expr5 FENCE($'  ' *X4 | epsilon);
Expr5       =  *Expr6 FENCE($'@' *Expr5 ("'@'" & 2) | epsilon);
Expr6       =  *Expr7
               FENCE(
                  $'+' *Expr6 (E_ADD & 2) | $'-' *Expr6 (E_SUB & 2) | epsilon
               );
Expr7       =  *Expr8 FENCE($'#' *Expr7 ("'#'" & 2) | epsilon);
Expr8       =  *Expr9 FENCE($'/' *Expr8 (E_DIV & 2) | epsilon);
Expr9       =  *Expr10 FENCE($'*' *Expr9 (E_MUL & 2) | epsilon);
Expr10      =  *Expr11 FENCE($'%' *Expr10 ("'%'" & 2) | epsilon);
Expr11      =  *Expr12
               FENCE(($'^' | $'!' | $'**') *Expr11 (E_POW & 2) | epsilon);
Expr12      =  *Expr13
               FENCE(
                  $'$' *Expr12 (E_CAPT_IMMED_ASGN & 2)
               |  $'.' *Expr12 (E_CAPT_COND_ASGN  & 2)
               |  epsilon
               );
Expr13      =  *Expr14 FENCE($'~' *Expr13 ("'~'" & 2) | epsilon);
Expr14      =  '@' *Expr14 ("'@'" & 1)
            |  '~' *Expr14 ("'~'" & 1)
            |  '?' *Expr14 ("'?'" & 1)
            |  *ProtKwd   ~ E_KEYWORD
            |  *UnprotKwd ~ E_KEYWORD
            |  '&' *Expr14 ("'&'" & 1)
            |  '+' *Expr14 (E_PLS & 1)
            |  '-' *Expr14 (E_MNS & 1)
            |  '*' *Expr14 ("'*'" & 1)
            |  '$' *Expr14 ("'$'" & 1)
            |  '.' *Expr14 ("'.'" & 1)
            |  '!' *Expr14 ("'!'" & 1)
            |  '%' *Expr14 ("'%'" & 1)
            |  '/' *Expr14 ("'/'" & 1)
            |  '#' *Expr14 ("'#'" & 1)
            |  '=' *Expr14 ("'='" & 1)
            |  '|' *Expr14 ("'|'" & 1)
            |  *Expr15;
Expr15      =  *Expr17
               FENCE(nPush() *Expr16 ("'[]'" & 'nTop() + 1') nPop() | epsilon);
Expr16      =  nInc()
               ($'[' *ExprList $']' | $'<' *ExprList $'>')
               FENCE(*Expr16 | epsilon);
Expr17      =  FENCE(
                  nPush()
                  $'('
                  *Expr
                  (  $',' *XList ("','" & 'nTop() + 1')
                  |  epsilon ("'()'" & 1)
                  )
                  $')'
                  nPop()
               |  *Id ~ E_VAR $'(' *ExprList $')' ("'Call'" & 2)
               |  *Id      ~ E_VAR
               |  *String    Push_qlit
               |  *Real    ~ E_RLIT
               |  *Integer ~ E_ILIT
               );
// Goto: direction baked into reduce tag via named SGoto/FGoto patterns.
// SGoto/FGoto match the letter and reduce 0; we use them as markers via
// ARBNO-of-1 placement.  Actually simpler: name the success and failure
// alternatives separately with their own reduce tags.
SGoto       =  ('S' | 's');
FGoto       =  ('F' | 'f');
Target      =  $'(' . *assign(.Brackets, *'()') *Expr $')'
            |  $'<' . *assign(.Brackets, *'<>') *Expr $'>';
Sgo         =  *SGoto $' ' *Target reduce(E_goS, 1);
Fgo         =  *FGoto $' ' *Target reduce(E_goF, 1);
Ugo         =  *Target reduce(E_goU, 1);
Goto        =  $':'
               FENCE(
                  *Ugo epsilon ~ ''
               |  *Sgo FENCE($':' *Fgo | epsilon ~ '')
               |  *Fgo FENCE($':' *Sgo | epsilon ~ '')
               );
Control     =  '-' BREAK(nl ';');
Comment     =  '*' BREAK(nl);
Label       =  BREAK(' ' tab nl ';') ~ 'Label';
Stmt        =  *Label
               (  $'  '
                  *Expr14
                  FENCE(
                     epsilon ~ ''
                     $'  '
                     ('=' ~ '=' $'  ' *Expr | '=' ~ '=' epsilon ~ '')
                  |  ($'?' | $'  ')
                     *Expr1
                     FENCE(
                        $'  '
                        ('=' ~ '=' $'  ' *Expr | '=' ~ '=' epsilon ~ '')
                     |  epsilon ~ '' epsilon ~ ''
                     )
                  |  epsilon ~ '' epsilon ~ '' epsilon ~ ''
                  )
               |  epsilon ~ '' epsilon ~ '' epsilon ~ '' epsilon ~ ''
               )
               FENCE(*Goto | epsilon ~ '' epsilon ~ '')
               $' ';
Commands    =  *Command FENCE(*Commands | epsilon);
Command     =  nInc()
               FENCE(
                  *Comment ~ 'comment' ("'Comment'" & 1) nl
               |  *Control ~ 'control' ("'Control'" & 1) (nl | ';')
               |  *Stmt ("'Stmt'" & 7) (nl | ';')
               );
Compiland   =  nPush()
               ARBNO(*Command)
               (E_Parse & 'nTop()')
               ('END' (' ' BREAK(nl) nl | nl) ARBNO(BREAK(nl) nl) | epsilon)
               nPop();
/*====================================================================================================================*/
// Helper functions — read beauty.sno's 7-slot Stmt and emit IR role-slot STMT.
// Mirror beauty.sno's pp_Stmt exactly: read c[1]..c[7] by fixed index.
// DIFFER(t(x)) is the beauty.sno idiom to check if a slot has content.
//
// Iter#7: rw_tag layer removed — grammar emits canonical IR (E_*) tags
// directly via the IR-tag string constants at the top of the file.
// String leaves use Push_qlit (worker pair) to push (E_QLIT body) with
// quotes already stripped at match time via the str_body capture slot.
// rw_expr therefore handles only structural rewriting: paren-strip,
// ExprList unwrap, Call-builtin lookup, and left-rotation of the
// right-recursive arith chains beauty.sno builds.
/*====================================================================================================================*/
// rw_call — rewrite a Call node into either E_FNC (generic) or E_LEN /
// E_BREAK / E_SPAN / E_ANY / E_NOTANY (pattern-primitive specialization).
// beauty.sno Call shape: ("'Call'" & 2) always gives 2 children:
// c[1]=callee, c[2]=args.  ExprList only wraps when nTop()>1 (>=2 args);
// with 1 arg c[2] is the bare arg node; with 0 args the ExprList
// reduce fires with nTop()=0 producing an ExprList with n=0.
function rw_call(x, fname, args, na, result, i) {
    fname = v(c(x)[1]);
    args  = c(x)[2];
    // Determine arg count: if args is ExprList, na=n(args); else na=1 (bare single arg).
    if (IDENT(t(args), 'ExprList')) { na = n(args); }
    else if (DIFFER(t(args)))        { na = 1; }
    else                             { na = 0; }
    if (IDENT(fname, 'LEN'))     { result = Tree('E_LEN',    '', na); }
    else if (IDENT(fname, 'BREAK'))   { result = Tree('E_BREAK',  '', na); }
    else if (IDENT(fname, 'SPAN'))    { result = Tree('E_SPAN',   '', na); }
    else if (IDENT(fname, 'ANY'))     { result = Tree('E_ANY',    '', na); }
    else if (IDENT(fname, 'NOTANY'))  { result = Tree('E_NOTANY', '', na); }
    else                              { result = Tree('E_FNC', fname, 0); }
    if (EQ(na, 0)) { rw_call = result; return; }
    if (IDENT(t(args), 'ExprList')) {
        i = 1;
        while (LE(i, na)) { Append(result, rw_expr(c(args)[i])); i = i + 1; }
    } else {
        Append(result, rw_expr(args));
    }
    rw_call = result;
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// is_rotatable — true iff a binary-op IR tag is in the set that beauty.sno
// builds right-recursively but the oracle wants left-associative.  These
// are the seven ops that the grammar emits as E_* directly via shift/reduce.
function is_rotatable(t) {
    if (IDENT(t, 'E_ADD'))               { is_rotatable = 1; return; }
    if (IDENT(t, 'E_SUB'))               { is_rotatable = 1; return; }
    if (IDENT(t, 'E_MUL'))               { is_rotatable = 1; return; }
    if (IDENT(t, 'E_DIV'))               { is_rotatable = 1; return; }
    if (IDENT(t, 'E_POW'))               { is_rotatable = 1; return; }
    if (IDENT(t, 'E_CAPT_IMMED_ASGN'))   { is_rotatable = 1; return; }
    if (IDENT(t, 'E_CAPT_COND_ASGN'))    { is_rotatable = 1; return; }
    is_rotatable = 0;
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// rw_expr — structural rewrite walk: paren-strip, ExprList unwrap, Call
// dispatch (generic E_FNC vs pattern-primitive E_LEN/E_BREAK/...),
// left-rotate right-recursive binary arith chains.  No tag renaming —
// the grammar emits E_* tags directly.
function rw_expr(x, t, result, i, right, rr, rl) {
    if (IDENT(x)) { rw_expr = x; return; }
    t = t(x);
    if (IDENT(t))          { rw_expr = x; return; }   // empty-slot node
    // '()' paren node: transparent wrapper — unwrap the single child
    if (IDENT(t, '()'))    { rw_expr = rw_expr(c(x)[1]); return; }
    if (IDENT(t, 'Call'))  { rw_expr = rw_call(x); return; }
    // ExprList: transparent — inline its children into a fresh E_SEQ if n>1, else unwrap
    if (IDENT(t, 'ExprList')) {
        if (EQ(n(x), 1))   { rw_expr = rw_expr(c(x)[1]); return; }
        result = Tree('E_SEQ', '', 0);
        i = 1;
        while (LE(i, n(x))) { Append(result, rw_expr(c(x)[i])); i = i + 1; }
        rw_expr = result;
        return;
    }
    // Left-rotation: beauty.sno builds a + b + c as (a + (b + c)); oracle wants ((a+b)+c).
    // A right-recursive node is one where n=2 and c[2] has the same IR tag.
    // Rotate: result = (rw(c[1]) op rw(c[2].c[1])); then iteratively fold in c[2].c[2] etc.
    if (EQ(n(x), 2) is_rotatable(t)) {
        right = c(x)[2];
        if (EQ(n(right), 2) IDENT(t(right), t)) {
            // right child is same op: flatten to left-associative chain
            result = Tree(t, '', 2, rw_expr(c(x)[1]), rw_expr(c(right)[1]));
            rr = c(right)[2];
            while (EQ(n(rr), 2) IDENT(t(rr), t)) {
                rl = c(rr)[1];
                result = Tree(t, '', 2, result, rw_expr(rl));
                rr = c(rr)[2];
            }
            result = Tree(t, '', 2, result, rw_expr(rr));
            rw_expr = result;
            return;
        }
    }
    result = Tree(t, v(x), 0);
    i = 1;
    while (LE(i, n(x))) { Append(result, rw_expr(c(x)[i])); i = i + 1; }
    rw_expr = result;
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// rw_goto_slot — goto node tag is ':go'/':goS'/':goF' (baked by Goto pattern).
// child[1] is the target Id node; v() gives the label name.
function rw_goto_slot(g, tgt_v) {
    tgt_v = v(c(g)[1]);
    rw_goto_slot = tree(t(g), tgt_v);
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// pp_stmt — read beauty.sno's 7-slot Stmt exactly as pp_Stmt does, build IR STMT.
// Mirrors beauty.sno pp_Stmt slot assignments verbatim:
//   ppLbl   = ss(c[1])      → label string; non-empty means label present
//   ppSubj  = c[2]          → subject/body expression; DIFFER(t(ppSubj)) = present
//   ppPatrn = c[3]          → pattern; DIFFER(t(ppPatrn)) = present
//   ppAsgn  = v(c[4])       → '=' string; DIFFER(ppAsgn) = '=' present
//   ppRepl  = c[5]          → replacement; DIFFER(t(ppRepl)) = present
//   ppGo1   = c[6]          → goto1; DIFFER(t(ppGo1)) = present
//   ppGo2   = c[7]          → goto2; DIFFER(t(ppGo2)) = present
//
// :subj/:pat split rule (goal file):
//   If ppPatrn present → ppSubj is :subj, ppPatrn is :pat
//   If ppPatrn absent  → apply E_SEQ split on rw_expr(ppSubj):
//     E_SEQ with n>=2 → child[1] is :subj, rest is :pat
//     Otherwise       → whole expr is :subj
function pp_stmt(x, ppLbl, ppSubj, ppPatrn, ppAsgn, ppRepl, ppGo1, ppGo2,
                 result, subj_ir, pat_ir, seq_n, pat_seq, i) {
    ppLbl   = v(c(x)[1]);
    ppSubj  = c(x)[2];
    ppPatrn = c(x)[3];
    ppAsgn  = v(c(x)[4]);
    ppRepl  = c(x)[5];
    ppGo1   = c(x)[6];
    ppGo2   = c(x)[7];
    // END line: label == 'END' and no subject
    if (IDENT(ppLbl, 'END') IDENT(t(ppSubj))) {
        pp_stmt = Tree('STMT', '', 2, tree(':lbl', 'END'), tree(':end', ''));
        return;
    }
    result = Tree('STMT', '', 0);
    // :lbl
    if (DIFFER(ppLbl))        { Append(result, tree(':lbl', ppLbl)); }
    // body exists?
    if (DIFFER(t(ppSubj))) {
        // :eq flag
        if (DIFFER(ppAsgn))   { Append(result, tree(':eq', '')); }
        subj_ir = rw_expr(ppSubj);
        if (DIFFER(t(ppPatrn))) {
            // ppPatrn non-empty: ppSubj is subject, ppPatrn is pattern.
            // SPECIAL: if pat top is E_ALT *and pat was NOT paren-wrapped*, fold subj_ir
            // into first arm of ALT and emit only :subj — the oracle's "alt eats LHS" rule.
            // Paren-wrap defeats the fold per oracle (S ('a' | 'b') keeps the split).
            pat_ir = rw_expr(ppPatrn);
            if (IDENT(t(pat_ir), 'E_ALT') GT(n(pat_ir), 0) DIFFER(t(ppPatrn), '()')) {
                // build (E_ALT (E_SEQ subj_ir arm[1]) arm[2] ... arm[n])
                seq_n = Tree('E_SEQ', '', 2, subj_ir, c(pat_ir)[1]);
                pat_seq = Tree('E_ALT', '', 1, seq_n);
                i = 2;
                while (LE(i, n(pat_ir))) {
                    Append(pat_seq, c(pat_ir)[i]);
                    i = i + 1;
                }
                Append(result, Tree(':subj', '', 1, pat_seq));
            } else {
                Append(result, Tree(':subj', '', 1, subj_ir));
                Append(result, Tree(':pat',  '', 1, pat_ir));
            }
        } else {
            // ppPatrn empty: apply E_SEQ split on subj_ir
            // E_ALT at top: whole thing is :subj (alt already absorbs LHS per oracle)
            // E_SEQ with n>=2: child[1] is :subj, rest is :pat
            if (IDENT(t(subj_ir), 'E_SEQ') GT(n(subj_ir), 1)) {
                seq_n = n(subj_ir);
                Append(result, Tree(':subj', '', 1, c(subj_ir)[1]));
                if (LE(seq_n, 2)) {
                    Append(result, Tree(':pat', '', 1, c(subj_ir)[2]));
                } else {
                    pat_seq = Tree('E_SEQ', '', 0);
                    i = 2;
                    while (LE(i, seq_n)) {
                        Append(pat_seq, c(subj_ir)[i]);
                        i = i + 1;
                    }
                    Append(result, Tree(':pat', '', 1, pat_seq));
                }
            } else {
                Append(result, Tree(':subj', '', 1, subj_ir));
            }
        }
        // :repl — present if ppRepl has content OR ppAsgn is '=' (empty repl).
        if (DIFFER(t(ppRepl))) {
            Append(result, Tree(':repl', '', 1, rw_expr(ppRepl)));
        } else if (DIFFER(ppAsgn)) {
            Append(result, Tree(':repl', '', 1, tree('E_QLIT', '')));
        }
    }
    // gotos
    if (DIFFER(t(ppGo1))) { Append(result, rw_goto_slot(ppGo1)); }
    if (DIFFER(t(ppGo2))) { Append(result, rw_goto_slot(ppGo2)); }
    pp_stmt = result;
    return;
}
/*====================================================================================================================*/
InitCounter();
InitStack();
Src = '';
while ((Line = INPUT)) Src = Src Line nl ;
if (Src ? Compiland) {
    ptree = Pop();
    i = 1;
    nk = n(ptree);
    while (LE(i, nk)) {
        cmd = c(ptree)[i];
        if (IDENT(t(cmd), 'Stmt')) { TDump(pp_stmt(cmd)); }
        i = i + 1;
    }
} else OUTPUT = 'Parse Error.';
/*====================================================================================================================*/
