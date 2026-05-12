AST_ASSIGN    = "'AST_ASSIGN'";  AST_SEQ_EXPR = "'AST_SEQ_EXPR'";
AST_ADD       = "'AST_ADD'";      AST_SUB      = "'AST_SUB'";
AST_MUL       = "'AST_MUL'";      AST_DIV      = "'AST_DIV'";
AST_EQ        = "'AST_EQ'";       AST_NE       = "'AST_NE'";
AST_LT        = "'AST_LT'";       AST_LE       = "'AST_LE'";
AST_GT        = "'AST_GT'";       AST_GE       = "'AST_GE'";
AST_IF        = "'AST_IF'";       AST_WHILE    = "'AST_WHILE'";
AST_RETURN    = "'AST_RETURN'";   AST_TO       = "'AST_TO'";
AST_NOT       = "'AST_NOT'";      AST_UNTIL    = "'AST_UNTIL'";
AST_SEQ       = "'AST_SEQ'";      AST_ALT      = "'AST_ALT'";
AST_CAT       = "'AST_CAT'";
AST_LEQ       = "'AST_LEQ'";      AST_LNE      = "'AST_LNE'";
AST_MNS       = "'AST_MNS'";      AST_MOD      = "'AST_MOD'";
AST_CASE      = "'AST_CASE'";     AST_NUL      = "'AST_NUL'";
AST_REPEAT    = "'AST_REPEAT'";
AST_SUSPEND   = "'AST_SUSPEND'";
E_Parse     = "'Parse'";
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
// push_var
function push_var() {
    Push(tree('AST_VAR', capvf capvr));
    push_var = .dummy;
    nreturn;
}
Push_var   = (epsilon . *push_var());
// push_empty
function push_empty() {
    Push(tree('AST_QLIT', ''));
    push_empty = .dummy;
    nreturn;
}
Push_empty = (epsilon . *push_empty());
// push_named_key
function push_named_key() {
    Push(tree('AST_QLIT', capnamedkey));
    push_named_key = .dummy;
    nreturn;
}
Push_named_key = (epsilon . *push_named_key());
// push_param
function push_param() {
    Push(tree('AST_VAR', cappf cappr));
    push_param = .dummy;
    nreturn;
}
Push_param = (epsilon . *push_param());
// push_twigil
function push_twigil(fname, fe) {
    fname = captwf captwr;
    fe = tree('AST_FIELD', fname);
    Append(fe, tree('AST_VAR', 'self'));
    Push(fe);
    push_twigil = .dummy;
    nreturn;
}
Push_twigil = (epsilon . *push_twigil());
// push_has_field
function push_has_field(fname) {
    fname = captwf captwr;
    Push(tree('AST_VAR', fname));
    push_has_field = .dummy;
    nreturn;
}
Push_has_field = (epsilon . *push_has_field());
// push_nul
function push_nul() {
    Push(tree('AST_NUL', ''));
    push_nul = .dummy;
    nreturn;
}
Push_nul = (epsilon . *push_nul());
// push_qlit
function push_qlit() {
    Push(tree('AST_QLIT', capstr));
    push_qlit = .dummy;
    nreturn;
}
Push_qlit  = (epsilon . *push_qlit());
is_chars = &UCASE &LCASE '_';
ir_chars = digits &UCASE &LCASE '_';
// finish_interp_str
function finish_interp_str(raw, lit, isvf, isvr, result, newnode, i) {
    raw    = capstr;
    result = '';
    while (1) {
        if (IDENT(raw)) break;
        lit = ''; isvf = ''; isvr = '';
        if (raw ? (POS(0) BREAK('$') . lit '$' ANY(is_chars) . isvf (SPAN(ir_chars) | epsilon) . isvr) = ) {
            if (DIFFER(lit)) {
                newnode = tree('AST_QLIT', lit);
                if (DIFFER(result)) {
                    i = tree('AST_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                } else { result = newnode; }
            }
            newnode = tree('AST_VAR', isvf isvr);
            if (DIFFER(result)) {
                i = tree('AST_CAT', ''); Append(i, result); Append(i, newnode); result = i;
            } else { result = newnode; }
        } else {
            if (raw ? (POS(0) REM . lit) = ) {
                if (DIFFER(lit)) {
                    newnode = tree('AST_QLIT', lit);
                    if (DIFFER(result)) {
                        i = tree('AST_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                    } else { result = newnode; }
                }
            }
            break;
        }
    }
    if (~DIFFER(result)) result = tree('AST_QLIT', '');
    Push(result);
    finish_interp_str = .dummy;
    nreturn;
}
Push_interp_str = (epsilon . *finish_interp_str());
// dq_unescape
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
// push_rxlit
function push_rxlit() {
    Push(tree('AST_QLIT', caprx));
    push_rxlit = .dummy;
    nreturn;
}
Push_rxlit = (epsilon . *push_rxlit());
// finish_capture
function finish_capture(fn, node) {
    fn   = tree('AST_VAR', 'raku_capture');
    node = tree('AST_FNC', 'raku_capture');
    Append(node, fn);
    Append(node, tree('AST_ILIT', capidx));
    Push(node);
    finish_capture = .dummy;
    nreturn;
}
Finish_capture = (epsilon . *finish_capture());
// set_stdin
function set_stdin()  { capidx = '0'; set_stdin  = .dummy; nreturn; }
// set_stdout
function set_stdout() { capidx = '1'; set_stdout = .dummy; nreturn; }
// set_stderr
function set_stderr() { capidx = '2'; set_stderr = .dummy; nreturn; }
Finish_stdin  = (epsilon . *set_stdin()  Finish_capture);
Finish_stdout = (epsilon . *set_stdout() Finish_capture);
Finish_stderr = (epsilon . *set_stderr() Finish_capture);
// finish_named_capture
function finish_named_capture(fn, node) {
    fn   = tree('AST_VAR', 'raku_named_capture');
    node = tree('AST_FNC', 'raku_named_capture');
    Append(node, fn);
    Append(node, tree('AST_QLIT', capncname));
    Push(node);
    finish_named_capture = .dummy;
    nreturn;
}
Finish_named_capture = (epsilon . *finish_named_capture());
// finish_match_global
function finish_match_global(pat, subj, fn, node) {
    pat  = Pop();
    subj = Pop();
    fn   = tree('AST_VAR', 'raku_match_global');
    node = tree('AST_FNC', 'raku_match_global');
    Append(node, fn);
    Append(node, subj);
    Append(node, pat);
    Push(node);
    finish_match_global = .dummy;
    nreturn;
}
Finish_match_global = (epsilon . *finish_match_global());
// finish_subst
function finish_subst(subj, fn, node, flag, packed) {
    subj   = Pop();
    flag   = IDENT(capflag, 'g') 'g';
    flag   = IDENT(flag) '-';
    packed = cappat CHAR(1) caprepl CHAR(1) flag;
    fn     = tree('AST_VAR', 'raku_subst');
    node   = tree('AST_FNC', 'raku_subst');
    Append(node, fn);
    Append(node, subj);
    Append(node, tree('AST_QLIT', packed));
    Push(node);
    capflag = '';
    finish_subst = .dummy;
    nreturn;
}
Finish_subst = (epsilon . *finish_subst());
// finish_arr_get
function finish_arr_get(idx, arr, fn, node) {
    idx  = Pop();
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'arr_get');
    node = tree('AST_FNC', 'arr_get');
    Append(node, fn);
    Append(node, arr);
    Append(node, idx);
    Push(node);
    finish_arr_get = .dummy;
    nreturn;
}
Finish_arr_get = (epsilon . *finish_arr_get());
// finish_hash_get_angle
function finish_hash_get_angle(arr, fn, node) {
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_get');
    node = tree('AST_FNC', 'hash_get');
    Append(node, fn);
    Append(node, arr);
    Append(node, tree('AST_QLIT', capkey));
    Push(node);
    finish_hash_get_angle = .dummy;
    nreturn;
}
Finish_hash_get_angle = (epsilon . *finish_hash_get_angle());
// finish_hash_get_brace
function finish_hash_get_brace(key, arr, fn, node) {
    key  = Pop();
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_get');
    node = tree('AST_FNC', 'hash_get');
    Append(node, fn);
    Append(node, arr);
    Append(node, key);
    Push(node);
    finish_hash_get_brace = .dummy;
    nreturn;
}
Finish_hash_get_brace = (epsilon . *finish_hash_get_brace());
// finish_hash_exists_angle
function finish_hash_exists_angle(arr, fn, node) {
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_exists');
    node = tree('AST_FNC', 'hash_exists');
    Append(node, fn);
    Append(node, arr);
    Append(node, tree('AST_QLIT', capkey));
    Push(node);
    finish_hash_exists_angle = .dummy;
    nreturn;
}
Finish_hash_exists_angle = (epsilon . *finish_hash_exists_angle());
// finish_hash_exists_brace
function finish_hash_exists_brace(key, arr, fn, node) {
    key  = Pop();
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_exists');
    node = tree('AST_FNC', 'hash_exists');
    Append(node, fn);
    Append(node, arr);
    Append(node, key);
    Push(node);
    finish_hash_exists_brace = .dummy;
    nreturn;
}
Finish_hash_exists_brace = (epsilon . *finish_hash_exists_brace());
// finish_hash_delete_angle
function finish_hash_delete_angle(arr, fn, node) {
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_delete');
    node = tree('AST_FNC', 'hash_delete');
    Append(node, fn);
    Append(node, arr);
    Append(node, tree('AST_QLIT', capkey));
    Push(node);
    finish_hash_delete_angle = .dummy;
    nreturn;
}
Finish_hash_delete_angle = (epsilon . *finish_hash_delete_angle());
// finish_hash_delete_brace
function finish_hash_delete_brace(key, arr, fn, node) {
    key  = Pop();
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_delete');
    node = tree('AST_FNC', 'hash_delete');
    Append(node, fn);
    Append(node, arr);
    Append(node, key);
    Push(node);
    finish_hash_delete_brace = .dummy;
    nreturn;
}
Finish_hash_delete_brace = (epsilon . *finish_hash_delete_brace());
// finish_for_range
function finish_for_range(body, hi, lo, vvar, incr, cond, init, wloop, seq) {
    body = Pop();
    hi   = Pop();
    lo   = Pop();
    vvar = tree('AST_VAR', for_iter);
    incr = tree('AST_ADD', '');
    Append(incr, tree('AST_VAR', for_iter));
    Append(incr, tree('AST_ILIT', '1'));
    Append(body, tree('AST_ASSIGN', ''));
    Append(c(body)[n(body)], tree('AST_VAR', for_iter));
    Append(c(body)[n(body)], incr);
    cond  = tree('AST_LE', '');
    Append(cond, tree('AST_VAR', for_iter));
    Append(cond, hi);
    wloop = tree('AST_WHILE', '');
    Append(wloop, cond);
    Append(wloop, body);
    init = tree('AST_ASSIGN', '');
    Append(init, tree('AST_VAR', for_iter));
    Append(init, lo);
    seq = tree('AST_SEQ_EXPR', '');
    Append(seq, init);
    Append(seq, wloop);
    Push(seq);
    finish_for_range = .dummy;
    nreturn;
}
Finish_for_range = (epsilon . *finish_for_range());
// finish_smartmatch
function finish_smartmatch(pat, subj, fn, node) {
    pat  = Pop();
    subj = Pop();
    fn   = tree('AST_VAR', 'raku_match');
    node = tree('AST_FNC', 'raku_match');
    Append(node, fn);
    Append(node, subj);
    Append(node, pat);
    Push(node);
    finish_smartmatch = .dummy;
    nreturn;
}
Finish_smartmatch = (epsilon . *finish_smartmatch());
// finish_not
function finish_not(inner, node) {
    inner = Pop();
    node  = tree('AST_NOT', '');
    Append(node, inner);
    Push(node);
    finish_not = .dummy;
    nreturn;
}
Finish_not = (epsilon . *finish_not());
// finish_mns
function finish_mns(inner, node) {
    inner = Pop();
    node  = tree('AST_MNS', '');
    Append(node, inner);
    Push(node);
    finish_mns = .dummy;
    nreturn;
}
Finish_mns = (epsilon . *finish_mns());
given_has_def = 0;
// finish_given
function finish_given(n_whens, def_body, kids, ec, i, cmpkind, cmpnode, val, body) {
    n_whens = TopCounter();
    if (EQ(given_has_def, 1)) def_body = Pop();
    kids = GT(n_whens, 0) ARRAY('1:' (n_whens * 2));
    i = n_whens * 2;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    ec = tree('AST_CASE', '');
    Append(ec, Pop());
    i = 1;
    while (LE(i, n_whens)) {
        val  = kids[(i - 1) * 2 + 1];
        body = kids[(i - 1) * 2 + 2];
        if (IDENT(t(val), 'AST_QLIT')) { cmpkind = '73'; } else { cmpkind = '67'; }
        cmpnode = tree('AST_ILIT', cmpkind);
        Append(ec, cmpnode);
        Append(ec, val);
        Append(ec, body);
        i = i + 1;
    }
    if (EQ(given_has_def, 1)) {
        Append(ec, tree('AST_NUL', ''));
        Append(ec, tree('AST_NUL', ''));
        Append(ec, def_body);
    }
    given_has_def = 0;
    Push(ec);
    finish_given = .dummy;
    nreturn;
}
// set_has_def
function set_has_def() { given_has_def = 1; set_has_def = .dummy; nreturn; }
Finish_given = (epsilon . *finish_given());
Set_has_def  = (epsilon . *set_has_def());
// finish_say
function finish_say(arg, fn, node) {
    arg  = Pop();
    fn   = tree('AST_VAR', 'write');
    node = tree('AST_FNC', 'write');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    finish_say = .dummy;
    nreturn;
}
Finish_say   = (epsilon . *finish_say());
// finish_print
function finish_print(arg, fn, node) {
    arg  = Pop();
    fn   = tree('AST_VAR', 'writes');
    node = tree('AST_FNC', 'writes');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    finish_print = .dummy;
    nreturn;
}
Finish_print = (epsilon . *finish_print());
// finish_die
function finish_die(arg, fn, node) {
    arg  = Pop();
    fn   = tree('AST_VAR', 'raku_die');
    node = tree('AST_FNC', 'raku_die');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    finish_die = .dummy;
    nreturn;
}
Finish_die = (epsilon . *finish_die());
// finish_without
function finish_without(blk, cond, fn, node) {
    blk  = Pop();
    cond = Pop();
    fn   = tree('AST_VAR', 'raku_without');
    node = tree('AST_FNC', 'raku_without');
    Append(node, fn);
    Append(node, cond);
    Append(node, blk);
    Push(node);
    finish_without = .dummy;
    nreturn;
}
Finish_without = (epsilon . *finish_without());
// finish_whenever
function finish_whenever(blk, ex, fn, node) {
    blk  = Pop();
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_whenever');
    node = tree('AST_FNC', 'raku_whenever');
    Append(node, fn);
    Append(node, ex);
    Append(node, blk);
    Push(node);
    finish_whenever = .dummy;
    nreturn;
}
Finish_whenever = (epsilon . *finish_whenever());
// finish_loop_inf
function finish_loop_inf(blk, one, node) {
    blk  = Pop();
    one  = tree('AST_ILIT', '1');
    node = tree('AST_WHILE');
    Append(node, one);
    Append(node, blk);
    Push(node);
    finish_loop_inf = .dummy;
    nreturn;
}
Finish_loop_inf = (epsilon . *finish_loop_inf());
// finish_loop_three
function finish_loop_three(blk, step, cond, init, fn, node) {
    blk  = Pop();
    step = Pop();
    cond = Pop();
    init = Pop();
    fn   = tree('AST_VAR', 'raku_loop');
    node = tree('AST_FNC', 'raku_loop');
    Append(node, fn);
    Append(node, init);
    Append(node, cond);
    Append(node, step);
    Append(node, blk);
    Push(node);
    finish_loop_three = .dummy;
    nreturn;
}
Finish_loop_three = (epsilon . *finish_loop_three());
// finish_use
function finish_use(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_use');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_use');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_use = .dummy;
    nreturn;
}
Finish_use = (epsilon . *finish_use());

// finish_no
function finish_no(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_no');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_no');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_no = .dummy;
    nreturn;
}
Finish_no = (epsilon . *finish_no());

// finish_need
function finish_need(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_need');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_need');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_need = .dummy;
    nreturn;
}
Finish_need = (epsilon . *finish_need());

