// parser_icon.sc — PARSER-IC: Icon pattern-based frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per procedure via TDump.  Byte-identical (whitespace-normalized)
// to scrip's existing Icon frontend --dump-ir output.
//
// Naming: non-terminals from icon-sp.ebnf; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// decompose_proc is the ONE tree-building helper (proc-frame collapse).
/*====================================================================================================================*/
// notmatch(s, pat): succeeds iff s does NOT match pat entirely
function notmatch(s, pat) { notmatch = .dummy; if (s ? pat) freturn; else nreturn; }
/*====================================================================================================================*/
// Whitespace — newlines treated as normal whitespace; semicolons terminate statements.
// white = one whitespace unit: spaces, tabs, newlines, or # line-comments.
// White = one-or-more; Gray = zero-or-more.  No $' ' needed — $' ' handles everywhere.
white        =   (  SPAN(' ' tab nl)
                 |  '#' BREAK(nl) nl
                 );
White        =   white ARBNO(white);
Gray         =   White | epsilon;
$' '         =   Gray;
$'  '        =   White;
/*--------------------------------------------------------------------------------------------------------------------*/
// Token classifiers — PATTERNS mirroring icon_lex.h TK_* names.
// Id: identifier body (used for keyword boundary checking, per parser_snocone.sc style).
Id           = ANY(&UCASE &LCASE '_') FENCE(SPAN(digits &UCASE &LCASE '_') | epsilon);
id_pat       = Id $ tx $ *notmatch(tx, POS(0) ('end' | 'procedure' | 'record' | 'global') RPOS(0));
int_pat      = SPAN(digits);
// Real literal: digits.digits, .digits, or integer with exponent. Dot-capture into rval.
exp_part     = (('e' | 'E') ('+' | '-' | '') SPAN(digits));
real_pat     = (( SPAN(digits) '.' (SPAN(digits) | '') | '.' SPAN(digits) ) (exp_part | '')
               | SPAN(digits) exp_part
               );
