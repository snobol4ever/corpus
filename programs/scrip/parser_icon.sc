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
E_ASSIGN    = "'E_ASSIGN'";   E_SCAN      = "'E_SCAN'";
E_ALTERNATE = "'E_ALTERNATE'";E_AUGOP     = "'E_AUGOP'";
E_ADD       = "'E_ADD'";      E_SUB       = "'E_SUB'";
E_MUL       = "'E_MUL'";      E_DIV       = "'E_DIV'";
E_MOD       = "'E_MOD'";      E_POW       = "'E_POW'";
E_EQ        = "'E_EQ'";       E_NE        = "'E_NE'";
E_LT        = "'E_LT'";       E_LE        = "'E_LE'";
E_GT        = "'E_GT'";       E_GE        = "'E_GE'";
E_LEQ       = "'E_LEQ'";      E_LNE       = "'E_LNE'";
E_LLT       = "'E_LLT'";      E_LLE       = "'E_LLE'";
E_LGT       = "'E_LGT'";      E_LGE       = "'E_LGE'";
E_IF        = "'E_IF'";       E_WHILE     = "'E_WHILE'";
E_UNTIL     = "'E_UNTIL'";    E_REPEAT    = "'E_REPEAT'";
E_EVERY     = "'E_EVERY'";    E_RETURN    = "'E_RETURN'";
E_FNC       = "'E_FNC'";      E_SEQ_EXPR  = "'E_SEQ_EXPR'";
E_MNS       = "'E_MNS'";      E_PLS       = "'E_PLS'";
E_CSET_COMPL= "'E_CSET_COMPL'";E_CSET_UNION= "'E_CSET_UNION'";
E_CSET_DIFF = "'E_CSET_DIFF'"; E_CSET_INTER= "'E_CSET_INTER'";
E_NONNULL   = "'E_NONNULL'";  E_ITERATE   = "'E_ITERATE'";
E_SIZE      = "'E_SIZE'";     E_RANDOM    = "'E_RANDOM'";
E_LIMIT     = "'E_LIMIT'";    E_LCONCAT   = "'E_LCONCAT'";
E_CAT       = "'E_CAT'";      E_MAKELIST  = "'E_MAKELIST'";
E_IDX       = "'E_IDX'";      E_SECTION   = "'E_SECTION'";
E_FIELD     = "'E_FIELD'";    E_LOOP_BREAK= "'E_LOOP_BREAK'";
E_LOOP_NEXT = "'E_LOOP_NEXT'"; E_CSET      = "'E_CSET'";
E_CASE      = "'E_CASE'";      E_GLOBAL    = "'E_GLOBAL'";
E_INITIAL   = "'E_INITIAL'";   E_RECORD    = "'E_RECORD'";
E_SUSPEND   = "'E_SUSPEND'";   E_PROC_FAIL = "'E_PROC_FAIL'";
E_FLIT      = "'E_FLIT'";
E_REVASSIGN = "'E_REVASSIGN'"; E_SWAP      = "'E_SWAP'";
E_REVSWAP   = "'E_REVSWAP'";   E_IDENTICAL = "'E_IDENTICAL'";
E_NOT       = "'E_NOT'";        E_NULL      = "'E_NULL'";
E_BANG_BINARY = "'E_BANG_BINARY'"; E_SEQ     = "'E_SEQ'";
E_TO        = "'E_TO'";        E_TO_BY     = "'E_TO_BY'";
E_Parse     = "'Parse'";
r_nTop      = '*(GT(nTop(), 1) nTop())';
/*====================================================================================================================*/
White        = (  SPAN(' ' tab) FENCE('#' BREAK(nl) | epsilon)
               |  '#' BREAK(nl)
               );