// finish_import
function finish_import(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_import');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_import');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_import = .dummy;
    nreturn;
}
Finish_import = (epsilon . *finish_import());

// finish_require
function finish_require(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_require');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_require');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_require = .dummy;
    nreturn;
}
Finish_require = (epsilon . *finish_require());
// finish_catch_free
function finish_catch_free(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_catch_block');
    node = tree('AST_FNC', 'raku_catch_block');
    Append(node, fn);
    Append(node, blk);
    Push(node);
    finish_catch_free = .dummy;
    nreturn;
}
Finish_catch_free = (epsilon . *finish_catch_free());

// finish_control
function finish_control(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_control_block');
    node = tree('AST_FNC', 'raku_control_block');
    Append(node, fn);
    Append(node, blk);
    Push(node);
    finish_control = .dummy;
    nreturn;
}
Finish_control = (epsilon . *finish_control());

// finish_quit
function finish_quit(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_quit_block');
    node = tree('AST_FNC', 'raku_quit_block');
    Append(node, fn);
    Append(node, blk);
    Push(node);
    finish_quit = .dummy;
    nreturn;
}
Finish_quit = (epsilon . *finish_quit());
// finish_phaser_begin
function finish_phaser_begin(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_BEGIN');
    node = tree('AST_FNC', 'raku_phaser_BEGIN');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_begin = .dummy; nreturn;
}
Finish_phaser_begin = (epsilon . *finish_phaser_begin());