// String: capture inner body (without quotes) via dot-capture + push_qlit.
str_pat      = ('"' BREAK('"') . strbody '"');
// Cset: single-quoted, capture inner body via dot-capture + push_cset.
cset_pat     = ("'" BREAK("'") . csetbody "'");
semi_opt     = (';' | epsilon);
/*--------------------------------------------------------------------------------------------------------------------*/
// Keyword tokens — Gray before only; identifier boundary via Id $ tx *IDENT(tx, 'kw').
// Trailing whitespace is supplied by the grammar via $' ' or $'  ' (required for kw-then-expr).
$'if'        =  $' ' Id $ tx *IDENT(tx, 'if')       ;
$'then'      =  $' ' Id $ tx *IDENT(tx, 'then')     ;
$'else'      =  $' ' Id $ tx *IDENT(tx, 'else')     ;
$'while'     =  $' ' Id $ tx *IDENT(tx, 'while')    ;
$'do'        =  $' ' Id $ tx *IDENT(tx, 'do')       ;
$'every'     =  $' ' Id $ tx *IDENT(tx, 'every')    ;
$'return'    =  $' ' Id $ tx *IDENT(tx, 'return')   ;
$'end'       =  $' ' Id $ tx *IDENT(tx, 'end')      ;
$'procedure' =  $' ' Id $ tx *IDENT(tx, 'procedure');
$'until'     =  $' ' Id $ tx *IDENT(tx, 'until')    ;
$'repeat'    =  $' ' Id $ tx *IDENT(tx, 'repeat')   ;
$'break'     =  $' ' Id $ tx *IDENT(tx, 'break')    ;
$'next'      =  $' ' Id $ tx *IDENT(tx, 'next')     ;
$'case'      =  $' ' Id $ tx *IDENT(tx, 'case')     ;
$'of'        =  $' ' Id $ tx *IDENT(tx, 'of')       ;
$'default'   =  $' ' Id $ tx *IDENT(tx, 'default')  ;
$'to'        =  $' ' Id $ tx *IDENT(tx, 'to')       ;
$'by'        =  $' ' Id $ tx *IDENT(tx, 'by')       ;
$'global'    =  $' ' Id $ tx *IDENT(tx, 'global')   ;
$'local'     =  $' ' Id $ tx *IDENT(tx, 'local')    ;
$'static'    =  $' ' Id $ tx *IDENT(tx, 'static')   ;
$'record'    =  $' ' Id $ tx *IDENT(tx, 'record')   ;
$'initial'   =  $' ' Id $ tx *IDENT(tx, 'initial')  ;
$'suspend'   =  $' ' Id $ tx *IDENT(tx, 'suspend')  ;
$'fail'      =  $' ' Id $ tx *IDENT(tx, 'fail')     ;
$'not'       =  $' ' Id $ tx *IDENT(tx, 'not')      ;
/*--------------------------------------------------------------------------------------------------------------------*/
// Bracket tokens — snocone style: open has Gray after only; close has Gray before only.
// Caller provides leading Gray for open via $' ' or by being adjacent to a token that supplies it.
$'('        =   '(' $' ';
$'['        =   '[' $' ';
$'{'        =   $' ' '{' $' ';
$')'        =   $' ' ')';
$']'        =   $' ' ']';
$'}'        =   $' ' '}';
/*--------------------------------------------------------------------------------------------------------------------*/
// Punctuation — Gray both sides.
$','        =   $' ' ','   $' ';
$';'        =   $' ' ';'   $' ';
$':'        =   $' ' ':'   $' ';
$'.'        =   $' ' '.'   $' ';
/*--------------------------------------------------------------------------------------------------------------------*/
// Operators — Gray both sides.  Unary/binary dual-use means Gray (not White).
// Longer-prefix first within each family for grammar alternation correctness.
$'|||'      =   $' ' '|||'   $' ';
$'||'       =   $' ' '||'    $' ';
$'|'        =   $' ' '|'     $' ';
$'++'       =   $' ' '++'    $' ';
$'--'       =   $' ' '--'    $' ';
$'**'       =   $' ' '**'    $' ';
$'+'        =   $' ' '+'     $' ';
$'-'        =   $' ' '-'     $' ';
$'*'        =   $' ' '*'     $' ';
$'/'        =   $' ' '/'     $' ';
$'%'        =   $' ' '%'     $' ';
$'^'        =   $' ' '^'     $' ';
$'?'        =   $' ' '?'     $' ';
$'~'        =   $' ' '~'     $' ';
$'!'        =   $' ' '!'     $' ';
$'&'        =   $' ' '&'     $' ';
$'\\'      =   $' ' '\'     $' ';
/*--------------------------------------------------------------------------------------------------------------------*/
// Comparison/equality — longer prefix first.
$'~==='     =   $' ' '~==='  $' ';
$'~=='      =   $' ' '~=='   $' ';
$'~='       =   $' ' '~='    $' ';
$'==='      =   $' ' '==='   $' ';
$'=='       =   $' ' '=='    $' ';
$'='        =   $' ' '='     $' ';
$'<='       =   $' ' '<='    $' ';
$'>='       =   $' ' '>='    $' ';
$'<<='      =   $' ' '<<='   $' ';
$'<<'       =   $' ' '<<'    $' ';
$'>>='      =   $' ' '>>='   $' ';
$'>>'       =   $' ' '>>'    $' ';
$'<'        =   $' ' '<' @lt_a (ANY('-=<') | epsilon) @lt_b *EQ(lt_a, lt_b) $' ';
$'>'        =   $' ' '>' @gt_a (ANY('=>')  | epsilon) @gt_b *EQ(gt_a, gt_b)  $' ';
/*--------------------------------------------------------------------------------------------------------------------*/
// Assignment, swap, reverse-scan operators.
$':=:'      =   $' ' ':=:'   $' ';
$':='       =   $' ' ':='    $' ';
$'<->'      =   $' ' '<->'   $' ';
$'<-'       =   $' ' '<-'    $' ';
/*--------------------------------------------------------------------------------------------------------------------*/
// Augmented assignment — longer-prefix first.
$'~==:='    =   $' ' '~==:=' $' ';
$'~=:='     =   $' ' '~=:='  $' ';
$'<<=:='    =   $' ' '<<=:=' $' ';
$'<<:='     =   $' ' '<<:='  $' ';
$'>>=:='    =   $' ' '>>=:=' $' ';
$'>>:='     =   $' ' '>>:='  $' ';
$'==:='     =   $' ' '==:='  $' ';
$'<=:='     =   $' ' '<=:='  $' ';
$'>=:='     =   $' ' '>=:='  $' ';
$'<:='      =   $' ' '<:='   $' ';
$'>:='      =   $' ' '>:='   $' ';
$'+:='      =   $' ' '+:='   $' ';
$'-:='      =   $' ' '-:='   $' ';
$'*:='      =   $' ' '*:='   $' ';
$'/:='      =   $' ' '/:='   $' ';
$'%:='      =   $' ' '%:='   $' ';
$'^:='      =   $' ' '^:='   $' ';
$'||:='     =   $' ' '||:='  $' ';
$'++:='     =   $' ' '++:='  $' ';
$'--:='     =   $' ' '--:='  $' ';
$'**:='     =   $' ' '**:='  $' ';
$'?:='      =   $' ' '?:='   $' ';
$'=:='      =   $' ' '=:='   $' ';
/*====================================================================================================================*/
// push_qlit — shift (AST_QLIT body) using dot-captured strbody.
function push_qlit() {
    Push(tree('AST_QLIT', strbody));
    push_qlit = .dummy;
    nreturn;
}
Push_qlit = (epsilon . *push_qlit());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_cset — shift ('AST_CSET' body) using dot-captured csetbody.
function push_cset() {
    Push(tree('AST_CSET', csetbody));
    push_cset = .dummy;
    nreturn;
}
Push_cset = (epsilon . *push_cset());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_flit — shift ('AST_FLIT' val) using dot-captured rval (source text of real literal).
// Store REAL(rval) so exponent forms normalise numerically (1.0e2 → 100.).
// The trailing '.' is stripped by TValue's 'AST_FLIT' branch in tdump.sc at render time
// (positional patterns like RPOS(0) fail inside nreturn functions — see RS-27).
function push_flit(nval) {
    nval = REAL(rval);
    Push(tree('AST_FLIT', nval));
    push_flit = .dummy;
    nreturn;
}
Push_flit = (epsilon . *push_flit());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_kw — shift (AST_VAR &name) for Icon keyword expressions: &pos, &subject, etc.
// The kwname variable holds the identifier part captured by kw_pat.
function push_kw() {
    Push(tree('AST_VAR', '&' kwname));
    push_kw = .dummy;
    nreturn;
}
Push_kw = (epsilon . *push_kw());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_match — =E rewrite: pop inner E from stack, build ('AST_FNC' (AST_VAR match) E).
// Mirrors C frontend parse_unary TK_EQ branch: expr_new('AST_FNC') + push_child x2.
function push_match(inner) {
    inner = Pop();
    Push(Tree('AST_FNC', '', 2, tree('AST_VAR', 'match'), inner));
    push_match = .dummy;
    nreturn;
}
Push_match = (epsilon . *push_match());
// push_field — shift ('AST_FIELD' fieldname lhs) consuming lhs from stack.
function push_field(fname, lhs) {
    fname = v(Pop());
    lhs = Pop();
    Push(Tree('AST_FIELD', fname, 1, lhs));
    push_field = .dummy;
    nreturn;
}
Push_field = (epsilon . *push_field());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_subscript — build ('AST_IDX' lhs idx) consuming top 2 from stack.
function push_subscript(idx, lhs) {
    idx = Pop();
    lhs = Pop();
    Push(Tree('AST_IDX', '', 2, lhs, idx));
    push_subscript = .dummy;
    nreturn;
}
Push_subscript = (epsilon . *push_subscript());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_section — build ('AST_SECTION' lhs lo hi) consuming top 3 from stack.
function push_section(hi, lo, lhs) {
    hi = Pop();
    lo = Pop();
    lhs = Pop();
    Push(Tree('AST_SECTION', '', 3, lhs, lo, hi));
    push_section = .dummy;
    nreturn;
}
Push_section = (epsilon . *push_section());
/*--------------------------------------------------------------------------------------------------------------------*/
// decompose_proc — pop proc-frame children; build (STMT :subj ('AST_FNC' pname ...)).
// pname is read from v(child[1]) — the (AST_VAR pname) shifted by Prochead.
function decompose_proc(n_kids, kids, pname, proc, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    pname = v(kids[1]);
    proc = Tree('AST_FNC', pname, n_kids);
    i = 1;
    while (LE(i, n_kids)) {
        proc = Append(proc, kids[i]);
        i = i + 1;
    }
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, proc)));
    decompose_proc = .dummy;
    nreturn;
}
Decompose_proc = (epsilon . *decompose_proc());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_record — pop nTop() children; first child is (AST_VAR recname); build
// (STMT :subj ('AST_RECORD' recname field1 field2 ...)).
function push_record(n_kids, kids, rname, rec, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    rname = v(kids[1]);
    rec = Tree('AST_RECORD', rname, 0);
    i = 2;
    while (LE(i, n_kids)) {
        rec = Append(rec, kids[i]);
        i = i + 1;
    }
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, rec)));
    push_record = .dummy;
    nreturn;
}
Push_record = (epsilon . *push_record());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_global_top — pop nTop() (AST_VAR ...) children; build (STMT :subj ('AST_GLOBAL' v1 v2 ...)).
function push_global_top(n_kids, kids, g, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    g = Tree('AST_GLOBAL', '', 0);
    i = 1;
    while (LE(i, n_kids)) {
        g = Append(g, kids[i]);
        i = i + 1;
    }
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, g)));
    push_global_top = .dummy;
    nreturn;
}
Push_global_top = (epsilon . *push_global_top());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_local_stmt — pop nTop() (AST_VAR ...) children; build ('AST_GLOBAL' v1 v2 ...) as a plain
// stmt child (not wrapped in STMT — that wrapping is done by Compiland / proc builder).
// Used for local/static decls inside a proc body (they become children of 'AST_FNC' via StmtBody).
function push_local_stmt(n_kids, kids, g, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    g = Tree('AST_GLOBAL', '', 0);
    i = 1;
    while (LE(i, n_kids)) {
        g = Append(g, kids[i]);
        i = i + 1;
    }
    Push(g);
    push_local_stmt = .dummy;
    nreturn;
}
Push_local_stmt = (epsilon . *push_local_stmt());
// Expression tower — canonical names from icon-sp.ebnf.
// Expr11 = primary; tighter -> looser: Expr10 (unary) -> Expr8 (pow) ->
// Expr7 (mul/mod/inter) -> Expr6 (add/union/diff) -> Expr5 (concat) ->
// Expr4 (cmp) -> Expr3 (alt) -> Expr2 (to..by) -> Expr1 (assign) ->
// Expr1a (scan) -> Expr (top).
// Postfix chains (subscript/field/call/section) are handled in Expr11tail.
/*--------------------------------------------------------------------------------------------------------------------*/
If     = ( $'if'     $'  ' *Expr  $'then' $' ' *Expr
           (  $'else' $' ' *Expr  ('AST_IF' & 3)
           |  ('AST_IF' & 2)
           )
         );
