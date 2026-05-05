// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
//
// PATTERN block: verbatim from beauty.sno (zero characters changed).
// Helper functions: Rewrite_expr (tag rename) + Rewrite_stmt (role-slot
// assembly) convert beauty.sno's native 7-slot Stmt tree to --dump-parse
// IR shape.  No changes to any PATTERN line.
//
// Tree shape produced per --dump-parse oracle:
//   (STMT [:lbl L] [:eq] [:subj E] [:pat P] [:repl R] [:goS/:goF/:goU G])
// beauty.sno's 7-slot (Stmt label subj pat asgn repl go1 go2) is the
// parse tree; Rewrite_stmt maps it to the role-slot form.
//
// Rungs: SN-0..SN-6 PASS=58; SN-7-1 IR-tag + role-slot rewrite.
/*====================================================================================================================*/
E_Parse   = "'Parse'";
E_goU     = "':go'";
E_goS     = "':goS'";
E_goF     = "':goF'";
E_KEYWORD = "'E_KEYWORD'";
E_DEFER   = "'E_DEFER'";
E_IDX     = "'E_IDX'";
/*====================================================================================================================*/
// PATTERN block — verbatim from beauty.sno.  NOT ONE CHARACTER CHANGED.
/*====================================================================================================================*/
Integer     =  SPAN(digits);
DQ          =  '"' BREAK('"' nl) '"';
SQ          =  "'" BREAK("'" nl) "'";
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
Gray        =  *White | epsilon;
White       =  (  SPAN(' ' tab)
                  FENCE(nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon) | epsilon)
               |  nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon)
               );
$'='        =  *White '=' *White;
$'?'        =  *White '?' *White;
$'|'        =  *White '|' *White;
$'+'        =  *White '+' *White;
$'-'        =  *White '-' *White;
$'/'        =  *White '/' *White;
$'*'        =  *White '*' *White;
$'^'        =  *White '^' *White;
$'!'        =  *White '!' *White;
$'**'       =  *White '**' *White;
$'$'        =  *White '$' *White;
$'.'        =  *White '.' *White;
$'&'        =  *White '&' *White;
$'@'        =  *White '@' *White;
$'#'        =  *White '#' *White;
$'%'        =  *White '%' *White;
$'~'        =  *White '~' *White;
$','        =  *Gray ',' *Gray;
$'('        =  '(' *Gray;
$'['        =  '[' *Gray;
$'<'        =  '<' *Gray;
$')'        =  *Gray ')';
$']'        =  *Gray ']';
$'>'        =  *Gray '>';
ExprList    =  nPush()
               *XList
               ("'ExprList'" & '*(GT(nTop(), 1) nTop())')
               nPop();
XList       =  nInc() (*Expr | epsilon ~ '') FENCE($',' *XList | epsilon);
Expr        =  *Expr0;
Expr0       =  *Expr1 FENCE($'=' *Expr0 ("'='" & 2) | epsilon);
Expr1       =  *Expr2 FENCE($'?' *Expr1 ("'?'" & 2) | epsilon);
Expr2       =  *Expr3 FENCE($'&' *Expr2 ("'&'" & 2) | epsilon);
Expr3       =  nPush() *X3 ("'|'" & '*(GT(nTop(), 1) nTop())') nPop();
X3          =  nInc() *Expr4 FENCE($'|' *X3 | epsilon);
Expr4       =  nPush() *X4 ("'..'" & '*(GT(nTop(), 1) nTop())') nPop();
X4          =  nInc() *Expr5 FENCE(*White *X4 | epsilon);
Expr5       =  *Expr6 FENCE($'@' *Expr5 ("'@'" & 2) | epsilon);
Expr6       =  *Expr7
               FENCE($'+' *Expr7 foldop("'E_ADD'") *Expr6cont | $'-' *Expr7 foldop("'E_SUB'") *Expr6cont | epsilon);
Expr6cont   =  FENCE($'+' *Expr7 foldop("'E_ADD'") *Expr6cont | $'-' *Expr7 foldop("'E_SUB'") *Expr6cont | epsilon);
Expr7       =  *Expr8 FENCE($'#' *Expr7 ("'#'" & 2) | epsilon);
Expr8       =  *Expr9 FENCE($'/' *Expr9 foldop("'E_DIV'") *Expr8cont | epsilon);
Expr8cont   =  FENCE($'/' *Expr9 foldop("'E_DIV'") *Expr8cont | epsilon);
Expr9       =  *Expr10 FENCE($'*' *Expr10 foldop("'E_MUL'") *Expr9cont | epsilon);
Expr9cont   =  FENCE($'*' *Expr10 foldop("'E_MUL'") *Expr9cont | epsilon);
Expr10      =  *Expr11 FENCE($'%' *Expr10 ("'%'" & 2) | epsilon);
Expr11      =  *Expr12 FENCE(($'^' | $'!' | $'**') *Expr12 foldop("'E_POW'") *Expr11cont | epsilon);
Expr11cont  =  FENCE(($'^' | $'!' | $'**') *Expr12 foldop("'E_POW'") *Expr11cont | epsilon);
Expr12      =  *Expr13
               FENCE(
                  $'$' *Expr12 ("'$'" & 2)
               |  $'.' *Expr12 ("'.'" & 2)
               |  epsilon
               );