// finish_phaser_end
function finish_phaser_end(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_END');
    node = tree('AST_FNC', 'raku_phaser_END');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_end = .dummy; nreturn;
}
Finish_phaser_end = (epsilon . *finish_phaser_end());

// finish_phaser_init
function finish_phaser_init(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_INIT');
    node = tree('AST_FNC', 'raku_phaser_INIT');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_init = .dummy; nreturn;
}
Finish_phaser_init = (epsilon . *finish_phaser_init());

// finish_phaser_check
function finish_phaser_check(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_CHECK');
    node = tree('AST_FNC', 'raku_phaser_CHECK');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_check = .dummy; nreturn;
}
Finish_phaser_check = (epsilon . *finish_phaser_check());

// finish_phaser_enter
function finish_phaser_enter(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_ENTER');
    node = tree('AST_FNC', 'raku_phaser_ENTER');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_enter = .dummy; nreturn;
}
Finish_phaser_enter = (epsilon . *finish_phaser_enter());

// finish_phaser_leave
function finish_phaser_leave(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_LEAVE');
    node = tree('AST_FNC', 'raku_phaser_LEAVE');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_leave = .dummy; nreturn;
}
Finish_phaser_leave = (epsilon . *finish_phaser_leave());

// finish_phaser_keep
function finish_phaser_keep(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_KEEP');
    node = tree('AST_FNC', 'raku_phaser_KEEP');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_keep = .dummy; nreturn;
}
Finish_phaser_keep = (epsilon . *finish_phaser_keep());