While  = ( $'while'  $'  ' *Expr  $'do' $' ' *Expr  ('AST_WHILE'  & 2) );
Until  = ( $'until'  $'  ' *Expr  $'do' $' ' *Expr  ('AST_UNTIL'  & 2) );
Every  = ( $'every'  $'  ' *Expr
           (  $'do' $' ' *Expr  ('AST_EVERY' & 2)
           |  ('AST_EVERY' & 1)
           )
         );
Repeat = ( $'repeat' $' ' *Expr  ('AST_REPEAT' & 1) );
/*--------------------------------------------------------------------------------------------------------------------*/
ArgFirst  = ( $' ' *Expr  nInc() );
ArgRest   = ( $','  *Expr  nInc() );
CallArgs  = ( ArgFirst ARBNO(ArgRest) | epsilon );
Call      = ( nPush()
              $' ' id_pat ~ 'AST_VAR'  nInc()
              $'(' CallArgs $')'
              ('AST_FNC' & 'nTop()')
              nPop()
            );
/*--------------------------------------------------------------------------------------------------------------------*/
SeqRest   = ( $';' *Expr  nInc() );
Paren     = ( nPush()
              $' ' $'(' *Expr  nInc()  ARBNO(SeqRest)  $')'
              ('AST_SEQ_EXPR' & "*(GT(nTop(), 1) nTop())")
              nPop()
            );