Expr13      =  *Expr14 FENCE($'~' *Expr13 ("'~'" & 2) | epsilon);
Expr14      =  '@' *Expr14 ("'@'" & 1)
            |  '~' *Expr14 ("'~'" & 1)
            |  '?' *Expr14 ("'?'" & 1)
            |  '&' shift(SPAN(&UCASE &LCASE), E_KEYWORD)
            |  '+' *Expr14 ("'+'" & 1)
            |  '-' *Expr14 ("'-'" & 1)
            |  '*' *Expr14 reduce(E_DEFER, 1)
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
               FENCE(nPush() *Expr16 (E_IDX & 'nTop() + 1') nPop() | epsilon);
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
               |  *Id ~ 'Id' $'(' *ExprList $')' ("'Call'" & 2)
               |  *Id ~ 'Id'
               |  *String ~ 'String'
               |  *Real ~ 'Real'
               |  *Integer ~ 'Integer'
               );
// Goto: direction baked into reduce tag via named SGoto/FGoto patterns.
// SGoto/FGoto match the letter and reduce 0; we use them as markers via
// ARBNO-of-1 placement.  Actually simpler: name the success and failure
// alternatives separately with their own reduce tags.
SGoto       =  ('S' | 's');
FGoto       =  ('F' | 'f');
Target      =  $'(' . *assign(.Brackets, *'()') *Expr $')'
            |  $'<' . *assign(.Brackets, *'<>') *Expr $'>';
Sgo         =  *SGoto *Gray *Target reduce(E_goS, 1);
Fgo         =  *FGoto *Gray *Target reduce(E_goF, 1);
Ugo         =  *Target reduce(E_goU, 1);
Goto        =  *Gray ':'
               *Gray
               FENCE(
                  *Ugo epsilon ~ ''
               |  *Sgo FENCE(*Gray (':' *Gray | epsilon) *Fgo | epsilon ~ '')
               |  *Fgo FENCE(*Gray (':' *Gray | epsilon) *Sgo | epsilon ~ '')
               );