// finish_phaser_undo
function finish_phaser_undo(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_UNDO');
    node = tree('AST_FNC', 'raku_phaser_UNDO');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_undo = .dummy; nreturn;
}
Finish_phaser_undo = (epsilon . *finish_phaser_undo());

// finish_phaser_first
function finish_phaser_first(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_FIRST');
    node = tree('AST_FNC', 'raku_phaser_FIRST');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_first = .dummy; nreturn;
}
Finish_phaser_first = (epsilon . *finish_phaser_first());

// finish_phaser_next
function finish_phaser_next(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_NEXT');
    node = tree('AST_FNC', 'raku_phaser_NEXT');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_next = .dummy; nreturn;
}
Finish_phaser_next = (epsilon . *finish_phaser_next());

// finish_phaser_last
function finish_phaser_last(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_LAST');
    node = tree('AST_FNC', 'raku_phaser_LAST');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_last = .dummy; nreturn;
}
Finish_phaser_last = (epsilon . *finish_phaser_last());

// finish_phaser_pre
function finish_phaser_pre(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_PRE');
    node = tree('AST_FNC', 'raku_phaser_PRE');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_pre = .dummy; nreturn;
}
Finish_phaser_pre = (epsilon . *finish_phaser_pre());

// finish_phaser_post
function finish_phaser_post(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_POST');
    node = tree('AST_FNC', 'raku_phaser_POST');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_post = .dummy; nreturn;
}
Finish_phaser_post = (epsilon . *finish_phaser_post());

// finish_phaser_close
function finish_phaser_close(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_CLOSE');
    node = tree('AST_FNC', 'raku_phaser_CLOSE');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_close = .dummy; nreturn;
}
Finish_phaser_close = (epsilon . *finish_phaser_close());

// finish_phaser_temp
function finish_phaser_temp(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_TEMP');
    node = tree('AST_FNC', 'raku_phaser_TEMP');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_temp = .dummy; nreturn;
}
Finish_phaser_temp = (epsilon . *finish_phaser_temp());

// finish_do_block
function finish_do_block(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_do');
    node = tree('AST_FNC', 'raku_do');
    Append(node, fn); Append(node, blk); Push(node);
    finish_do_block = .dummy; nreturn;
}
Finish_do_block = (epsilon . *finish_do_block());

// finish_once
function finish_once(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_once');
    node = tree('AST_FNC', 'raku_once');
    Append(node, fn); Append(node, blk); Push(node);
    finish_once = .dummy; nreturn;
}
Finish_once = (epsilon . *finish_once());

// finish_start
function finish_start(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_start');
    node = tree('AST_FNC', 'raku_start');
    Append(node, fn); Append(node, blk); Push(node);
    finish_start = .dummy; nreturn;
}
Finish_start = (epsilon . *finish_start());

// finish_supply
function finish_supply(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_supply');
    node = tree('AST_FNC', 'raku_supply');
    Append(node, fn); Append(node, blk); Push(node);
    finish_supply = .dummy; nreturn;
}
Finish_supply = (epsilon . *finish_supply());

// finish_react
function finish_react(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_react');
    node = tree('AST_FNC', 'raku_react');
    Append(node, fn); Append(node, blk); Push(node);
    finish_react = .dummy; nreturn;
}
Finish_react = (epsilon . *finish_react());

// finish_quietly
function finish_quietly(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_quietly');
    node = tree('AST_FNC', 'raku_quietly');
    Append(node, fn); Append(node, blk); Push(node);
    finish_quietly = .dummy; nreturn;
}
Finish_quietly = (epsilon . *finish_quietly());

// finish_race
function finish_race(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_race');
    node = tree('AST_FNC', 'raku_race');
    Append(node, fn); Append(node, ex); Push(node);
    finish_race = .dummy; nreturn;
}
Finish_race = (epsilon . *finish_race());

// finish_hyper
function finish_hyper(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_hyper');
    node = tree('AST_FNC', 'raku_hyper');
    Append(node, fn); Append(node, ex); Push(node);
    finish_hyper = .dummy; nreturn;
}
Finish_hyper = (epsilon . *finish_hyper());

// finish_lazy
function finish_lazy(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_lazy');
    node = tree('AST_FNC', 'raku_lazy');
    Append(node, fn); Append(node, ex); Push(node);
    finish_lazy = .dummy; nreturn;
}
Finish_lazy = (epsilon . *finish_lazy());

// finish_eager
function finish_eager(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_eager');
    node = tree('AST_FNC', 'raku_eager');
    Append(node, fn); Append(node, ex); Push(node);
    finish_eager = .dummy; nreturn;
}
Finish_eager = (epsilon . *finish_eager());

