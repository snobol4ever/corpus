
E_Parse     = "'Parse'";
/* ==================================================================================================================== */
/* Helper functions inlined from former raku_helpers.sc (deleted 2026-05-18).                                          */
/* push_interp_str and dq_unescape: string processors, no tree child inspection.                                       */
/* finish_* : variable-arity tree builders; cannot be a single reduce() call.                                          */
/* ==================================================================================================================== */
is_chars = &UCASE &LCASE '_';
ir_chars = digits &UCASE &LCASE '_';
bSlash   = '\';
/* ==================================================================================================================== */
function push_interp_str(raw, lit, isvf, isvr, result, newnode, i) {
    raw    = capstr;
    result = '';
    while (1) {
        if (IDENT(raw)) break;
        lit = ''; isvf = ''; isvr = '';
        if (raw ? (POS(0) BREAK('$') . lit '$' ANY(is_chars) . isvf (SPAN(ir_chars) | epsilon) . isvr) = ) {
            if (DIFFER(lit)) {
                newnode = tree('TT_QLIT', lit);
                if (DIFFER(result)) {
                    i = tree('TT_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                } else { result = newnode; }
            }
            newnode = tree('TT_VAR', isvf isvr);
            if (DIFFER(result)) {
                i = tree('TT_CAT', ''); Append(i, result); Append(i, newnode); result = i;
            } else { result = newnode; }
        } else {
            if (raw ? (POS(0) REM . lit) = ) {
                if (DIFFER(lit)) {
                    newnode = tree('TT_QLIT', lit);
                    if (DIFFER(result)) {
                        i = tree('TT_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                    } else { result = newnode; }
                }
            }
            break;
        }
    }
    if (~DIFFER(result)) result = tree('TT_QLIT', '');
    Push(result);
    push_interp_str = .dummy;
    nreturn;
}
Push_interp_str = (epsilon . *push_interp_str());
/* ==================================================================================================================== */
function dq_unescape(raw, result, lit, ch) {
    raw = capstr;
    result = '';
    while (1) {
        if (IDENT(raw)) break;
        if (raw ? (POS(0) BREAK(bSlash) . lit) = ) { result = result lit; }
        if (IDENT(raw)) break;
        if (raw ? (POS(0) bSlash) = ) {
            if (raw ? (POS(0) LEN(1) . ch) = ) {
                if      (IDENT(ch, 'n'))      { result = result nl;     }
                else if (IDENT(ch, 't'))      { result = result tab;    }
                else if (IDENT(ch, bSlash))   { result = result bSlash; }
                else if (IDENT(ch, '"'))      { result = result '"';    }
                else                          { result = result bSlash ch; }
            }
        } else {
            if (raw ? (POS(0) REM . lit) = ) { result = result lit; }
            break;
        }
    }
    capstr = result;
    dq_unescape = .dummy;
    nreturn;
}
Dq_unescape = (epsilon . *dq_unescape());
/* ==================================================================================================================== */
function finish_given(n_whens, def_body, kids, ec, i) {
    n_whens = TopCounter();
    if (EQ(given_has_def, 1)) def_body = Pop();
    kids = GT(n_whens, 0) ARRAY('1:' (n_whens * 2));
    i = n_whens * 2;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    ec = tree('TT_CASE', '');
    Append(ec, Pop());
    i = 1;
    while (LE(i, n_whens)) {
        Append(ec, kids[(i - 1) * 2 + 1]);
        Append(ec, kids[(i - 1) * 2 + 2]);
        i = i + 1;
    }
    if (EQ(given_has_def, 1)) { Append(ec, tree('TT_NUL', '')); Append(ec, def_body); }
    given_has_def = 0;
    Push(ec);
    finish_given = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function finish_sub_body(n_kids, kids, sname, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    sname = capsnf capsnr;
    efnc  = tree('TT_FNC', sname);
    Append(efnc, tree('TT_VAR', sname));
    i = 1;
    while (LE(i, n_kids)) { Append(efnc, kids[i]); i = i + 1; }
    subj = tree(':subj', ''); Append(subj, efnc);
    stmt = tree('STMT', '');  Append(stmt, subj);
    sub_list = slink(sub_list, stmt);
    finish_sub_body = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function finish_method_body(n_kids, kids, mname, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    mname = capmtf capmtr;
    efnc  = tree('TT_FNC', mname);
    Append(efnc, tree('TT_VAR', mname));
    Append(efnc, tree('TT_VAR', 'self'));
    i = 1;
    while (LE(i, n_kids)) { Append(efnc, kids[i]); i = i + 1; }
    Push(efnc);
    finish_method_body = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function finish_class_body(n_items, items, cname, rec, subj, stmt, i) {
    n_items = TopCounter();
    items   = GT(n_items, 0) ARRAY('1:' n_items);
    i = n_items;
    while (GT(i, 0)) { items[i] = Pop(); i = i - 1; }
    cname = capclsf capclsr;
    rec = tree('TT_RECORD', cname);
    i = 1;
    while (LE(i, n_items)) { Append(rec, items[i]); i = i + 1; }
    subj = tree(':subj', ''); Append(subj, rec);
    stmt = tree('STMT', '');  Append(stmt, subj);
    sub_list = slink(sub_list, stmt);
    finish_class_body = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function finish_gather_body(n_kids, kids, gname, def_efnc, def_subj, def_stmt, call_efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    gname = '__gather_' gather_seq;
    gather_seq = gather_seq + 1;
    def_efnc = tree('TT_FNC', gname);
    Append(def_efnc, tree('TT_VAR', gname));
    i = 1;
    while (LE(i, n_kids)) { Append(def_efnc, kids[i]); i = i + 1; }
    def_subj = tree(':subj', ''); Append(def_subj, def_efnc);
    def_stmt = tree('STMT', '');  Append(def_stmt, def_subj);
    sub_list = slink(sub_list, def_stmt);
    call_efnc = tree('TT_FNC', gname);
    Append(call_efnc, tree('TT_VAR', gname));
    Push(call_efnc);
    finish_gather_body = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function finish_call_body(n_kids, kids, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    efnc = tree('TT_FNC', capfnf capfnr);
    i = 1;
    while (LE(i, n_kids)) { Append(efnc, kids[i]); i = i + 1; }
    Push(efnc);
    finish_call_body = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function finish_mcall_body(n_args, args, obj, efnc, i) {
    n_args = TopCounter();
    args   = GT(n_args, 0) ARRAY('1:' n_args);
    i = n_args;
    while (GT(i, 0)) { args[i] = Pop(); i = i - 1; }
    obj  = Pop();
    efnc = tree('TT_FNC', 'raku_mcall');
    Append(efnc, tree('TT_VAR', 'raku_mcall'));
    Append(efnc, obj);
    Append(efnc, tree('TT_QLIT', capmf capmr));
    i = 1;
    while (LE(i, n_args)) { Append(efnc, args[i]); i = i + 1; }
    Push(efnc);
    finish_mcall_body = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function finish_main_body(n_kids, kids, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    efnc = tree('TT_FNC', 'main');
    Append(efnc, tree('TT_VAR', 'main'));
    i = 1;
    while (LE(i, n_kids)) { Append(efnc, kids[i]); i = i + 1; }
    subj = tree(':subj', ''); Append(subj, efnc);
    stmt = tree('STMT', '');  Append(stmt, subj);
    Push(stmt);
    finish_main_body = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function finish_new_body(n, items, cname, efnc, i) {
    n     = TopCounter();
    items = GT(n, 0) ARRAY('1:' n);
    i = n;
    while (GT(i, 0)) { items[i] = Pop(); i = i - 1; }
    cname = capclsf capclsr;
    efnc  = tree('TT_FNC', 'raku_new');
    Append(efnc, tree('TT_VAR', 'raku_new'));
    Append(efnc, tree('TT_QLIT', cname));
    i = 1;
    while (LE(i, n)) { Append(efnc, items[i]); i = i + 1; }
    Push(efnc);
    finish_new_body = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
White       =   (  SPAN(' ' tab nl)  FENCE('#' BREAK(nl) nl | epsilon)
                |  '#' BREAK(nl) nl
                );
Gray        =   White | epsilon;
$'  '       =   White;
$' '        =   Gray;
$'my'     = $' ' 'my'    ;  $'say'    = $' ' 'say'   ;
$'if'     = $' ' 'if'    ;  $'else'   = $' ' 'else'  ;
$'while'  = $' ' 'while' ;  $'for'    = $' ' 'for'   ;
$'sub'    = $' ' 'sub'   ;  $'return' = $' ' 'return';
$'exists' = $' ' 'exists';  $'delete' = $' ' 'delete';
$'unless' = $' ' 'unless';  $'until'  = $' ' 'until';
$'without' = $' ' 'without';
$'whenever' = $' ' 'whenever';
$'foreach' = $' ' 'foreach';
$'loop' = $' ' 'loop';
$'use' = $' ' 'use';
$'no' = $' ' 'no';
$'need' = $' ' 'need';
$'import' = $' ' 'import';
$'require' = $' ' 'require';
$'given'  = $' ' 'given' ;  $'when'   = $' ' 'when'  ;
$'default' = $' ' 'default';
$'print'  = $' ' 'print'  ;  $'die'    = $' ' 'die'    ;
$'try'    = $' ' 'try'    ;  $'CATCH'  = $' ' ('CATCH' | 'catch');
$'CONTROL' = $' ' 'CONTROL';
$'QUIT'    = $' ' 'QUIT';
$'BEGIN'   = $' ' 'BEGIN';   $'END'     = $' ' 'END';
$'INIT'    = $' ' 'INIT';    $'CHECK'   = $' ' 'CHECK';
$'ENTER'   = $' ' 'ENTER';   $'LEAVE'   = $' ' 'LEAVE';
$'KEEP'    = $' ' 'KEEP';    $'UNDO'    = $' ' 'UNDO';
$'FIRST'   = $' ' 'FIRST';   $'NEXT'    = $' ' 'NEXT';
$'LAST'    = $' ' 'LAST';    $'PRE'     = $' ' 'PRE';
$'POST'    = $' ' 'POST';    $'CLOSE'   = $' ' 'CLOSE';
$'TEMP'    = $' ' 'TEMP';
$'do'      = $' ' 'do';      $'once'    = $' ' 'once';
$'start'   = $' ' 'start';   $'supply'  = $' ' 'supply';
$'react'   = $' ' 'react';   $'quietly' = $' ' 'quietly';
$'race'    = $' ' 'race';    $'hyper'   = $' ' 'hyper';
$'lazy'    = $' ' 'lazy';    $'eager'   = $' ' 'eager';
$'sink'    = $' ' 'sink';
$'map'    = $' ' 'map'    ;  $'grep'   = $' ' 'grep'   ;  $'sort'   = $' ' 'sort'   ;
$'gather' = $' ' 'gather' ;  $'take'   = $' ' 'take'   ;
$'elsif'  = $' ' 'elsif'  ;  $'repeat' = $' ' 'repeat' ;
$'class'  = $' ' 'class'  ;  $'method' = $' ' 'method' ;
$'has'    = $' ' 'has'    ;  $'new'    = $' ' 'new'    ;
$'eq'     = $' ' 'eq' $' ';  $'ne'   = $' ' 'ne' $' ';
$'div'    = $' ' 'div' $' ';  $'%'   = $' ' '%'  $' ';
$'->'  = $' ' '->' $' ';  $'=='  = $' ' '==' $' ';
$'!='  = $' ' '!=' $' ';  $'<='  = $' ' '<=' $' ';
$'>='  = $' ' '>=' $' ';  $'='   = $' ' '='  $' ';
$'+'   = $' ' '+'  $' ';  $'-'   = $' ' '-'  $' ';
$'*'   = $' ' '*'  $' ';  $'/'   = $' ' '/'  $' ';
$';'   = $' ' ';'  $' ';  $','   = $' ' ','  $' ';
$'('   = $' ' '(' $' ';  $')'   = $' ' ')';
$'{'   = $' ' '{' $' ';  $'}'   = $' ' '}';
$'<'   = $' ' '<' $' ';  $'>'   = $' ' '>';
$'['   = $' ' '[' $' ';  $']'   = $' ' ']';
$'~~'  = $' ' '~~' $' ';
$'=>'  = $' ' '=>' $' ';
$'..'  = $' ' '..' $' ';  $'..^' = $' ' '..^' $' ';
$'&&'  = $' ' '&&' $' ';  $'||'  = $' ' '||'  $' ';
$'!'   = $' ' '!';        $'~'   = $' ' '~'   $' ';
ident_first = ANY(&UCASE &LCASE '_');
ident_rest  = SPAN(digits &UCASE &LCASE '_');
Ident   = ($' ' ident_first (ident_rest | epsilon));
modname_part  = (ident_first (ident_rest | epsilon));
modname_chain = (modname_part ARBNO('::' modname_part));
modname_ver   = ('v' SPAN(digits) ('.' SPAN(digits &UCASE &LCASE '_') | epsilon));
ModuleName    = ($' ' (modname_chain | modname_ver) . capmodname);
vf    = ANY(&UCASE &LCASE '_');
vr    = SPAN(digits &UCASE &LCASE '_');
vro   = (vr | epsilon);
VarScalar = ($' ' '$' vf . capvf vro . capvr);
VarArray  = ($' ' '@' vf . capvf vro . capvr);
VarHash   = ($' ' '%' vf . capvf vro . capvr);
BareIdent = ($' ' vf . capvf vro . capvr);
twf  = ANY(&UCASE &LCASE '_');
twr  = SPAN(digits &UCASE &LCASE '_');
twro = (twr | epsilon);
VarTwigil = ($' ' ('$.' | '$!') twf . captwf twro . captwr);
clf  = ANY(&UCASE &LCASE '_');
clr  = SPAN(digits &UCASE &LCASE '_');
clro = (clr | epsilon);
ClassName = ($' ' clf . capclsf clro . capclsr);
mtf  = ANY(&UCASE &LCASE '_');
mtr  = SPAN(digits &UCASE &LCASE '_');
mtro = (mtr | epsilon);
MethodIdent = ($' ' mtf . capmtf mtro . capmtr);
LitInt    = ($' ' SPAN(digits));
LitStrDQ  = ($' ' '"' BREAK('"') . capstr '"');
LitStrSQ  = ($' ' "'" BREAK("'") . capstr "'");
LitFloat  = ($' ' SPAN(digits) '.' SPAN(digits));
LitRegex  = ($' ' '/' BREAK('/') . caprx '/');
VarCapture      = ($' ' '$' SPAN(digits) . capidx);
VarStdIn        = ($' ' '$*STDIN');
VarStdOut       = ($' ' '$*STDOUT');
VarStdErr       = ($' ' '$*STDERR');
VarNamedCapture = ($' ' '$<' BREAK('>') . capncname '>');
LitMatchGlobal  = ($' ' 'm:g/' BREAK('/') . caprx '/');
LitSubst        = ($' ' 's/' BREAK('/') . cappat '/'
                             BREAK('/') . caprepl '/'
                             ('g' . capflag | epsilon));
HashAngleKey = (BREAK('>') . capkey);
cnf  = ANY(&UCASE &LCASE '_');
cnr  = SPAN(digits &UCASE &LCASE '_');
cnro = (cnr | epsilon);
ArrIdxVar  = ($' ' '@' cnf . colnmf cnro . colnmr);
HashIdxVar = ($' ' '%' cnf . colnmf cnro . colnmr);
ff   = ANY(&UCASE &LCASE '_');
fr   = SPAN(digits &UCASE &LCASE '_');
fro  = (fr | epsilon);
ForLoopvar = ($' ' '$' ff . capff fro . capfr);
snf  = ANY(&UCASE &LCASE '_');
snr  = SPAN(digits &UCASE &LCASE '_');
snro = (snr | epsilon);
SubName = ($' ' snf . capsnf snro . capsnr);
pf   = ANY(&UCASE &LCASE '_');
pr   = SPAN(digits &UCASE &LCASE '_');
pro  = (pr | epsilon);
SubParam = ($' ' '$' pf . cappf pro . cappr);
fnf  = ANY(&UCASE &LCASE '_');
fnr  = SPAN(digits &UCASE &LCASE '_');
fnro = (fnr | epsilon);
CallName = ($' ' fnf . capfnf fnro . capfnr);
capvf         = '';
capvr         = '';
colnmf    = '';
colnmr    = '';
capstr    = '';
caprx     = '';
capidx    = '';
capncname = '';
cappat    = '';
caprepl   = '';
capflag   = '';
capkey    = '';
capff         = '';
capfr         = '';
for_iter   = '';
capsnf        = '';
capsnr        = '';
cappf         = '';
cappr         = '';
capmf         = '';
capmr         = '';
captype       = '';
capnamedkey   = '';
capnamedval   = '';
capclsf       = '';
capclsr       = '';
capmtf        = '';
capmtr        = '';
captwf        = '';
captwr        = '';
sub_list   = '';
gather_seq = 0;
struct slink { snext, sval }
/* ==================================================================================================================== */
/* PST-allowed leaf constructors: set v.sval from token capture, no child inspection */
/* ==================================================================================================================== */
/* Grammar rules — only shift and reduce from here on */
NamedArgTail = ( $','  $' ' ((ident_first (ident_rest | epsilon)) . capnamedkey) $'=>'  Push_named_key  *Expr  nInc() nInc() );
NewCallName = ($' ' fnf . capclsf fnro . capclsr);
CallArgTail = ( $','  *Expr  nInc() );
McallArgTail = ( $','  *Expr  nInc() );
MethodName = ( fnf . capmf fnro . capmr );
MethodTail = FENCE(
    '.' MethodName
    FENCE(
        '('
        nPush()
        ( *Expr              nInc()
          ARBNO( *McallArgTail )
        | epsilon
        )
        $')'                 (epsilon . *finish_mcall_body())
        nPop()
      | epsilon              Push_mth_qlit reduce('TT_FIELD', 2)
    )
);
Expr11 = ( $'!'  *Expr11  reduce("'TT_NOT'", 1)
         | ($' ' '-')  *Expr11  reduce("'TT_MNS'", 1)
         | $'die' $'  '  Push_fn_raku_die  *Expr11  reduce('TT_FNC', 2)
         | $'map'  $'  '  ClosureExpr  $'  '  *Expr  Push_fn_map   reduce('TT_FNC', 3)
         | $'grep' $'  '  ClosureExpr  $'  '  *Expr  Push_fn_grep  reduce('TT_FNC', 3)
         | $'sort' $'  '  ClosureExpr  $'  '  *Expr  Push_fn_sort  reduce('TT_FNC', 3)
         | $'sort' $'  '  *Expr                       Push_fn_sort  reduce('TT_FNC', 2)
         | $'gather' *GatherBlock
         | VarTwigil              Push_twigil
         | VarScalar              Push_var
         | ArrIdxVar  $'['  *Expr  $']'  Push_fn_arr_get  Push_col_var  reduce('TT_FNC', 3)
         | VarArray                                   Push_var
         | HashIdxVar $'<'  HashAngleKey  $'>'        Push_fn_hash_get  Push_col_var  Push_key_qlit  reduce('TT_FNC', 3)
         | HashIdxVar $'{'  *Expr  $'}'               Push_fn_hash_get  Push_col_var  reduce('TT_FNC', 3)
         | VarHash                                    Push_var
         | $'exists' HashIdxVar $'<' HashAngleKey $'>'  Push_fn_hash_exists  Push_col_var  Push_key_qlit  reduce('TT_FNC', 3)
         | $'exists' HashIdxVar $'{' *Expr $'}'         Push_fn_hash_exists  Push_col_var  reduce('TT_FNC', 3)
         | VarStdIn    Set_stdin   Push_fn_capture  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
         | VarStdOut   Set_stdout  Push_fn_capture  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
         | VarStdErr   Set_stderr  Push_fn_capture  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
         | VarCapture             Push_fn_capture  shift_val(capidx, 'TT_ILIT')   reduce('TT_FNC', 2)
         | VarNamedCapture        Push_fn_ncap     Push_ncname_qlit    reduce('TT_FNC', 2)
         | ( LitFloat . capstr     Push_float )
         | shift(LitInt, 'TT_ILIT')
         | LitStrDQ               Dq_unescape  Push_interp_str
         | LitStrSQ               Push_qlit
         | ( nPush()
             NewCallName
             '.' 'new'
             $'('
             ( $' ' ((ident_first (ident_rest | epsilon)) . capnamedkey) $'=>'  Push_named_key  *Expr  nInc() nInc()
               ARBNO( *NamedArgTail )
             | epsilon
             )
             $')'                 (epsilon . *finish_new_body())
             nPop()
           )
         | $'(' *Expr $')'
         | ( nPush()
             shift(CallName, 'TT_VAR')  nInc()
             $'('
             ( *Expr              nInc()
               ARBNO( *CallArgTail )
             | epsilon
             )
             $')'                 (epsilon . *finish_call_body())
             nPop()
           )
         | BareIdent              Push_var
         )
         ARBNO(*MethodTail);
Expr7tail = FENCE( $'*'  *Expr11  reduce("'TT_MUL'", 2)
                 | $'/'  *Expr11  reduce("'TT_DIV'", 2)
                 | $'div' *Expr11  reduce("'TT_DIV'", 2)
                 | $'%'  *Expr11  reduce("'TT_MOD'", 2)
                 );
Expr7     = ( Expr11 ARBNO(Expr7tail) );
Expr6tail = FENCE( $'+'  *Expr7  reduce("'TT_ADD'", 2)
                 | $'-'  *Expr7  reduce("'TT_SUB'", 2)
                 | $'~'  *Expr7  reduce("'TT_CAT'", 2)
                 );
Expr6     = ( Expr7  ARBNO(Expr6tail) );
Expr5     = ( Expr6
              FENCE( $'..^'  *Expr6  reduce("'TT_TO'", 2)
                   | $'..'   *Expr6  reduce("'TT_TO'", 2)
                   | epsilon
                   )
            );
Expr4tail = FENCE( $'=='  *Expr5      reduce("'TT_EQ'", 2)
                 | $'!='  *Expr5      reduce("'TT_NE'", 2)
                 | $'<='  *Expr5      reduce("'TT_LE'", 2)
                 | $'>='  *Expr5      reduce("'TT_GE'", 2)
                 | $'<'   *Expr5      reduce("'TT_LT'", 2)
                 | $'>'   *Expr5      reduce("'TT_GT'", 2)
                 | $'eq'  *Expr5      reduce("'TT_LEQ'", 2)
                 | $'ne'  *Expr5      reduce("'TT_LNE'", 2)
                 | $'~~'  LitRegex Push_rxlit  Push_fn_match  reduce('TT_FNC', 3)
                 | $'~~'  LitMatchGlobal Push_rxlit  Push_fn_matchg  reduce('TT_FNC', 3)
                 | $'~~'  LitSubst  Push_fn_subst  Push_subst_args  reduce('TT_FNC', 3)
                 );
Expr4     = ( Expr5  ARBNO(Expr4tail) );
Expr3tail = FENCE( $'&&'  *Expr4  reduce("'TT_SEQ'", 2)
                 | $'||'  *Expr4  reduce("'TT_ALT'", 2)
                 );
Expr3     = ( Expr4  ARBNO(Expr3tail) );
Expr      = Expr3;
BlockStmt = epsilon;
Block_body = ( *BlockStmt nInc() );
Block = ( $'{'
          nPush()
          ARBNO( Block_body )
          $'}'
          reduce("'TT_SEQ_EXPR'", 'nTop()')
          nPop()
        );
SubBlockStmt = epsilon;
SubBlock_body = ( *SubBlockStmt nInc() );
SubBlock = ( $'{'
             ARBNO( SubBlock_body )
             $'}'
           );
GatherBlock = ( $'{'
                nPush()
                ARBNO( *SubBlock_body )
                $'}'
                (epsilon . *finish_gather_body())
                nPop()
              );
IfStmt = ( $'if'  $'(' Expr $')'
           Block
           ( $'elsif'  $'(' Expr $')'  Block
             ( $'else'  Block  reduce("'TT_IF'", 3) reduce("'TT_IF'", 3)
             | reduce("'TT_IF'", 2) reduce("'TT_IF'", 3)
             )
           | $'else'  Block  reduce("'TT_IF'", 3)
           | reduce("'TT_IF'", 2)
           )
         );
WhileStmt = ( $'while'  $'(' Expr $')'
              Block
              reduce("'TT_WHILE'", 2)
            );
UnlessStmt = ( $'unless'  $'(' Expr $')'
               reduce("'TT_NOT'", 1)
               Block
               ( $'else'  Block  reduce("'TT_IF'", 3)
               | reduce("'TT_IF'", 2)
               )
             );
UntilStmt = ( $'until'  $'(' Expr $')'
              Block
              reduce("'TT_UNTIL'", 2)
            );
WithoutStmt   = ( $'without'  $'(' Expr $')' Block  Push_fn_without  reduce('TT_FNC', 3) );
WheneverStmt  = ( $'whenever' $'  ' *Expr Block  Push_fn_whenever  reduce('TT_FNC', 3) );
LoopSubExpr = ( ( VarScalar FENCE $'=' Push_var Expr reduce("'TT_ASSIGN'", 2) )
              | Expr
              );
LoopThreeStmt = ( $'loop' $'(' LoopSubExpr $';' LoopSubExpr $';' LoopSubExpr $')'
                  Block
                  Push_fn_loop  reduce('TT_FNC', 5)
                );
LoopInfStmt  = ( $'loop'  Block  shift(POS(0) RPOS(0), 'TT_ILIT')  reduce("'TT_WHILE'", 2) );
UseStmt      = ( $'use'     $'  ' ModuleName BREAK(';') $';'  Push_fn_use     Push_mod_qlit  reduce('TT_FNC', 2) );
NoStmt       = ( $'no'      $'  ' ModuleName BREAK(';') $';'  Push_fn_no      Push_mod_qlit  reduce('TT_FNC', 2) );
NeedStmt     = ( $'need'    $'  ' ModuleName BREAK(';') $';'  Push_fn_need    Push_mod_qlit  reduce('TT_FNC', 2) );
ImportStmt   = ( $'import'  $'  ' ModuleName BREAK(';') $';'  Push_fn_import  Push_mod_qlit  reduce('TT_FNC', 2) );
RequireStmt  = ( $'require' $'  ' ModuleName BREAK(';') $';'  Push_fn_require Push_mod_qlit  reduce('TT_FNC', 2) );
CatchFreeStmt = ( $'CATCH'   Block  Push_fn_catch   reduce('TT_FNC', 2) );
ControlStmt   = ( $'CONTROL' Block  Push_fn_control reduce('TT_FNC', 2) );
QuitStmt      = ( $'QUIT'    Block  Push_fn_quit    reduce('TT_FNC', 2) );
BeginStmt  = ( $'BEGIN'  Block  Push_fn_ph_BEGIN  reduce('TT_FNC', 2) );
EndStmt    = ( $'END'    Block  Push_fn_ph_END    reduce('TT_FNC', 2) );
InitStmt   = ( $'INIT'   Block  Push_fn_ph_INIT   reduce('TT_FNC', 2) );
CheckStmt  = ( $'CHECK'  Block  Push_fn_ph_CHECK  reduce('TT_FNC', 2) );
EnterStmt  = ( $'ENTER'  Block  Push_fn_ph_ENTER  reduce('TT_FNC', 2) );
LeaveStmt  = ( $'LEAVE'  Block  Push_fn_ph_LEAVE  reduce('TT_FNC', 2) );
KeepStmt   = ( $'KEEP'   Block  Push_fn_ph_KEEP   reduce('TT_FNC', 2) );
UndoStmt   = ( $'UNDO'   Block  Push_fn_ph_UNDO   reduce('TT_FNC', 2) );
FirstStmt  = ( $'FIRST'  Block  Push_fn_ph_FIRST  reduce('TT_FNC', 2) );
NextPhStmt = ( $'NEXT'   Block  Push_fn_ph_NEXT   reduce('TT_FNC', 2) );
LastPhStmt = ( $'LAST'   Block  Push_fn_ph_LAST   reduce('TT_FNC', 2) );
PreStmt    = ( $'PRE'    Block  Push_fn_ph_PRE    reduce('TT_FNC', 2) );
PostStmt   = ( $'POST'   Block  Push_fn_ph_POST   reduce('TT_FNC', 2) );
CloseStmt  = ( $'CLOSE'  Block  Push_fn_ph_CLOSE  reduce('TT_FNC', 2) );
TempStmt   = ( $'TEMP'   Block  Push_fn_ph_TEMP   reduce('TT_FNC', 2) );
DoBlockStmt = ( $'do'    Block  Push_fn_do        reduce('TT_FNC', 2) );
OnceStmt    = ( $'once'  Block  Push_fn_once      reduce('TT_FNC', 2) );
StartStmt   = ( $'start' Block  Push_fn_start     reduce('TT_FNC', 2) );
SupplyStmt  = ( $'supply' Block Push_fn_supply    reduce('TT_FNC', 2) );
ReactStmt   = ( $'react'  Block Push_fn_react     reduce('TT_FNC', 2) );
QuietlyStmt = ( $'quietly' Block Push_fn_quietly  reduce('TT_FNC', 2) );
RaceStmt    = ( $'race'  $'  ' *Expr $';'  Push_fn_race   reduce('TT_FNC', 2) );
HyperStmt   = ( $'hyper' $'  ' *Expr $';'  Push_fn_hyper  reduce('TT_FNC', 2) );
LazyStmt    = ( $'lazy'  $'  ' *Expr $';'  Push_fn_lazy   reduce('TT_FNC', 2) );
EagerStmt   = ( $'eager' $'  ' *Expr $';'  Push_fn_eager  reduce('TT_FNC', 2) );
SinkStmt    = ( $'sink'  $'  ' *Expr $';'  Push_fn_sink   reduce('TT_FNC', 2) );
ForeachStmt = ( $'foreach' $'  '  Expr $'->' ForLoopvar  shift_val(capff capfr, 'TT_VAR')  Block
                reduce('TT_ITERATE', 1)  reduce("'TT_EVERY'", 2) );
ForStmt     = ( $'for' $'  '  Expr $'->' ForLoopvar  shift_val(capff capfr, 'TT_VAR')  Block
                reduce('TT_ITERATE', 1)  reduce("'TT_EVERY'", 2) );
ForRangeStmt = ( $'for' $'  '
                 Expr6
                 FENCE( $'..^' | $'..' )
                 Expr6
                 $'->'
                 ForLoopvar  shift_val(capff capfr, 'TT_VAR')
                 Block  reduce("'TT_FOR'", 3)
               );
DeleteHashAngle = ( $'delete'  HashIdxVar  $'<'  HashAngleKey  $'>'  $';'
                    Push_fn_hash_delete  Push_col_var  Push_key_qlit  reduce('TT_FNC', 3)
                  );
DeleteHashBrace = ( $'delete'  HashIdxVar  $'{'  Expr  $'}'  $';'
                    Push_fn_hash_delete  Push_col_var  reduce('TT_FNC', 3)
                  );
ReturnStmt = ( $'return'
               ( $';'         reduce("'TT_RETURN'", 0)
               | $'  ' Expr   $';'  reduce("'TT_RETURN'", 1)
               )
             );
TakeStmt = ( $'take' $'  ' Expr $';' reduce("'TT_SUSPEND'", 1) );
TypedDeclStmt = ( $'my' $'  '
                  $' ' ident_first (ident_rest | epsilon)
                  $'  '
                  ( ( VarScalar Push_var | VarArray Push_var | VarHash Push_var )
                    $'=' *Expr $';'  reduce("'TT_ASSIGN'", 2)
                  | ( VarScalar Push_var | VarArray Push_var | VarHash Push_var )
                    $';'             Push_empty  reduce("'TT_ASSIGN'", 2)
                  )
                );
ReturnBareStmt = ( $'return' $';' reduce("'TT_RETURN'", 0) );
AssignStmt = ( ($'my' $'  ' | epsilon)
               ( VarScalar  Push_var
               | VarArray   Push_var
               | VarHash    Push_var
               )
               $'='  Expr  $';'  reduce("'TT_ASSIGN'", 2)
             );
SayStmt  = ( $'say'  Expr $';'  Push_fn_write   reduce('TT_FNC', 2) );
PrintStmt = ( $'print' Expr $';' Push_fn_writes reduce('TT_FNC', 2) );
WhenClause = ( $'when' $'  '
               Expr
               Block
               nInc()
             );
DefaultClause = ( $'default'
                  Block
                  Set_has_def
                );
GivenStmt = ( $'given' $'  '
              Expr
              nPush()
              $'{'
              ARBNO( *WhenClause )
              (DefaultClause | epsilon)
              $'}'
              (epsilon . *finish_given())
              nPop()
            );
ArrSetStmt = ( VarArray Push_var $'[' *Expr $']' $'=' *Expr $';'
               Push_fn_arr_set  Push_var  reduce('TT_FNC', 4) );
HashAngleSetKey = ($' ' BREAK('>') . capkey);
HashSetAngleStmt = ( VarHash Push_var $'<' HashAngleSetKey $'>' $'=' *Expr $';'
                     Push_fn_hash_set  Push_var  Push_key_qlit  reduce('TT_FNC', 4) );
HashSetBraceStmt = ( VarHash Push_var $'{' *Expr $'}' $'=' *Expr $';'
                     Push_fn_hash_set  Push_var  reduce('TT_FNC', 4) );
FieldWriteStmt = ( VarScalar Push_var '.' MethodName $'=' *Expr $';'
                   Push_mth_qlit  reduce('TT_FIELD', 2)
                   reduce("'TT_ASSIGN'", 2) );
FhVar = ( VarScalar FENCE $','  Push_var
        | VarStdIn  FENCE $','  Set_stdin  Push_fn_capture  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
        | VarStdOut FENCE $','  Set_stdout Push_fn_capture  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
        | VarStdErr FENCE $','  Set_stderr Push_fn_capture  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
        );
SayFhStmt   = ( $'say'   $'(' FhVar *Expr $')' $';'  Push_fn_say_fh   reduce('TT_FNC', 3) );
PrintFhStmt = ( $'print' $'(' FhVar *Expr $')' $';'  Push_fn_print_fh reduce('TT_FNC', 3) );
BareStmt = ( Expr $';' );
TryStmt = ( $'try'
            Block
            ( $'CATCH'  Block  Set_has_catch
            | epsilon
            )
            Push_fn_try
            ( EQ(try_has_catch, 1) reduce('TT_FNC', 3)
            | reduce('TT_FNC', 2)
            )
          );
RepeatStmt = ( $'repeat' Block reduce("'TT_REPEAT'", 1) );
ForNoArrowStmt = ( $'for' $'  ' *Expr Block
                   reduce('TT_ITERATE', 1)  reduce("'TT_EVERY'", 2) );
Stmt = ( GivenStmt
       | TryStmt
       | CatchFreeStmt
       | ControlStmt
       | QuitStmt
       | IfStmt
       | WhileStmt
       | UnlessStmt
       | WithoutStmt
       | WheneverStmt
       | UntilStmt
       | RepeatStmt
       | LoopThreeStmt
       | LoopInfStmt
       | UseStmt
       | NoStmt
       | NeedStmt
       | ImportStmt
       | RequireStmt
       | ForeachStmt
       | ForRangeStmt
       | ForNoArrowStmt
       | ForStmt
       | DeleteHashAngle
       | DeleteHashBrace
       | ArrSetStmt
       | HashSetAngleStmt
       | HashSetBraceStmt
       | FieldWriteStmt
       | SayFhStmt
       | PrintFhStmt
       | TypedDeclStmt
       | ReturnBareStmt
       | ReturnStmt
       | TakeStmt
       | AssignStmt
       | SayStmt
       | PrintStmt
       | BareStmt
       | BeginStmt
       | EndStmt
       | InitStmt
       | CheckStmt
       | EnterStmt
       | LeaveStmt
       | KeepStmt
       | UndoStmt
       | FirstStmt
       | NextPhStmt
       | LastPhStmt
       | PreStmt
       | PostStmt
       | CloseStmt
       | TempStmt
       | DoBlockStmt
       | OnceStmt
       | StartStmt
       | SupplyStmt
       | ReactStmt
       | QuietlyStmt
       | RaceStmt
       | HyperStmt
       | LazyStmt
       | EagerStmt
       | SinkStmt
       );
BlockStmt = ( GivenStmt | TryStmt | CatchFreeStmt | ControlStmt | QuitStmt | IfStmt | WhileStmt | UnlessStmt | WithoutStmt | WheneverStmt | UntilStmt | RepeatStmt | LoopThreeStmt | LoopInfStmt | UseStmt | NoStmt | NeedStmt | ImportStmt | RequireStmt | ForeachStmt | ForRangeStmt | ForNoArrowStmt | ForStmt | DeleteHashAngle | DeleteHashBrace | ArrSetStmt | HashSetAngleStmt | HashSetBraceStmt | FieldWriteStmt | SayFhStmt | PrintFhStmt | TypedDeclStmt | ReturnBareStmt | ReturnStmt | TakeStmt | AssignStmt | SayStmt | PrintStmt | BareStmt | BeginStmt | EndStmt | InitStmt | CheckStmt | EnterStmt | LeaveStmt | KeepStmt | UndoStmt | FirstStmt | NextPhStmt | LastPhStmt | PreStmt | PostStmt | CloseStmt | TempStmt | DoBlockStmt | OnceStmt | StartStmt | SupplyStmt | ReactStmt | QuietlyStmt | RaceStmt | HyperStmt | LazyStmt | EagerStmt | SinkStmt );
SubBlockStmt = ( GivenStmt | TryStmt | CatchFreeStmt | ControlStmt | QuitStmt | IfStmt | WhileStmt | UnlessStmt | WithoutStmt | WheneverStmt | UntilStmt | RepeatStmt | LoopThreeStmt | LoopInfStmt | UseStmt | NoStmt | NeedStmt | ImportStmt | RequireStmt | ForeachStmt | ForRangeStmt | ForNoArrowStmt | ForStmt | DeleteHashAngle | DeleteHashBrace | ArrSetStmt | HashSetAngleStmt | HashSetBraceStmt | FieldWriteStmt | SayFhStmt | PrintFhStmt | TypedDeclStmt | ReturnBareStmt | ReturnStmt | TakeStmt | AssignStmt | SayStmt | PrintStmt | BareStmt | BeginStmt | EndStmt | InitStmt | CheckStmt | EnterStmt | LeaveStmt | KeepStmt | UndoStmt | FirstStmt | NextPhStmt | LastPhStmt | PreStmt | PostStmt | CloseStmt | TempStmt | DoBlockStmt | OnceStmt | StartStmt | SupplyStmt | ReactStmt | QuietlyStmt | RaceStmt | HyperStmt | LazyStmt | EagerStmt | SinkStmt );
SubParamTail = ( $','
                 SubParam  Push_param  nInc()
               );
SubParams = ( SubParam  Push_param  nInc()
              ARBNO( SubParamTail )
            | epsilon
            );
SubStmt = ( $'sub' $'  '
            SubName
            nPush()
            $'(' SubParams $')'
            SubBlock  (epsilon . *finish_sub_body())
            nPop()
          );
HasDeclTwigil  = ( VarTwigil  Push_has_field );
HasDeclScalar  = ( VarScalar  Push_var       );
HasDecl = ( $'has' $'  '
            ( HasDeclTwigil | HasDeclScalar )
            $';'
            nInc()
          );
MethodParamTail = ( $','
                    SubParam  Push_param  nInc()
                  );
MethodParams = ( SubParam  Push_param  nInc()
                 ARBNO( MethodParamTail )
               | epsilon
               );
MethodDef = ( $'method' $'  '
              MethodIdent
              nPush()
              $'(' *MethodParams $')'
              *SubBlock  (epsilon . *finish_method_body())
              nPop()
              nInc()
            );
ClassBodyItem = ( HasDecl | MethodDef );
ClassDecl = ( $'class' $'  '
              ClassName
              $'{'
              nPush()
              ARBNO( *ClassBodyItem )
              $'}'
              (epsilon . *finish_class_body())
              nPop()
            );
ClosureExpr = ( $'{' *Expr $'}' );
Compiland = nPush()
            nPush()
            POS(0) ARBNO( SubStmt | (*ClassDecl Push_nul nInc()) | (Stmt nInc()) )
            $' '
            RPOS(0)
            (epsilon . *finish_main_body())
            nPop()
            nInc()
            (reduce(E_Parse, 1))
            nPop();
InitCounter();
InitStack();
Src = '';
while ((Line = INPUT)) Src = Src Line nl;
if (Src ? Compiland) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        sub_rev = '';
        sl = sub_list;
        while (DIFFER(sl)) {
            sub_rev = slink(sub_rev, sval(sl));
            sl = snext(sl);
        }
        sl = sub_rev;
        while (DIFFER(sl)) {
            TDump(sval(sl));
            sl = snext(sl);
        }
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            main_stmt = c(ptree)[i];
            subj_node = c(main_stmt)[1];
            efnc_node = c(subj_node)[1];
            if (GT(n(efnc_node), 1)) TDump(main_stmt);
            i = i + 1;
        }
    }
}
parser_done = '';