Control     =  '-' BREAK(nl ';');
Comment     =  '*' BREAK(nl);
Label       =  BREAK(' ' tab nl ';') ~ 'Label';
Stmt        =  *Label
               (  *White
                  *Expr14
                  FENCE(
                     epsilon ~ ''
                     *White
                     ('=' ~ '=' *White *Expr | '=' ~ '=' epsilon ~ '')
                  |  ($'?' | *White)
                     *Expr1
                     FENCE(
                        *White
                        ('=' ~ '=' *White *Expr | '=' ~ '=' epsilon ~ '')
                     |  epsilon ~ '' epsilon ~ ''
                     )
                  |  epsilon ~ '' epsilon ~ '' epsilon ~ ''
                  )
               |  epsilon ~ '' epsilon ~ '' epsilon ~ '' epsilon ~ ''
               )
               FENCE(*Goto | epsilon ~ '' epsilon ~ '')
               *Gray;
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
// Tag rename table (beauty.sno native → --dump-parse IR):
//   'Id'       → 'E_VAR'     'Integer'  → 'E_ILIT'    'String' → 'E_QLIT'
//   'Real'     → 'E_RLIT'    'Call'     → 'E_FNC'     '..'     → 'E_SEQ'
//   '|'        → 'E_ALT'     '$' (bin)  → 'E_CAPT_IMMED_ASGN'
//   '.' (bin)  → 'E_CAPT_COND_ASGN'    'ProtKwd'/'UnprotKwd' → 'E_KEYWORD'
// Arithmetic: '+'/'-'/'*'/'/' binary → E_ADD/E_SUB/E_MUL/E_DIV
// Pattern primitives: LEN/BREAK/SPAN/ANY/NOTANY calls → E_LEN/E_BREAK etc.
// Goto tag: ':go' → unconditional,  ':goS' → success,  ':goF' → failure
//   (baked into node tag by Goto pattern; rw_goto_slot just passes t(g) through)
/*====================================================================================================================*/
// rw_tag — rename a beauty.sno expression tag to its IR E_* equivalent.
// Called by rw_expr on every node.  n is the node's child count.
function rw_tag(t, n) {
    if (IDENT(t, 'Id'))        { rw_tag = 'E_VAR';     return; }
    if (IDENT(t, 'Integer'))   { rw_tag = 'E_ILIT';    return; }
    if (IDENT(t, 'String'))    { rw_tag = 'E_QLIT';    return; }
    if (IDENT(t, 'Real'))      { rw_tag = 'E_RLIT';    return; }
    if (IDENT(t, 'ProtKwd'))   { rw_tag = 'E_KEYWORD'; return; }
    if (IDENT(t, 'UnprotKwd')) { rw_tag = 'E_KEYWORD'; return; }
    if (IDENT(t, 'BuiltinVar')){ rw_tag = 'E_VAR';     return; }
    if (IDENT(t, 'SpecialNm')) { rw_tag = 'E_VAR';     return; }
    if (IDENT(t, 'Function'))  { rw_tag = 'E_VAR';     return; }
    if (IDENT(t, '..'))        { rw_tag = 'E_SEQ';     return; }
    if (IDENT(t, '|'))         { rw_tag = 'E_ALT';     return; }
    // capture operators (always binary in Expr12)
    if (IDENT(t, '$')) { rw_tag = 'E_CAPT_IMMED_ASGN'; return; }
    if (IDENT(t, '.')) { rw_tag = 'E_CAPT_COND_ASGN';  return; }
    // arithmetic (binary)
    if (IDENT(t, '+') EQ(n, 2)) { rw_tag = 'E_ADD'; return; }
    if (IDENT(t, '-') EQ(n, 2)) { rw_tag = 'E_SUB'; return; }
    if (IDENT(t, '*') EQ(n, 2)) { rw_tag = 'E_MUL'; return; }
    if (IDENT(t, '/') EQ(n, 2)) { rw_tag = 'E_DIV'; return; }
    if (IDENT(t, '^') EQ(n, 2)) { rw_tag = 'E_POW'; return; }
    // arithmetic (unary)
    if (IDENT(t, '-') EQ(n, 1)) { rw_tag = 'E_MNS'; return; }
    if (IDENT(t, '+') EQ(n, 1)) { rw_tag = 'E_PLS'; return; }
    rw_tag = t;
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// rw_call — rewrite a Call node.  beauty.sno Call shape: ("'Call'" & 2) always
// gives 2 children: c[1]=callee, c[2]=args.  ExprList only wraps when nTop()>1
// (>=2 args); with 1 arg c[2] is the bare arg node; with 0 args the ExprList
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
// rw_expr — recursive tag-rename walk.  Renames tags, recurses into children.
// Also: strips beauty.sno '()' paren wrapper nodes (transparent grouping).
// Arith left-assoc is now handled at parse time via foldop()/FoldOp() in the
// iterative Expr6/Expr8/Expr9/Expr11 ARBNO tiers; no post-parse rotation needed
// for those.  E_CAPT_*_ASGN remain strictly binary (runtime constraint) and
// still need rotation here when beauty.sno builds them right-recursively.
// ExprList is a transparent wrapper (from XList).
function rw_expr(x, t, result, new_t, i, right, rr, rl, xlist, j) {
    if (IDENT(x)) { rw_expr = x; return; }
    t = t(x);
    if (IDENT(t))          { rw_expr = x; return; }   // empty-slot node
    // '()' paren node: transparent wrapper — unwrap the single child
    if (IDENT(t, '()'))    { rw_expr = rw_expr(c(x)[1]); return; }
    if (IDENT(t, 'String')) {
        // beauty.sno captures String WITH surrounding quotes; oracle wants bare inner text
        rw_expr = tree('E_QLIT', SUBSTR(v(x), 2, SIZE(v(x)) - 2));
        return;
    }
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
    // E_IDX: flatten ExprList bracket-group children directly — oracle emits flat children.
    if (IDENT(t, 'E_IDX')) {
        result = Tree('E_IDX', '', 0);
        i = 1;
        while (LE(i, n(x))) {
            if (IDENT(t(c(x)[i]), 'ExprList')) {
                // flatten ExprList children into E_IDX
                xlist = c(x)[i];
                j = 1;
                while (LE(j, n(xlist))) { Append(result, rw_expr(c(xlist)[j])); j = j + 1; }
            } else {
                Append(result, rw_expr(c(x)[i]));
            }
        i = i + 1; }
        rw_expr = result;
        return;
    }
    new_t  = rw_tag(t, n(x));
    // Left-rotation for E_CAPT_*_ASGN: runtime still strictly binary; oracle is left-assoc.
    if (EQ(n(x), 2) DIFFER(new_t, t)) {
        if (IDENT(new_t, 'E_CAPT_IMMED_ASGN') | IDENT(new_t, 'E_CAPT_COND_ASGN')) {
            right = c(x)[2];
            if (EQ(n(right), 2) IDENT(rw_tag(t(right), 2), new_t)) {
                result = Tree(new_t, '', 2, rw_expr(c(x)[1]), rw_expr(c(right)[1]));
                rr = c(right)[2];
                while (EQ(n(rr), 2) IDENT(rw_tag(t(rr), 2), new_t)) {
                    rl = c(rr)[1];
                    result = Tree(new_t, '', 2, result, rw_expr(rl));
                    rr = c(rr)[2];
                }
                result = Tree(new_t, '', 2, result, rw_expr(rr));
                rw_expr = result;
                return;
            }
        }
    }
    result = Tree(new_t, v(x), 0);
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