// finish_sink
function finish_sink(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_sink');
    node = tree('AST_FNC', 'raku_sink');
    Append(node, fn); Append(node, ex); Push(node);
    finish_sink = .dummy; nreturn;
}
Finish_sink = (epsilon . *finish_sink());
// parse_closure_expr
function parse_closure_expr(body) {
    body = Pop();
    Push(body);
    parse_closure_expr = .dummy;
    nreturn;
}
ClosureExpr = ( $'{' *Expr $'}' );
// finish_map
function finish_map(lst, clos, fn, node) {
    lst  = Pop();
    clos = Pop();
    fn   = tree('AST_VAR', 'raku_map');
    node = tree('AST_FNC', 'raku_map');
    Append(node, fn);
    Append(node, clos);
    Append(node, lst);
    Push(node);
    finish_map = .dummy;
    nreturn;
}
Finish_map = (epsilon . *finish_map());
// finish_grep
function finish_grep(lst, clos, fn, node) {
    lst  = Pop();
    clos = Pop();
    fn   = tree('AST_VAR', 'raku_grep');
    node = tree('AST_FNC', 'raku_grep');
    Append(node, fn);
    Append(node, clos);
    Append(node, lst);
    Push(node);
    finish_grep = .dummy;
    nreturn;
}
Finish_grep = (epsilon . *finish_grep());
// finish_sort_cl
function finish_sort_cl(lst, clos, fn, node) {
    lst  = Pop();
    clos = Pop();
    fn   = tree('AST_VAR', 'raku_sort');
    node = tree('AST_FNC', 'raku_sort');
    Append(node, fn);
    Append(node, clos);
    Append(node, lst);
    Push(node);
    finish_sort_cl = .dummy;
    nreturn;
}
Finish_sort_cl = (epsilon . *finish_sort_cl());
// finish_sort_nc
function finish_sort_nc(lst, fn, node) {
    lst  = Pop();
    fn   = tree('AST_VAR', 'raku_sort');
    node = tree('AST_FNC', 'raku_sort');
    Append(node, fn);
    Append(node, lst);
    Push(node);
    finish_sort_nc = .dummy;
    nreturn;
}
Finish_sort_nc = (epsilon . *finish_sort_nc());
try_has_catch = 0;
// finish_try
function finish_try(catch_blk, try_blk, fn, node) {
    if (EQ(try_has_catch, 1)) catch_blk = Pop();
    try_blk = Pop();
    fn   = tree('AST_VAR', 'raku_try');
    node = tree('AST_FNC', 'raku_try');
    Append(node, fn);
    Append(node, try_blk);
    if (EQ(try_has_catch, 1)) Append(node, catch_blk);
    try_has_catch = 0;
    Push(node);
    finish_try = .dummy;
    nreturn;
}
// set_has_catch
function set_has_catch() { try_has_catch = 1; set_has_catch = .dummy; nreturn; }
Finish_try   = (epsilon . *finish_try());
Set_has_catch = (epsilon . *set_has_catch());
// store_for_iter
function store_for_iter(vf, vr) {
    for_iter = vf vr;
    store_for_iter = .dummy;
    nreturn;
}
Store_for_iter  = (epsilon . *store_for_iter(capff, capfr));
// finish_for
function finish_for(block, iter_arr, iter_node, node) {
    block     = Pop();
    iter_arr  = Pop();
    iter_node = tree('AST_ITERATE', for_iter);
    Append(iter_node, iter_arr);
    node = tree('AST_EVERY', '');
    Append(node, iter_node);
    Append(node, block);
    Push(node);
    finish_for = .dummy;
    nreturn;
}
Finish_for   = (epsilon . *finish_for());
// finish_method
function finish_method(n_kids, kids, mname, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    mname = capmtf capmtr;
    efnc  = tree('AST_FNC', mname);
    Append(efnc, tree('AST_VAR', mname));
    Append(efnc, tree('AST_VAR', 'self'));
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    Push(efnc);
    finish_method = .dummy;
    nreturn;
}
Finish_method = (epsilon . *finish_method());
// finish_class
function finish_class(n_items, items, cname, rec, item, fname, fullname, efnc, subj, stmt, i) {
    n_items = TopCounter();
    items   = GT(n_items, 0) ARRAY('1:' n_items);
    i = n_items;
    while (GT(i, 0)) {
        items[i] = Pop();
        i = i - 1;
    }
    cname = capclsf capclsr;
    rec = tree('AST_RECORD', cname);
    i = 1;
    while (LE(i, n_items)) {
        item = items[i];
        if (IDENT(t(item), 'AST_FNC')) {
            fullname = cname '__' v(item);
            v(item) = fullname;
            v(c(item)[1]) = fullname;
            subj = tree(':subj', '');
            Append(subj, item);
            stmt = tree('STMT', '');
            Append(stmt, subj);
            sub_list = slink(sub_list, stmt);
        } else {
            Append(rec, item);
        }
        i = i + 1;
    }
    subj = tree(':subj', '');
    Append(subj, rec);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    sub_list = slink(sub_list, stmt);
    finish_class = .dummy;
    nreturn;
}
Finish_class = (epsilon . *finish_class());
// finish_sub
function finish_sub(n_kids, kids, sname, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    sname = capsnf capsnr;
    efnc  = tree('AST_FNC', sname);
    Append(efnc, tree('AST_VAR', sname));
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    subj = tree(':subj', '');
    Append(subj, efnc);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    sub_list = slink(sub_list, stmt);
    finish_sub = .dummy;
    nreturn;
}
Finish_sub   = (epsilon . *finish_sub());
// finish_gather
function finish_gather(n_kids, kids, gname, def_efnc, def_subj, def_stmt, call_efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    gname = '__gather_' gather_seq;
    gather_seq = gather_seq + 1;
    def_efnc = tree('AST_FNC', gname);
    Append(def_efnc, tree('AST_VAR', gname));
    i = 1;
    while (LE(i, n_kids)) {
        Append(def_efnc, kids[i]);
        i = i + 1;
    }
    def_subj = tree(':subj', '');
    Append(def_subj, def_efnc);
    def_stmt = tree('STMT', '');
    Append(def_stmt, def_subj);
    sub_list = slink(sub_list, def_stmt);
    call_efnc = tree('AST_FNC', gname);
    Append(call_efnc, tree('AST_VAR', gname));
    Push(call_efnc);
    finish_gather = .dummy;
    nreturn;
}
Finish_gather = (epsilon . *finish_gather());
// finish_call
function finish_call(n_kids, kids, fname, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    fname = v(kids[1]);
    efnc  = tree('AST_FNC', fname);
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    Push(efnc);
    finish_call = .dummy;
    nreturn;
}
Finish_call  = (epsilon . *finish_call());
// finish_mcall
function finish_mcall(n_args, args, obj, mname, efnc, i) {
    n_args = TopCounter();
    args   = GT(n_args, 0) ARRAY('1:' n_args);
    i = n_args;
    while (GT(i, 0)) {
        args[i] = Pop();
        i = i - 1;
    }
    obj   = Pop();
    mname = capmf capmr;
    efnc  = tree('AST_FNC', 'raku_mcall');
    Append(efnc, tree('AST_VAR', 'raku_mcall'));
    Append(efnc, obj);
    Append(efnc, tree('AST_QLIT', mname));
    i = 1;
    while (LE(i, n_args)) {
        Append(efnc, args[i]);
        i = i + 1;
    }
    Push(efnc);
    finish_mcall = .dummy;
    nreturn;
}
Finish_mcall = (epsilon . *finish_mcall());
// finish_field
function finish_field(obj, mname, ef) {
    obj   = Pop();
    mname = capmf capmr;
    ef    = tree('AST_FIELD', mname);
    Append(ef, obj);
    Push(ef);
    finish_field = .dummy;
    nreturn;
}
Finish_field = (epsilon . *finish_field());
// finish_float
function finish_float(ef) {
    ef = tree('AST_FLIT', capstr);
    Push(ef);
    finish_float = .dummy;
    nreturn;
}
Finish_float = (epsilon . *finish_float());
// finish_arr_set
function finish_arr_set(val, idx, arr, efnc) {
    val  = Pop();
    idx  = Pop();
    arr  = Pop();
    efnc = tree('AST_FNC', 'arr_set');
    Append(efnc, tree('AST_VAR', 'arr_set'));
    Append(efnc, arr);
    Append(efnc, idx);
    Append(efnc, val);
    Push(efnc);
    finish_arr_set = .dummy;
    nreturn;
}
Finish_arr_set = (epsilon . *finish_arr_set());
// finish_hash_set_angle
function finish_hash_set_angle(val, hsh, efnc) {
    val  = Pop();
    hsh  = Pop();
    efnc = tree('AST_FNC', 'hash_set');
    Append(efnc, tree('AST_VAR', 'hash_set'));
    Append(efnc, hsh);
    Append(efnc, tree('AST_QLIT', capkey));
    Append(efnc, val);
    Push(efnc);
    finish_hash_set_angle = .dummy;
    nreturn;
}
Finish_hash_set_angle = (epsilon . *finish_hash_set_angle());
// finish_hash_set_brace
function finish_hash_set_brace(val, key, hsh, efnc) {
    val  = Pop();
    key  = Pop();
    hsh  = Pop();
    efnc = tree('AST_FNC', 'hash_set');
    Append(efnc, tree('AST_VAR', 'hash_set'));
    Append(efnc, hsh);
    Append(efnc, key);
    Append(efnc, val);
    Push(efnc);
    finish_hash_set_brace = .dummy;
    nreturn;
}
Finish_hash_set_brace = (epsilon . *finish_hash_set_brace());
// finish_field_write
function finish_field_write(rhs, obj, ef, asgn) {
    rhs  = Pop();
    obj  = Pop();
    ef   = tree('AST_FIELD', capmf capmr);
    Append(ef, obj);
    asgn = tree('AST_ASSIGN', '');
    Append(asgn, ef);
    Append(asgn, rhs);
    Push(asgn);
    finish_field_write = .dummy;
    nreturn;
}
Finish_field_write = (epsilon . *finish_field_write());
// finish_for_noarrow
function finish_for_noarrow(body, iter, ev, it) {
    body = Pop();
    iter = Pop();
    it   = tree('AST_ITERATE', '');
    Append(it, iter);
    ev   = tree('AST_EVERY', '');
    Append(ev, it);
    Append(ev, body);
    Push(ev);
    finish_for_noarrow = .dummy;
    nreturn;
}
Finish_for_noarrow = (epsilon . *finish_for_noarrow());
// finish_raku_new
function finish_raku_new(n, items, cname, efnc, i) {
    n     = TopCounter();
    items = GT(n, 0) ARRAY('1:' n);
    i = n;
    while (GT(i, 0)) { items[i] = Pop(); i = i - 1; }
    cname = capclsf capclsr;
    efnc  = tree('AST_FNC', 'raku_new');
    Append(efnc, tree('AST_VAR', 'raku_new'));
    Append(efnc, tree('AST_QLIT', cname));
    i = 1;
    while (LE(i, n)) { Append(efnc, items[i]); i = i + 1; }
    Push(efnc);
    finish_raku_new = .dummy;
    nreturn;
}
Finish_raku_new = (epsilon . *finish_raku_new());
// finish_say_fh
function finish_say_fh(str, fh, efnc) {
    str  = Pop();
    fh   = Pop();
    efnc = tree('AST_FNC', 'raku_say_fh');
    Append(efnc, tree('AST_VAR', 'raku_say_fh'));
    Append(efnc, fh);
    Append(efnc, str);
    Push(efnc);
    finish_say_fh = .dummy;
    nreturn;
}
Finish_say_fh = (epsilon . *finish_say_fh());
// finish_print_fh
function finish_print_fh(str, fh, efnc) {
    str  = Pop();
    fh   = Pop();
    efnc = tree('AST_FNC', 'raku_print_fh');
    Append(efnc, tree('AST_VAR', 'raku_print_fh'));
    Append(efnc, fh);
    Append(efnc, str);
    Push(efnc);
    finish_print_fh = .dummy;
    nreturn;
}
Finish_print_fh = (epsilon . *finish_print_fh());
// finish_main
function finish_main(n_kids, kids, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    efnc = tree('AST_FNC', 'main');
    Append(efnc, tree('AST_VAR', 'main'));
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    subj = tree(':subj', '');
    Append(subj, efnc);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    Push(stmt);
    finish_main = .dummy;
    nreturn;
}
Finish_main  = (epsilon . *finish_main());
// flatten_add
function flatten_add(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_ADD') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_ADD', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_add = .dummy;
    nreturn;
}
Flatten_add = (epsilon . *flatten_add());