/*--------------------------------------------------------------------------------------------------------------------*/
CompoundFirst = ( $' ' *Expr $' ' semi_opt $' ' nInc() );
CompoundRest  = ( $' ' *Expr $' ' semi_opt $' ' nInc() );
Compound      = ( nPush()
                  $'{'
                  ( CompoundFirst ARBNO(CompoundRest) | epsilon )
                  $'}'
                  ('AST_SEQ_EXPR' & "*(GT(nTop(), 1) nTop())")
                  nPop()
                );
/*--------------------------------------------------------------------------------------------------------------------*/
// List constructor [e1, e2, ...] — 'AST_MAKELIST'.
ListFirst = ( $' ' *Expr  nInc() );
ListRest  = ( $','  *Expr  nInc() );
ListCtor  = ( nPush()
              $' ' $'['
              ( ListFirst ARBNO(ListRest) | epsilon )
              $']'
              ('AST_MAKELIST' & 'nTop()')
              nPop()
            );
/*--------------------------------------------------------------------------------------------------------------------*/
// Postfix chains on a primary — subscript, section, field.
// lhs is already on the shift/reduce stack.  Each tail pops lhs (and args),
// builds the result node, pushes it back.  ARBNO in Expr10 drives repetition.
// Section: lhs[lo:hi] → ('AST_SECTION' lhs lo hi) via Push_section (pops 3).
// Subscript: lhs[i]   → ('AST_IDX' lhs i)         via ('AST_IDX' & 2)  (pops 2).
// Field:     lhs.id   → ('AST_FIELD' id lhs)       via Push_field   (pops 2).
/*--------------------------------------------------------------------------------------------------------------------*/
// FieldTail: lhs.ident → ('AST_FIELD' ident lhs).  ident shifted as (AST_VAR id).
FieldTail   = ( $'.' id_pat ~ 'AST_VAR' Push_field );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr11tail: one postfix step on the lhs already on the stack.
Expr11tail  = ( $'[' *Expr
                FENCE( $':' *Expr $']' Push_section
                     | $']'           ('AST_IDX' & 2)
                     )
              | FieldTail
              );
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/
// Case expression: case E of { [val : result ;]* [default : result ;]? }
// Tree: ('AST_CASE' dispatch v1 r1 v2 r2 ... [default_result])
// Pairs are flat children; default result appended last without a value label.
// CaseGray: use ARBNO(white) directly to avoid ALT-in-FENCE bb_alt bug in SCRIP.
CaseGray     = ARBNO(white);
CaseClause   = ( *CaseGray *Expr *CaseGray $':' *Expr *CaseGray semi_opt nInc() nInc() );
CaseDefault  = ( *CaseGray $'default' *CaseGray $':' *Expr *CaseGray semi_opt nInc() );
Case         = ( nPush()
                 $'case' $'  ' *Expr  nInc()
                 $'of' *CaseGray $'{' *CaseGray
                 ARBNO( FENCE(CaseDefault | CaseClause) )
                 *CaseGray $'}'
                 ('AST_CASE' & 'nTop()')
                 nPop()
               );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr11 = (   If  |  Until  |  While  |  Every  |  Repeat  |  Case
         |   $'break' $' '  ('AST_LOOP_BREAK' & 0)
         |   $'next'  $' '  ('AST_LOOP_NEXT'  & 0)
         |   $'fail'  $' '  ('AST_PROC_FAIL'  & 0)
         |   ListCtor
         |   Call  |  Paren  |  Compound
         |   $' ' cset_pat Push_cset
         |   $' ' str_pat  Push_qlit
         |   $' ' real_pat . rval Push_flit
         |   $' ' int_pat ~ 'AST_ILIT'
         |   $' ' '&' id_pat . kwname Push_kw
         |   $' ' id_pat  ~ 'AST_VAR'
         );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr10 = (   $'-'        *Expr10 ('AST_MNS'         & 1)
         |   $'+'        *Expr10 ('AST_PLS'         & 1)
         |   $'~'        *Expr10 ('AST_CSET_COMPL'  & 1)
         |   $'\\'       *Expr10 ('AST_NONNULL'     & 1)
         |   $'!'        *Expr10 ('AST_ITERATE'     & 1)
         |   $'*'        *Expr10 ('AST_SIZE'        & 1)
         |   $'?'        *Expr10 ('AST_RANDOM'      & 1)
         |   $'/'        *Expr10 ('AST_NULL'        & 1)
         |   $'='        *Expr10 Push_match
         |   $'not' $'  ' *Expr10 ('AST_NOT'       & 1)
         |   *Expr11  ARBNO(Expr11tail)
         );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr9: postfix limit E \ N and binary ! E1 ! E2 (left-associative, ARBNO).