Gray         = White | epsilon;
DGray        = ARBNO(SPAN(' ' tab nl) | '#' BREAK(nl) nl_one);
$' '         = Gray;
$'  '        = White;
nl_one       = ANY(nl);
/*--------------------------------------------------------------------------------------------------------------------*/
// Token classifiers — PATTERNS mirroring icon_lex.h TK_* names.
id_first     = ANY(&UCASE &LCASE '_');
id_rest      = SPAN(digits &UCASE &LCASE '_');
id_pat       = (id_first (id_rest | epsilon));
int_pat      = SPAN(digits);
// Real literal: digits.digits, .digits, or integer with exponent. Dot-capture into rval.
exp_part     = (('e' | 'E') ('+' | '-' | '') SPAN(digits));
real_pat     = (( SPAN(digits) '.' (SPAN(digits) | '') | '.' SPAN(digits) ) (exp_part | '')
               | SPAN(digits) exp_part
               );
// Keyword: & followed by identifier — captured as '&name' for (E_VAR &name) leaf.
kw_prefix    = '&';
// String: capture inner body (without quotes) via dot-capture + push_qlit.
str_pat      = ('"' BREAK('"') . strbody '"');
// Cset: single-quoted, capture inner body via dot-capture + push_cset.
cset_pat     = ("'" BREAK("'") . csetbody "'");
semi_opt     = (';' | epsilon);
/*--------------------------------------------------------------------------------------------------------------------*/
// Keyword tokens — leading optional whitespace only.
$'if'        = $' ' 'if'       ;  $'then'      = $' ' 'then'     ;
$'else'      = $' ' 'else'     ;  $'while'     = $' ' 'while'    ;
$'do'        = $' ' 'do'       ;  $'every'     = $' ' 'every'    ;
$'return'    = $' ' 'return'   ;  $'end'       = $' ' 'end'      ;
$'procedure' = $' ' 'procedure';  $'until'     = $' ' 'until'    ;
$'repeat'    = $' ' 'repeat'   ;  $'break'     = $' ' 'break'    ;
$'next'      = $' ' 'next'     ;  $'case'      = $' ' 'case'     ;
$'of'        = $' ' 'of'       ;  $'default'   = $' ' 'default'  ;
$'to'        = $' ' 'to'       ;  $'by'        = $' ' 'by'       ;
$'global'    = $' ' 'global'   ;  $'local'     = $' ' 'local'    ;
$'static'    = $' ' 'static'   ;  $'record'    = $' ' 'record'   ;
$'initial'   = $' ' 'initial'  ;  $'suspend'   = $' ' 'suspend'  ;
$'fail'      = $' ' 'fail'     ;  $'not'       = $' ' 'not'      ;
/*--------------------------------------------------------------------------------------------------------------------*/
// Operator tokens — optional whitespace both sides.  Open brackets: ws after only.  Close: ws before only.
// Operator tokens — optional whitespace both sides.  Open brackets: ws after only.  Close: ws before only.
// Grammar alternation (longer-prefix first in each tail) handles disambiguation; no token-level lookahead needed.
$'|||' = $' ' '|||' $' ';  $'||'  = $' ' '||'  $' ';  $'|'   = $' ' '|'   $' ';
$'++'  = $' ' '++'  $' ';  $'--'  = $' ' '--'  $' ';  $'**'  = $' ' '**'  $' ';
$'+'   = $' ' '+'   $' ';  $'-'   = $' ' '-'   $' ';
$'*'   = $' ' '*'   $' ';  $'/'   = $' ' '/'   $' ';  $'%'   = $' ' '%'   $' ';
$'^'   = $' ' '^'   $' ';  $'?'   = $' ' '?'   $' ';
$','   = $' ' ','   $' ';  $';'   = $' ' ';'   $' ';  $':='  = $' ' ':='  $' ';
// String comparison and augop tokens — augops defined with explicit literal strings to avoid ambiguity.
$'~==:='= $' ' '~==:=' $' ';  $'~=='  = $' ' '~=='  $' ';
$'~=:=' = $' ' '~=:='  $' ';  $'~='   = $' ' '~='   $' ';  $'~'  = $' ' '~' $' ';
$'<<=:='= $' ' '<<=:=' $' ';  $'<<:=' = $' ' '<<:='  $' ';
$'<<='  = $' ' '<<='  $' ';  $'<<'   = $' ' '<<'   $' ';
$'>>=:='= $' ' '>>=:=' $' ';  $'>>:=' = $' ' '>>:='  $' ';
$'>>='  = $' ' '>>='  $' ';  $'>>'   = $' ' '>>'   $' ';
$'==:=' = $' ' '==:='  $' ';  $'==='  = $' ' '==='  $' ';  $'=='  = $' ' '==' $' ';
$'<=:=' = $' ' '<=:='  $' ';  $'<='   = $' ' '<='   $' ';
$'>=:=' = $' ' '>=:='  $' ';  $'>='   = $' ' '>='   $' ';
$'='    = $' ' '='    $' ';
$'<:='  = $' ' '<:='  $' ';  $'>:='  = $' ' '>:='   $' ';
$'<->'  = $' ' '<->'  $' ';  $'<-'   = $' ' '<-'    $' ';
$'<'    = $' ' '<'    @lt_a (ANY('-=<') | epsilon) @lt_b *EQ(lt_a, lt_b) $' ';
$'>'    = $' ' '>'    @gt_a (ANY('=>')  | epsilon) @gt_b *EQ(gt_a, gt_b);
$':=:'  = $' ' ':=:'  $' ';  $'~===' = $' ' '~==='  $' ';
$'+:='  = $' ' '+:='  $' ';  $'-:='  = $' ' '-:='   $' ';
$'*:='  = $' ' '*:='  $' ';  $'/:='  = $' ' '/:='   $' ';
$'%:='  = $' ' '%:='  $' ';  $'^:='  = $' ' '^:='   $' ';
$'||:=' = $' ' '||:=' $' ';  $'++:=' = $' ' '++:='  $' ';
$'--:=' = $' ' '--:=' $' ';  $'**:=' = $' ' '**:='  $' ';
$'?:='  = $' ' '?:='  $' ';  $'=:='  = $' ' '=:='   $' ';
$'\\'  = $' ' '\'   $' ';   $'!'   = $' ' '!'    $' ';
$'('   = $' ' '(' $' ';  $')'   = $' ' ')';
$'{'   = $' ' '{' $' ';  $'}'   = $' ' '}';
$'['   = $' ' '[' $' ';  $']'   = $' ' ']';
$'.'   = $' ' '.' $' ';   $':'   = $' ' ':'    $' ';
$'&'   = $' ' '&' $' ';
/*====================================================================================================================*/
// push_qlit — shift (E_QLIT body) using dot-captured strbody.
function push_qlit() {
    Push(tree('E_QLIT', strbody));
    push_qlit = .dummy;
    nreturn;
}
Push_qlit = (epsilon . *push_qlit());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_cset — shift (E_CSET body) using dot-captured csetbody.
function push_cset() {
    Push(tree('E_CSET', csetbody));
    push_cset = .dummy;
    nreturn;
}
Push_cset = (epsilon . *push_cset());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_flit — shift (E_FLIT val) using dot-captured rval (source text of real literal).
// Store REAL(rval) so exponent forms normalise numerically (1.0e2 → 100.).
// The trailing '.' is stripped by TValue's E_FLIT branch in tdump.sc at render time
// (positional patterns like RPOS(0) fail inside nreturn functions — see RS-27).
function push_flit(nval) {
    nval = REAL(rval);
    Push(tree('E_FLIT', nval));
    push_flit = .dummy;
    nreturn;
}
Push_flit = (epsilon . *push_flit());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_kw — shift (E_VAR &name) for Icon keyword expressions: &pos, &subject, etc.
// The kwname variable holds the identifier part captured by kw_pat.
function push_kw() {
    Push(tree('E_VAR', '&' kwname));
    push_kw = .dummy;
    nreturn;
}
Push_kw = (epsilon . *push_kw());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_match — =E rewrite: pop inner E from stack, build (E_FNC (E_VAR match) E).
// Mirrors C frontend parse_unary TK_EQ branch: expr_new(E_FNC) + push_child x2.
function push_match(inner) {
    inner = Pop();
    Push(Tree('E_FNC', '', 2, tree('E_VAR', 'match'), inner));
    push_match = .dummy;
    nreturn;
}
Push_match = (epsilon . *push_match());
// push_field — shift (E_FIELD fieldname lhs) consuming lhs from stack.
function push_field(fname, lhs) {
    fname = v(Pop());
    lhs = Pop();
    Push(Tree('E_FIELD', fname, 1, lhs));
    push_field = .dummy;
    nreturn;
}
Push_field = (epsilon . *push_field());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_subscript — build (E_IDX lhs idx) consuming top 2 from stack.
function push_subscript(idx, lhs) {
    idx = Pop();
    lhs = Pop();
    Push(Tree('E_IDX', '', 2, lhs, idx));
    push_subscript = .dummy;
    nreturn;
}
Push_subscript = (epsilon . *push_subscript());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_section — build (E_SECTION lhs lo hi) consuming top 3 from stack.
function push_section(hi, lo, lhs) {
    hi = Pop();
    lo = Pop();
    lhs = Pop();
    Push(Tree('E_SECTION', '', 3, lhs, lo, hi));
    push_section = .dummy;
    nreturn;
}
Push_section = (epsilon . *push_section());
/*--------------------------------------------------------------------------------------------------------------------*/
// decompose_proc — pop proc-frame children; build (STMT :subj (E_FNC pname ...)).
// pname is read from v(child[1]) — the (E_VAR pname) shifted by Prochead.
function decompose_proc(n_kids, kids, pname, proc, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    pname = v(kids[1]);
    proc = Tree('E_FNC', pname, n_kids);
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
// push_record — pop nTop() children; first child is (E_VAR recname); build
// (STMT :subj (E_RECORD recname field1 field2 ...)).
function push_record(n_kids, kids, rname, rec, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    rname = v(kids[1]);
    rec = Tree('E_RECORD', rname, 0);
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
// push_global_top — pop nTop() (E_VAR ...) children; build (STMT :subj (E_GLOBAL v1 v2 ...)).
function push_global_top(n_kids, kids, g, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    g = Tree('E_GLOBAL', '', 0);
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
// push_local_stmt — pop nTop() (E_VAR ...) children; build (E_GLOBAL v1 v2 ...) as a plain
// stmt child (not wrapped in STMT — that wrapping is done by Compiland / proc builder).
// Used for local/static decls inside a proc body (they become children of E_FNC via StmtBody).
function push_local_stmt(n_kids, kids, g, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    g = Tree('E_GLOBAL', '', 0);
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
If     = ( $'if'     $'  ' *Expr  $'then' *DGray *Expr
           (  $'else' *DGray *Expr  (E_IF & 3)
           |  (E_IF & 2)
           )
         );
While  = ( $'while'  $'  ' *Expr  $'do' *DGray *Expr  (E_WHILE  & 2) );
Until  = ( $'until'  $'  ' *Expr  $'do' *DGray *Expr  (E_UNTIL  & 2) );
Every  = ( $'every'  $'  ' *Expr
           (  $'do' *DGray *Expr  (E_EVERY & 2)
           |  (E_EVERY & 1)
           )
         );
Repeat = ( $'repeat' *DGray *Expr  (E_REPEAT & 1) );
/*--------------------------------------------------------------------------------------------------------------------*/
ArgFirst  = ( $' ' *Expr  nInc() );
ArgRest   = ( $','  *Expr  nInc() );
CallArgs  = ( ArgFirst ARBNO(ArgRest) | epsilon );
Call      = ( nPush()
              $' ' id_pat ~ 'E_VAR'  nInc()
              $'(' CallArgs $')'
              (E_FNC & 'nTop()')
              nPop()
            );
/*--------------------------------------------------------------------------------------------------------------------*/
SeqRest   = ( $';' *Expr  nInc() );
Paren     = ( nPush()
              $'(' *Expr  nInc()  ARBNO(SeqRest)  $')'
              (E_SEQ_EXPR & r_nTop)
              nPop()
            );
/*--------------------------------------------------------------------------------------------------------------------*/
CompoundFirst = ( *DGray *Expr $' ' semi_opt *DGray nInc() );
CompoundRest  = ( *DGray *Expr $' ' semi_opt *DGray nInc() );
Compound      = ( nPush()
                  $' ' '{' *DGray
                  ( CompoundFirst ARBNO(CompoundRest) | epsilon )
                  *DGray $' ' '}'
                  (E_SEQ_EXPR & r_nTop)
                  nPop()
                );
/*--------------------------------------------------------------------------------------------------------------------*/
// List constructor [e1, e2, ...] — E_MAKELIST.
ListFirst = ( $' ' *Expr  nInc() );
ListRest  = ( $','  *Expr  nInc() );
ListCtor  = ( nPush()
              $'['
              ( ListFirst ARBNO(ListRest) | epsilon )
              $']'
              (E_MAKELIST & 'nTop()')
              nPop()
            );
/*--------------------------------------------------------------------------------------------------------------------*/
// Postfix chains on a primary — subscript, section, field.
// lhs is already on the shift/reduce stack.  Each tail pops lhs (and args),
// builds the result node, pushes it back.  ARBNO in Expr10 drives repetition.
// Section: lhs[lo:hi] → (E_SECTION lhs lo hi) via Push_section (pops 3).
// Subscript: lhs[i]   → (E_IDX lhs i)         via (E_IDX & 2)  (pops 2).
// Field:     lhs.id   → (E_FIELD id lhs)       via Push_field   (pops 2).
/*--------------------------------------------------------------------------------------------------------------------*/
// FieldTail: lhs.ident → (E_FIELD ident lhs).  ident shifted as (E_VAR id).
FieldTail   = ( $'.' id_pat ~ 'E_VAR' Push_field );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr11tail: one postfix step on the lhs already on the stack.
Expr11tail  = ( $'[' $' ' *Expr $' '
                FENCE( $':' $' ' *Expr $' ' $']' Push_section
                     | $']'                      (E_IDX & 2)
                     )
              | FieldTail
              );
/*--------------------------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------------------------------------------------*/
// Case expression: case E of { [val : result ;]* [default : result ;]? }
// Tree: (E_CASE dispatch v1 r1 v2 r2 ... [default_result])
// Pairs are flat children; default result appended last without a value label.
CaseClause   = ( *DGray *Expr *DGray $':' *Expr *DGray semi_opt nInc() nInc() );
CaseDefault  = ( *DGray $'default' *DGray $':' *Expr *DGray semi_opt nInc() );
Case         = ( nPush()
                 $'case' $'  ' *Expr  nInc()
                 $'of' *DGray '{' *DGray
                 ARBNO( FENCE(CaseDefault | CaseClause) )
                 *DGray '}'
                 (E_CASE & 'nTop()')
                 nPop()
               );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr11 = (   If  |  Until  |  While  |  Every  |  Repeat  |  Case
         |   $'break' $' '  (E_LOOP_BREAK & 0)
         |   $'next'  $' '  (E_LOOP_NEXT  & 0)
         |   $'fail'  $' '  (E_PROC_FAIL  & 0)
         |   ListCtor
         |   Call  |  Paren  |  Compound
         |   $' ' cset_pat Push_cset
         |   $' ' str_pat  Push_qlit
         |   $' ' real_pat . rval Push_flit
         |   $' ' int_pat ~ 'E_ILIT'
         |   $' ' kw_prefix id_pat . kwname Push_kw
         |   $' ' id_pat  ~ 'E_VAR'
         );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr10 = (   $' ' '-'  *Expr10 (E_MNS         & 1)
         |   $' ' '+'  *Expr10 (E_PLS         & 1)
         |   $'~'      *Expr10 (E_CSET_COMPL  & 1)
         |   $'\\'     *Expr10 (E_NONNULL     & 1)
         |   $'!'      *Expr10 (E_ITERATE     & 1)
         |   $' ' '*'  *Expr10 (E_SIZE        & 1)
         |   $' ' '?'  *Expr10 (E_RANDOM      & 1)
         |   $' ' '/'  *Expr10 (E_NULL        & 1)
         |   $' ' '='  *Expr10 Push_match
         |   $'not' $'  ' *Expr10 (E_NOT      & 1)
         |   *Expr11  ARBNO(Expr11tail)
         );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr9: postfix limit E \ N and binary ! E1 ! E2 (left-associative, ARBNO).
Expr9tail = FENCE( $'\\' *Expr10 (E_LIMIT       & 2)
                 | $'!'  *Expr10 (E_BANG_BINARY  & 2)
                 );
Expr9     = ( *Expr10 ARBNO(Expr9tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr8     = ( *Expr9 FENCE($'^' *Expr8 (E_POW & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr7: multiplicative + cset-intersection.  Longer prefix first: ** before *.
Expr7tail = FENCE( $'**' *Expr8 (E_CSET_INTER & 2)
                 | $'*'  *Expr8 (E_MUL        & 2)
                 | $'/'  *Expr8 (E_DIV        & 2)
                 | $'%'  *Expr8 (E_MOD        & 2)
                 );
Expr7     = ( *Expr8 ARBNO(Expr7tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr6: additive + cset-union/diff.  Longer prefix first: ++ before +, -- before -.
Expr6tail = FENCE( $'++' *Expr7 (E_CSET_UNION & 2)
                 | $'--' *Expr7 (E_CSET_DIFF  & 2)
                 | $'+'  *Expr7 (E_ADD        & 2)
                 | $'-'  *Expr7 (E_SUB        & 2)
                 );
Expr6     = ( *Expr7 ARBNO(Expr6tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr5tail = FENCE( $'|||' *Expr6 (E_LCONCAT & 2) | $'||' *Expr6 (E_CAT & 2) );
Expr5     = ( *Expr6 ARBNO(Expr5tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr4: comparison.  Longer-prefix first within each family: === before ==, ~=== before ~==.
Expr4tail = FENCE( $'<<='  *Expr5 (E_LLE      & 2) | $'<<'   *Expr5 (E_LLT & 2)
                 | $'>>='  *Expr5 (E_LGE      & 2) | $'>>'   *Expr5 (E_LGT & 2)
                 | $'~===' *Expr5 (E_IDENTICAL & 2) (E_NOT & 1)
                 | $'~=='  *Expr5 (E_LNE      & 2)
                 | $'==='  *Expr5 (E_IDENTICAL & 2)
                 | $'=='   *Expr5 (E_LEQ      & 2)
                 | $'<='   *Expr5 (E_LE       & 2) | $'>='   *Expr5 (E_GE  & 2)
                 | $'~='   *Expr5 (E_NE       & 2) | $'<'    *Expr5 (E_LT  & 2)
                 | $'>'    *Expr5 (E_GT       & 2) | $'='    *Expr5 (E_EQ  & 2)
                 );
Expr4     = ( *Expr5 ARBNO(Expr4tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
X3        = ( nInc() *Expr4 FENCE($'|' *X3 | epsilon) );
Expr3     = ( nPush() X3 (E_ALTERNATE & r_nTop) nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr2     = ( *Expr3
              FENCE(  $'to' $'  ' *Expr3
                      FENCE( $'by' $'  ' *Expr3 (E_TO_BY & 3)
                           | (E_TO & 2)
                           )
                   |  epsilon
                   )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1     = ( *Expr2
              FENCE(
                  $'<<=:=' *Expr1 (E_AUGOP  & 2)
              |   $'>>=:=' *Expr1 (E_AUGOP  & 2)
              |   $'~==:=' *Expr1 (E_AUGOP  & 2)
              |   $'<=:='  *Expr1 (E_AUGOP  & 2)
              |   $'>=:='  *Expr1 (E_AUGOP  & 2)
              |   $'~=:='  *Expr1 (E_AUGOP  & 2)
              |   $'==:='  *Expr1 (E_AUGOP  & 2)
              |   $'<<:='  *Expr1 (E_AUGOP  & 2)
              |   $'>>:='  *Expr1 (E_AUGOP  & 2)
              |   $'||:='  *Expr1 (E_AUGOP  & 2)
              |   $'++:='  *Expr1 (E_AUGOP  & 2)
              |   $'--:='  *Expr1 (E_AUGOP  & 2)
              |   $'**:='  *Expr1 (E_AUGOP  & 2)
              |   $'+:='   *Expr1 (E_AUGOP  & 2)
              |   $'-:='   *Expr1 (E_AUGOP  & 2)
              |   $'*:='   *Expr1 (E_AUGOP  & 2)
              |   $'/:='   *Expr1 (E_AUGOP  & 2)
              |   $'%:='   *Expr1 (E_AUGOP  & 2)
              |   $'^:='   *Expr1 (E_AUGOP  & 2)
              |   $'?:='   *Expr1 (E_AUGOP  & 2)
              |   $'=:='   *Expr1 (E_AUGOP  & 2)
              |   $'<:='   *Expr1 (E_AUGOP  & 2)
              |   $'>:='   *Expr1 (E_AUGOP  & 2)
              |   $':=:'   *Expr1 (E_SWAP      & 2)
              |   $'<->'   *Expr1 (E_REVSWAP   & 2)
              |   $'<-'    *Expr1 (E_REVASSIGN & 2)
              |   $':='    *Expr1 (E_ASSIGN    & 2)
              |   epsilon
              )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
// ReturnExpr: return [expr] — valid anywhere an expr is valid (e.g. inside { }).
// Mirrors C frontend parse_expr TK_RETURN branch: 0 children if ; ) EOF then else do follow.
ReturnExpr  = ( nPush()
                $'return' $'  ' *Expr1a nInc()  (E_RETURN & 1) nPop()
              | $'return' $' '                   (E_RETURN & 0)
              );
/*--------------------------------------------------------------------------------------------------------------------*/
// SuspendExpr: suspend expr [do expr] — mirrors C frontend parse_expr TK_SUSPEND branch.
SuspendExpr = ( nPush()
                $'suspend' $'  ' *Expr1a nInc()
                FENCE( $'do' $'  ' *Expr1a nInc() | epsilon )
                (E_SUSPEND & 'nTop()') nPop()
              );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1a    = ( *Expr1 FENCE($'?' *Expr (E_SCAN & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expr (top): n-ary conjunction via &.  Single Expr1a -> r_nTop unwraps (no E_SEQ wrapper).
// Mirrors C frontend parse_and / parse_expr: return/suspend/fail/break/next checked first.
ExprSeqRest = ( $'&' *Expr1a nInc() );
Expr        = ( nPush()
                ( ReturnExpr | SuspendExpr
                | *Expr1a
                )
                nInc() ARBNO(ExprSeqRest) (E_SEQ & r_nTop) nPop()
              );
/*====================================================================================================================*/
Blank     = ( $' ' nl_one );
ReturnStmt = ( $'return' $'  ' *Expr $' ' semi_opt $' ' nl_one (E_RETURN & 1)
             | $'return' $' '  semi_opt $' ' nl_one             (E_RETURN & 0)
             );
/*--------------------------------------------------------------------------------------------------------------------*/
// Local/static declaration inside a proc body — both produce E_GLOBAL node.
// id list: first id then comma-separated rest, then newline.
DeclFirst  = ( $' ' id_pat ~ 'E_VAR' nInc() );
DeclRest   = ( $','  id_pat ~ 'E_VAR' nInc() );
DeclIds    = ( DeclFirst ARBNO(DeclRest) );
LocalDecl  = ( nPush() $'local'  $'  ' DeclIds $' ' semi_opt $' ' nl_one Push_local_stmt nPop() );
StaticDecl = ( nPush() $'static' $'  ' DeclIds $' ' semi_opt $' ' nl_one Push_local_stmt nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
// Initial block inside a proc body — initial { expr } or initial expr.
// E_INITIAL always has exactly one child (the block/expr).
InitialStmt = ( nPush() $'initial' *DGray
                $'{' *DGray *Expr nInc() *DGray semi_opt *DGray '}'
                (E_INITIAL & 'nTop()')
                nPop()
              );
/*--------------------------------------------------------------------------------------------------------------------*/
// suspend expr [do body]; → (E_SUSPEND expr [body])   fail; → (E_PROC_FAIL)
SuspendStmt = ( nPush() $'suspend' $'  ' *Expr nInc()
                FENCE( $'do' $'  ' *Expr nInc() | epsilon )
                $' ' semi_opt $' ' nl_one
                (E_SUSPEND & 'nTop()') nPop()
              );
FailStmt    = ( $'fail'    $' '         semi_opt $' ' nl_one      (E_PROC_FAIL & 0) );
/*--------------------------------------------------------------------------------------------------------------------*/
StmtBody  = ( LocalDecl nInc()
            | StaticDecl nInc()
            | InitialStmt nInc()
            | ReturnStmt nInc()
            | SuspendStmt nInc()
            | FailStmt nInc()
            | $' ' *Expr $' ' semi_opt $' ' nl_one nInc()
            | Blank
            );
ParamFirst = ( $' ' id_pat ~ 'E_VAR'  nInc() );
ParamRest  = ( $',' id_pat ~ 'E_VAR'  nInc() );
Params     = ( ParamFirst ARBNO(ParamRest) ($' ' '[' $' ' ']' | epsilon) | epsilon );
Prochead   = ( $'procedure' $'  ' id_pat ~ 'E_VAR'  nInc()
               $'(' Params $')' $' ' nl_one
             );
ProcbodyEnd = ( $'end' $' ' (nl_one | RPOS(0)) );
Procbody    = ( ProcbodyEnd | StmtBody *Procbody );
Proc        = ( nPush()  Prochead  Procbody  Decompose_proc  nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
// Global declaration at top level: global id, id, ... → (STMT :subj (E_GLOBAL v1 v2 ...))
GlobalDecl = ( nPush() $'global' $'  ' DeclIds $' ' semi_opt $' ' nl_one Push_global_top nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
// Record declaration at top level: record Name(f1, f2, ...) → (STMT :subj (E_RECORD Name f1 f2 ...))
// Shift name as (E_VAR Name) first; remaining fields are also (E_VAR ...).
RecordField = ( $',' id_pat ~ 'E_VAR' nInc() );
Record      = ( nPush()
                $'record' $'  ' id_pat ~ 'E_VAR' nInc()
                $'(' ( $' ' id_pat ~ 'E_VAR' nInc() ARBNO(RecordField) | epsilon ) $')'
                $' ' nl_one
                Push_record nPop()
              );
/*====================================================================================================================*/
Compiland = ( nPush()
              ARBNO( nInc() *DGray (GlobalDecl | Record | Proc) *DGray )
              (E_Parse & 'nTop()')
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