// flatten_sub
function flatten_sub(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_SUB') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_SUB', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_sub = .dummy;
    nreturn;
}
Flatten_sub = (epsilon . *flatten_sub());

// flatten_mul
function flatten_mul(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_MUL') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_MUL', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_mul = .dummy;
    nreturn;
}
Flatten_mul = (epsilon . *flatten_mul());

// flatten_div
function flatten_div(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_DIV') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_DIV', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_div = .dummy;
    nreturn;
}
Flatten_div = (epsilon . *flatten_div());

// flatten_cat
function flatten_cat(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_CAT') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_CAT', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_cat = .dummy;
    nreturn;
}
Flatten_cat = (epsilon . *flatten_cat());


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
        $')'                 Finish_mcall
        nPop()
      | epsilon              Finish_field
    )
);


Expr11 = ( $'!'  *Expr11  Finish_not
         | ($' ' '-')  *Expr11  Finish_mns
         | $'die' $'  '  *Expr11  Finish_die
         | $'map'  $'  '  ClosureExpr  $'  '  *Expr  Finish_map
         | $'grep' $'  '  ClosureExpr  $'  '  *Expr  Finish_grep
         | $'sort' $'  '  ClosureExpr  $'  '  *Expr  Finish_sort_cl
         | $'sort' $'  '  *Expr                       Finish_sort_nc
         | $'gather' *GatherBlock
         | VarTwigil              Push_twigil
         | VarScalar              Push_var
         | ArrIdxVar  $'['  *Expr  $']'              Finish_arr_get
         | VarArray                                   Push_var
         | HashIdxVar $'<'  HashAngleKey  $'>'        Finish_hash_get_angle
         | HashIdxVar $'{'  *Expr  $'}'               Finish_hash_get_brace
         | VarHash                                    Push_var
         | $'exists' HashIdxVar $'<' HashAngleKey $'>'  Finish_hash_exists_angle
         | $'exists' HashIdxVar $'{' *Expr $'}'         Finish_hash_exists_brace
         | VarStdIn               Finish_stdin
         | VarStdOut              Finish_stdout
         | VarStdErr              Finish_stderr
         | VarCapture             Finish_capture
         | VarNamedCapture        Finish_named_capture
         | ( LitFloat . capstr     Finish_float )
         | shift(LitInt, 'AST_ILIT')
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
             $')'                 Finish_raku_new
             nPop()
           )
         | $'(' *Expr $')'
         | ( nPush()
             shift(CallName, 'AST_VAR')  nInc()
             $'('
             ( *Expr              nInc()
               ARBNO( *CallArgTail )
             | epsilon
             )
             $')'                 Finish_call
             nPop()
           )
         | BareIdent              Push_var
         )
         ARBNO(*MethodTail);