Expr9tail = FENCE( $'\\' *Expr10 ('AST_LIMIT'       & 2)
                 | $'!'  *Expr10 ('AST_BANG_BINARY'  & 2)
                 );
Expr9     = ( *Expr10 ARBNO(Expr9tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr8     = ( *Expr9 FENCE($'^' *Expr8 ('AST_POW' & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr7: multiplicative + cset-intersection.  Longer prefix first: ** before *.
Expr7tail = FENCE( $'**' *Expr8 ('AST_CSET_INTER' & 2)
                 | $'*'  *Expr8 ('AST_MUL'        & 2)
                 | $'/'  *Expr8 ('AST_DIV'        & 2)
                 | $'%'  *Expr8 ('AST_MOD'        & 2)
                 );
Expr7     = ( *Expr8 ARBNO(Expr7tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr6: additive + cset-union/diff.  Longer prefix first: ++ before +, -- before -.
Expr6tail = FENCE( $'++' *Expr7 ('AST_CSET_UNION' & 2)
                 | $'--' *Expr7 ('AST_CSET_DIFF'  & 2)
                 | $'+'  *Expr7 ('AST_ADD'        & 2)
                 | $'-'  *Expr7 ('AST_SUB'        & 2)
                 );
Expr6     = ( *Expr7 ARBNO(Expr6tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr5tail = FENCE( $'|||' *Expr6 ('AST_LCONCAT' & 2) | $'||' *Expr6 ('AST_CAT' & 2) );
Expr5     = ( *Expr6 ARBNO(Expr5tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr4: comparison.  Longer-prefix first within each family: === before ==, ~=== before ~==.
Expr4tail = FENCE( $'<<='  *Expr5 ('AST_LLE'      & 2) | $'<<'   *Expr5 ('AST_LLT' & 2)
                 | $'>>='  *Expr5 ('AST_LGE'      & 2) | $'>>'   *Expr5 ('AST_LGT' & 2)
                 | $'~===' *Expr5 ('AST_IDENTICAL' & 2) ('AST_NOT' & 1)
                 | $'~=='  *Expr5 ('AST_LNE'      & 2)
                 | $'==='  *Expr5 ('AST_IDENTICAL' & 2)
                 | $'=='   *Expr5 ('AST_LEQ'      & 2)
                 | $'<='   *Expr5 ('AST_LE'       & 2) | $'>='   *Expr5 ('AST_GE'  & 2)
                 | $'~='   *Expr5 ('AST_NE'       & 2) | $'<'    *Expr5 ('AST_LT'  & 2)
                 | $'>'    *Expr5 ('AST_GT'       & 2) | $'='    *Expr5 ('AST_EQ'  & 2)
                 );
Expr4     = ( *Expr5 ARBNO(Expr4tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
X3        = ( nInc() *Expr4 FENCE($'|' *X3 | epsilon) );
Expr3     = ( nPush() X3 ('AST_ALTERNATE' & "*(GT(nTop(), 1) nTop())") nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr2     = ( *Expr3
              FENCE(  $'to' $'  ' *Expr3
                      FENCE( $'by' $'  ' *Expr3 ('AST_TO_BY' & 3)
                           | ('AST_TO' & 2)
                           )
                   |  epsilon
                   )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1     = ( *Expr2
              FENCE(
                  $'<<=:=' *Expr1 ('AST_AUGOP'  & 2)
              |   $'>>=:=' *Expr1 ('AST_AUGOP'  & 2)
              |   $'~==:=' *Expr1 ('AST_AUGOP'  & 2)
              |   $'<=:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'>=:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'~=:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'==:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'<<:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'>>:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'||:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'++:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'--:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'**:='  *Expr1 ('AST_AUGOP'  & 2)
              |   $'+:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $'-:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $'*:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $'/:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $'%:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $'^:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $'?:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $'=:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $'<:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $'>:='   *Expr1 ('AST_AUGOP'  & 2)
              |   $':=:'   *Expr1 ('AST_SWAP'      & 2)
              |   $'<->'   *Expr1 ('AST_REVSWAP'   & 2)
              |   $'<-'    *Expr1 ('AST_REVASSIGN' & 2)
              |   $':='    *Expr1 ('AST_ASSIGN'    & 2)
              |   epsilon
              )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
// ReturnExpr: return [expr] — valid anywhere an expr is valid (e.g. inside { }).
// Mirrors C frontend parse_expr TK_RETURN branch: 0 children if ; ) EOF then else do follow.
ReturnExpr  = ( nPush()
                $'return' $'  ' *Expr1a nInc()  ('AST_RETURN' & 1) nPop()
              | $'return' $' '                   ('AST_RETURN' & 0)
              );
/*--------------------------------------------------------------------------------------------------------------------*/
// SuspendExpr: suspend expr [do expr] — mirrors C frontend parse_expr TK_SUSPEND branch.
SuspendExpr = ( nPush()
                $'suspend' $'  ' *Expr1a nInc()
                FENCE( $'do' $'  ' *Expr1a nInc() | epsilon )
                ('AST_SUSPEND' & 'nTop()') nPop()
              );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1a    = ( *Expr1 FENCE($'?' *Expr ('AST_SCAN' & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr (top): n-ary conjunction via &.  Single Expr1a -> "*(GT(nTop(), 1) nTop())" unwraps (no 'AST_SEQ' wrapper).
// Mirrors C frontend parse_and / parse_expr: return/suspend/fail/break/next checked first.
ExprSeqRest = ( $'&' *Expr1a nInc() );
Expr        = ( nPush()
                ( ReturnExpr | SuspendExpr
                | *Expr1a
                )
                nInc() ARBNO(ExprSeqRest) ('AST_SEQ' & "*(GT(nTop(), 1) nTop())") nPop()
              );
/*====================================================================================================================*/
Blank     = ( $' ' );
ReturnStmt = ( $'return' $'  ' *Expr $' ' semi_opt $' ' ('AST_RETURN' & 1)
             | $'return' $' '  semi_opt $' '             ('AST_RETURN' & 0)
             );
/*--------------------------------------------------------------------------------------------------------------------*/
// Local/static declaration inside a proc body — both produce 'AST_GLOBAL' node.
// id list: first id then comma-separated rest, then newline.
DeclFirst  = ( $' ' id_pat ~ 'AST_VAR' nInc() );
DeclRest   = ( $','  id_pat ~ 'AST_VAR' nInc() );
DeclIds    = ( DeclFirst ARBNO(DeclRest) );
LocalDecl  = ( nPush() $'local'  $'  ' DeclIds $' ' semi_opt $' ' Push_local_stmt nPop() );
StaticDecl = ( nPush() $'static' $'  ' DeclIds $' ' semi_opt $' ' Push_local_stmt nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
// Initial block inside a proc body — initial { expr } or initial expr.
// 'AST_INITIAL' always has exactly one child (the block/expr).
InitialStmt = ( nPush() $'initial' $' '
                $'{' *Expr nInc() $' ' semi_opt $'}'
                ('AST_INITIAL' & 'nTop()')
                nPop()
              );
/*--------------------------------------------------------------------------------------------------------------------*/
// suspend expr [do body]; → ('AST_SUSPEND' expr [body])   fail; → ('AST_PROC_FAIL')
SuspendStmt = ( nPush() $'suspend' $'  ' *Expr nInc()
                FENCE( $'do' $'  ' *Expr nInc() | epsilon )
                $' ' semi_opt $' '
                ('AST_SUSPEND' & 'nTop()') nPop()
              );
FailStmt    = ( $'fail'    $' '         semi_opt $' '      ('AST_PROC_FAIL' & 0) );
/*--------------------------------------------------------------------------------------------------------------------*/
StmtBody  = ( LocalDecl nInc()
            | StaticDecl nInc()
            | InitialStmt nInc()
            | ReturnStmt nInc()
            | SuspendStmt nInc()
            | FailStmt nInc()
            | $' ' *Expr $' ' semi_opt $' ' nInc()
            );
ParamFirst = ( $' ' id_pat ~ 'AST_VAR'  nInc() );
ParamRest  = ( $',' id_pat ~ 'AST_VAR'  nInc() );
Params     = ( ParamFirst ARBNO(ParamRest) ($'[' $']' | epsilon) | epsilon );
Prochead   = ( $'procedure' $'  ' id_pat ~ 'AST_VAR'  nInc()
               $'(' Params $')' $' '
             );
ProcbodyEnd = ( $'end' $' ' ($' ' | RPOS(0)) );
Procbody    = ( ProcbodyEnd | StmtBody *Procbody );
Proc        = ( nPush()  Prochead  Procbody  Decompose_proc  nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
// Global declaration at top level: global id, id, ... → (STMT :subj ('AST_GLOBAL' v1 v2 ...))
GlobalDecl = ( nPush() $'global' $'  ' DeclIds $' ' semi_opt $' ' Push_global_top nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
// Record declaration at top level: record Name(f1, f2, ...) → (STMT :subj ('AST_RECORD' Name f1 f2 ...))
// Shift name as (AST_VAR Name) first; remaining fields are also (AST_VAR ...).
RecordField = ( $',' id_pat ~ 'AST_VAR' nInc() );
Record      = ( nPush()
                $'record' $'  ' id_pat ~ 'AST_VAR' nInc()
                $'(' ( $' ' id_pat ~ 'AST_VAR' nInc() ARBNO(RecordField) | epsilon ) $')'
                $' '
                Push_record nPop()
              );
/*====================================================================================================================*/
Compiland = ( nPush()
              ARBNO( nInc() $' ' (GlobalDecl | Record | Proc) $' ' )
              ('Parse' & 'nTop()')
              nPop()
            );
/*====================================================================================================================*/
InitCounter();
InitStack();
Src = '';
while (Line = INPUT) Src = Src Line nl ;
if (Src ? Compiland) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            TDump(c(ptree)[i]);
            i = i + 1;
        }
    } else OUTPUT = 'Parse Error';
} else OUTPUT = 'Parse Error';
/*====================================================================================================================*/