Expr7tail = FENCE( $'*'  *Expr11  Flatten_mul
                 | $'/'  *Expr11  Flatten_div
                 | $'div' *Expr11  Flatten_div
                 | $'%'  *Expr11  (AST_MOD & 2)
                 );
Expr7     = ( Expr11 ARBNO(Expr7tail) );

Expr6tail = FENCE( $'+'  *Expr7  Flatten_add
                 | $'-'  *Expr7  Flatten_sub
                 | $'~'  *Expr7  Flatten_cat
                 );
Expr6     = ( Expr7  ARBNO(Expr6tail) );

Expr5     = ( Expr6
              FENCE( $'..^'  *Expr6  (AST_TO & 2)
                   | $'..'   *Expr6  (AST_TO & 2)
                   | epsilon
                   )
            );

Expr4tail = FENCE( $'=='  *Expr5      (AST_EQ & 2)
                 | $'!='  *Expr5      (AST_NE & 2)
                 | $'<='  *Expr5      (AST_LE & 2)
                 | $'>='  *Expr5      (AST_GE & 2)
                 | $'<'   *Expr5      (AST_LT & 2)
                 | $'>'   *Expr5      (AST_GT & 2)
                 | $'eq'  *Expr5      (AST_LEQ & 2)
                 | $'ne'  *Expr5      (AST_LNE & 2)
                 | $'~~'  LitRegex Push_rxlit  Finish_smartmatch
                 | $'~~'  LitMatchGlobal Push_rxlit  Finish_match_global
                 | $'~~'  LitSubst       Finish_subst
                 );
Expr4     = ( Expr5  ARBNO(Expr4tail) );

Expr3tail = FENCE( $'&&'  *Expr4  (AST_SEQ & 2)
                 | $'||'  *Expr4  (AST_ALT & 2)
                 );
Expr3     = ( Expr4  ARBNO(Expr3tail) );

Expr      = Expr3;
BlockStmt = epsilon;

Block_body = ( *BlockStmt nInc() );

Block = ( $'{'
          nPush()
          ARBNO( Block_body )
          $'}'
          (AST_SEQ_EXPR & 'nTop()')
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
                Finish_gather
                nPop()
              );
IfStmt = ( $'if'  $'(' Expr $')'
           Block
           ( $'elsif'  $'(' Expr $')'  Block
             ( $'else'  Block  (AST_IF & 3) (AST_IF & 3)
             | (AST_IF & 2) (AST_IF & 3)
             )
           | $'else'  Block  (AST_IF & 3)
           | (AST_IF & 2)
           )
         );

WhileStmt = ( $'while'  $'(' Expr $')'
              Block
              (AST_WHILE & 2)
            );

UnlessStmt = ( $'unless'  $'(' Expr $')'
               Finish_not
               Block
               ( $'else'  Block  (AST_IF & 3)
               | (AST_IF & 2)
               )
             );

UntilStmt = ( $'until'  $'(' Expr $')'
              Block
              (AST_UNTIL & 2)
            );

WithoutStmt = ( $'without'  $'(' Expr $')'
                Block
                Finish_without
              );

WheneverStmt = ( $'whenever' $'  ' *Expr Block Finish_whenever );

LoopSubExpr = ( ( VarScalar FENCE $'=' Push_var Expr (AST_ASSIGN & 2) )
              | Expr
              );

LoopThreeStmt = ( $'loop' $'(' LoopSubExpr $';' LoopSubExpr $';' LoopSubExpr $')'
                  Block
                  Finish_loop_three
                );

LoopInfStmt = ( $'loop' Block Finish_loop_inf );

UseStmt     = ( $'use'     $'  ' ModuleName BREAK(';') $';' Finish_use     );
NoStmt      = ( $'no'      $'  ' ModuleName BREAK(';') $';' Finish_no      );
NeedStmt    = ( $'need'    $'  ' ModuleName BREAK(';') $';' Finish_need    );
ImportStmt  = ( $'import'  $'  ' ModuleName BREAK(';') $';' Finish_import  );
RequireStmt = ( $'require' $'  ' ModuleName BREAK(';') $';' Finish_require );

CatchFreeStmt = ( $'CATCH'   Block Finish_catch_free );
ControlStmt   = ( $'CONTROL' Block Finish_control    );
QuitStmt      = ( $'QUIT'    Block Finish_quit       );

BeginStmt   = ( $'BEGIN'   Block Finish_phaser_begin  );
EndStmt     = ( $'END'     Block Finish_phaser_end    );
InitStmt    = ( $'INIT'    Block Finish_phaser_init   );
CheckStmt   = ( $'CHECK'   Block Finish_phaser_check  );
EnterStmt   = ( $'ENTER'   Block Finish_phaser_enter  );
LeaveStmt   = ( $'LEAVE'   Block Finish_phaser_leave  );
KeepStmt    = ( $'KEEP'    Block Finish_phaser_keep   );
UndoStmt    = ( $'UNDO'    Block Finish_phaser_undo   );
FirstStmt   = ( $'FIRST'   Block Finish_phaser_first  );
NextPhStmt  = ( $'NEXT'    Block Finish_phaser_next   );
LastPhStmt  = ( $'LAST'    Block Finish_phaser_last   );
PreStmt     = ( $'PRE'     Block Finish_phaser_pre    );
PostStmt    = ( $'POST'    Block Finish_phaser_post   );
CloseStmt   = ( $'CLOSE'   Block Finish_phaser_close  );
TempStmt    = ( $'TEMP'    Block Finish_phaser_temp   );

DoBlockStmt  = ( $'do'      Block Finish_do_block );
OnceStmt     = ( $'once'    Block Finish_once     );
StartStmt    = ( $'start'   Block Finish_start    );
SupplyStmt   = ( $'supply'  Block Finish_supply   );
ReactStmt    = ( $'react'   Block Finish_react    );
QuietlyStmt  = ( $'quietly' Block Finish_quietly  );

RaceStmt    = ( $'race'  $'  ' *Expr $';' Finish_race  );
HyperStmt   = ( $'hyper' $'  ' *Expr $';' Finish_hyper );
LazyStmt    = ( $'lazy'  $'  ' *Expr $';' Finish_lazy  );
EagerStmt   = ( $'eager' $'  ' *Expr $';' Finish_eager );
SinkStmt    = ( $'sink'  $'  ' *Expr $';' Finish_sink  );

ForeachStmt = ( $'foreach' $'  '  Expr
                $'->'
                ForLoopvar  Store_for_iter
                Block  Finish_for
              );

ForStmt = ( $'for' $'  '  Expr
            $'->'
            ForLoopvar  Store_for_iter
            Block  Finish_for
          );

ForRangeStmt = ( $'for' $'  '
                 Expr6
                 FENCE( $'..^' | $'..' )
                 Expr6
                 $'->'
                 ForLoopvar  Store_for_iter
                 Block  Finish_for_range
               );

DeleteHashAngle = ( $'delete'  HashIdxVar  $'<'  HashAngleKey  $'>'  $';'
                    Finish_hash_delete_angle
                  );

DeleteHashBrace = ( $'delete'  HashIdxVar  $'{'  Expr  $'}'  $';'
                    Finish_hash_delete_brace
                  );

ReturnStmt = ( $'return'
               ( $';'         (AST_RETURN & 0)
               | $'  ' Expr   $';'  (AST_RETURN & 1)
               )
             );

TakeStmt = ( $'take' $'  ' Expr $';' (AST_SUSPEND & 1) );

TypedDeclStmt = ( $'my' $'  '
                  $' ' ident_first (ident_rest | epsilon)
                  $'  '
                  ( ( VarScalar Push_var | VarArray Push_var | VarHash Push_var )
                    $'=' *Expr $';'  (AST_ASSIGN & 2)
                  | ( VarScalar Push_var | VarArray Push_var | VarHash Push_var )
                    $';'             Push_empty  (AST_ASSIGN & 2)
                  )
                );

ReturnBareStmt = ( $'return' $';' (AST_RETURN & 0) );

AssignStmt = ( ($'my' $'  ' | epsilon)
               ( VarScalar  Push_var
               | VarArray   Push_var
               | VarHash    Push_var
               )
               $'='  Expr  $';'  (AST_ASSIGN & 2)
             );

SayStmt = ( $'say'
            Expr  $';'  Finish_say
          );

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
              Finish_given
              nPop()
            );

ArrSetStmt = ( VarArray Push_var $'[' *Expr $']' $'=' *Expr $';'  Finish_arr_set );

HashAngleSetKey = ($' ' BREAK('>') . capkey);
HashSetAngleStmt = ( VarHash Push_var $'<' HashAngleSetKey $'>' $'=' *Expr $';'  Finish_hash_set_angle );

HashSetBraceStmt = ( VarHash Push_var $'{' *Expr $'}' $'=' *Expr $';'  Finish_hash_set_brace );

FieldWriteStmt = ( VarScalar Push_var '.' MethodName $'=' *Expr $';'  Finish_field_write );

SayFhStmt = ( $'say' $'('
              ( VarScalar FENCE $','  Push_var
              | VarStdIn  FENCE $','  Finish_stdin
              | VarStdOut FENCE $','  Finish_stdout
              | VarStdErr FENCE $','  Finish_stderr
              )
              *Expr $')' $';' Finish_say_fh );

PrintFhStmt = ( $'print' $'('
                ( VarScalar FENCE $','  Push_var
                | VarStdIn  FENCE $','  Finish_stdin
                | VarStdOut FENCE $','  Finish_stdout
                | VarStdErr FENCE $','  Finish_stderr
                )
                *Expr $')' $';' Finish_print_fh );

BareStmt = ( Expr $';' );

PrintStmt = ( $'print'
              Expr  $';'  Finish_print
            );

TryStmt = ( $'try'
            Block
            ( $'CATCH'  Block  Set_has_catch
            | epsilon
            )
            Finish_try
          );

RepeatStmt = ( $'repeat' Block (AST_REPEAT & 1) );

ForNoArrowStmt = ( $'for' $'  ' *Expr Block Finish_for_noarrow );

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
            SubBlock  Finish_sub
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
              *SubBlock  Finish_method
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
              Finish_class
              nPop()
            );
Compiland = nPush()
            nPush()
            ARBNO( SubStmt | (*ClassDecl Push_nul nInc()) | (Stmt nInc()) )
            $' '
            Finish_main
            nPop()
            nInc()
            (E_Parse & 1)
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
