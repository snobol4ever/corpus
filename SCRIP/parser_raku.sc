
E_Parse     = "'Parse'";
/* ==================================================================================================================== */
/* PST-clean functions in this file (PRF-S7, 2026-05-18):
 *   dq_unescape        — pure string processor: applies \n/\t/\"/\\ escapes on capstr.
 *   dq_unescape only — push_interp_leaves eliminated; DQ strings emitted as single
 *                        TT_QLIT leaf; lower handles interpolation.
 *   All other helpers eliminated: class-a stubs inlined as shift_val/assign;
 *   class-b stubs (emit_to_sub_list, push_stmt_subj) eliminated: replaced by nPop+nInc
 *   pattern — sub/class/gather TT_FNC/TT_RECORD nodes placed directly in TT_PROGRAM.
 * ==================================================================================================================== */
bSlash   = '\';
/* ==================================================================================================================== */
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
/* push_interp_leaves eliminated (PRF-S7, 2026-05-18): DQ string emitted as
 * single TT_QLIT leaf; lower handles $var interpolation expansion. */
/* ==================================================================================================================== */
/* PRF-8 (2026-05-18): finish_given eliminated. WhenClause/DefaultClause inline pushes
 * (val, body) pairs via nInc()×2. GivenStmt uses reduce('TT_CASE','nTop()+1') with
 * topic pushed before nPush. cmpkind moved to lower.c (derived from val->t). */
/* ==================================================================================================================== */



/* ==================================================================================================================== */
/* PRF-9 (2026-05-18): finish_gather_body eliminated. GatherBlock inlines two reduce
 * pairs: one for def TT_FNC (def placed on outer counter via nPop+nInc),
 * one for call TT_FNC (stays on parse stack as gather-expr). Set_gather_name fountains '__gather_N'. */
/* ==================================================================================================================== */
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
gather_seq = 0;
struct slink { snext, sval }
/* ==================================================================================================================== */
/* PST-allowed leaf constructors: set v.sval from token capture, no child inspection */
/* ==================================================================================================================== */
/* Grammar rules — only shift and reduce from here on */
NamedArgTail = ( $','  $' ' ((ident_first (ident_rest | epsilon)) . capnamedkey) $'=>'  shift_val(capnamedkey, 'TT_QLIT')  *Expr  nInc() nInc() );
NewCallName = ($' ' fnf . capclsf fnro . capclsr);
CallArgTail = ( $','  *Expr  nInc() );
McallArgTail = ( $','  *Expr  nInc() );
MethodName = ( fnf . capmf fnro . capmr );
MethodTail = FENCE(
    '.' MethodName
    FENCE(
        '('
        nPush()
        shift_val('raku_mcall', 'TT_VAR')  nInc()
        shift_val(capmf capmr, 'TT_QLIT') nInc()
        ( *Expr              nInc()
          ARBNO( *McallArgTail )
        | epsilon
        )
        $')'                 reduce('TT_FNC', 'nTop() + 1')
        nPop()
      | epsilon              shift_val(capmtf capmtr, 'TT_QLIT') reduce('TT_FIELD', 2)
    )
);
Expr11 = ( $'!'  *Expr11  reduce("'TT_NOT'", 1)
         | ($' ' '-')  *Expr11  reduce("'TT_MNS'", 1)
         | $'die' $'  '  shift_val('die', 'TT_VAR')  *Expr11  reduce('TT_FNC', 2)
         | $'map'  $'  '  ClosureExpr  $'  '  *Expr  shift_val('map', 'TT_VAR')   reduce('TT_FNC', 3)
         | $'grep' $'  '  ClosureExpr  $'  '  *Expr  shift_val('grep', 'TT_VAR')  reduce('TT_FNC', 3)
         | $'sort' $'  '  ClosureExpr  $'  '  *Expr  shift_val('sort', 'TT_VAR')  reduce('TT_FNC', 3)
         | $'sort' $'  '  *Expr                       shift_val('sort', 'TT_VAR')  reduce('TT_FNC', 2)
         | $'gather' *GatherBlock
         | VarTwigil              shift_val(captwf captwr, 'TT_VAR')
         | VarScalar              shift_val(capvf capvr, 'TT_VAR')
         | ArrIdxVar  $'['  *Expr  $']'  shift_val('raku_arr_get', 'TT_VAR')  shift_val(colnmf colnmr, 'TT_VAR')  reduce('TT_FNC', 3)
         | VarArray                                   shift_val(capvf capvr, 'TT_VAR')
         | HashIdxVar $'<'  HashAngleKey  $'>'        shift_val('raku_hash_get', 'TT_VAR')  shift_val(colnmf colnmr, 'TT_VAR')  shift_val(capkey, 'TT_QLIT')  reduce('TT_FNC', 3)
         | HashIdxVar $'{'  *Expr  $'}'               shift_val('raku_hash_get', 'TT_VAR')  shift_val(colnmf colnmr, 'TT_VAR')  reduce('TT_FNC', 3)
         | VarHash                                    shift_val(capvf capvr, 'TT_VAR')
         | $'exists' HashIdxVar $'<' HashAngleKey $'>'  shift_val('raku_hash_exists', 'TT_VAR')  shift_val(colnmf colnmr, 'TT_VAR')  shift_val(capkey, 'TT_QLIT')  reduce('TT_FNC', 3)
         | $'exists' HashIdxVar $'{' *Expr $'}'         shift_val('raku_hash_exists', 'TT_VAR')  shift_val(colnmf colnmr, 'TT_VAR')  reduce('TT_FNC', 3)
         | VarStdIn    (epsilon . *assign(.capidx, 0))   shift_val('raku_cap', 'TT_VAR')  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
         | VarStdOut   (epsilon . *assign(.capidx, 1))  shift_val('raku_cap', 'TT_VAR')  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
         | VarStdErr   (epsilon . *assign(.capidx, 2))  shift_val('raku_cap', 'TT_VAR')  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
         | VarCapture             shift_val('raku_cap', 'TT_VAR')  shift_val(capidx, 'TT_ILIT')   reduce('TT_FNC', 2)
         | VarNamedCapture        shift_val('raku_ncap', 'TT_VAR')     shift_val(capncname, 'TT_QLIT')    reduce('TT_FNC', 2)
         | ( LitFloat . capstr     shift_val(capstr, 'TT_FLIT') )
         | shift(LitInt, 'TT_ILIT')
         | ( LitStrDQ  Dq_unescape  shift_val(capstr, 'TT_QLIT') )
         | LitStrSQ               shift_val(capstr, 'TT_QLIT')
         | ( nPush()
             shift_val('raku_new', 'TT_VAR')  nInc()
             NewCallName  shift_val(capclsf capclsr, 'TT_QLIT')  nInc()
             '.' 'new'
             $'('
             ( $' ' ((ident_first (ident_rest | epsilon)) . capnamedkey) $'=>'  shift_val(capnamedkey, 'TT_QLIT')  *Expr  nInc() nInc()
               ARBNO( *NamedArgTail )
             | epsilon
             )
             $')'                 reduce('TT_FNC', 'nTop()')
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
             $')'                 reduce('TT_FNC', 'nTop()')
             nPop()
           )
         | BareIdent              shift_val(capvf capvr, 'TT_VAR')
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
                 | $'~~'  LitRegex shift_val(capstr, 'TT_RXLIT')  shift_val('raku_match', 'TT_VAR')  reduce('TT_FNC', 3)
                 | $'~~'  LitMatchGlobal shift_val(capstr, 'TT_RXLIT')  shift_val('raku_matchg', 'TT_VAR')  reduce('TT_FNC', 3)
                 | $'~~'  LitSubst  shift_val('raku_subst', 'TT_VAR')  shift_val(caprepl, 'TT_QLIT')  reduce('TT_FNC', 3)
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
/* PRF-S7 (2026-05-18): GatherBlock — two TT_FNCs sharing a fresh '__gather_N' name.
 * The def TT_FNC is placed on outer counter via nPop+nInc (goes into TT_PROGRAM children).
 * The call TT_FNC stays on parse stack as the gather-expr in context.
 * Set_gather_name/Push_gather_name_var transitional (PRF-12 gather step). */
GatherBlock = ( $'{'
                Set_gather_name
                nPush()
                Push_gather_name_var  nInc()
                ARBNO( *SubBlock_body )
                $'}'
                reduce('TT_FNC', 'nTop()')
                nPop()
                nInc()
                nPush()
                Push_gather_name_var  nInc()
                reduce('TT_FNC', 'nTop()')
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
WithoutStmt   = ( $'without'  $'(' Expr $')' Block  shift_val('raku_without', 'TT_VAR')  reduce('TT_FNC', 3) );
WheneverStmt  = ( $'whenever' $'  ' *Expr Block  shift_val('raku_whenever', 'TT_VAR')  reduce('TT_FNC', 3) );
LoopSubExpr = ( ( VarScalar FENCE $'=' shift_val(capvf capvr, 'TT_VAR') Expr reduce("'TT_ASSIGN'", 2) )
              | Expr
              );
LoopThreeStmt = ( $'loop' $'(' LoopSubExpr $';' LoopSubExpr $';' LoopSubExpr $')'
                  Block
                  shift_val('raku_loop', 'TT_VAR')  reduce('TT_FNC', 5)
                );
LoopInfStmt  = ( $'loop'  Block  shift(POS(0) RPOS(0), 'TT_ILIT')  reduce("'TT_WHILE'", 2) );
UseStmt      = ( $'use'     $'  ' ModuleName BREAK(';') $';'  shift_val('raku_use', 'TT_VAR')     shift_val(capmodname, 'TT_QLIT')  reduce('TT_FNC', 2) );
NoStmt       = ( $'no'      $'  ' ModuleName BREAK(';') $';'  shift_val('raku_no', 'TT_VAR')      shift_val(capmodname, 'TT_QLIT')  reduce('TT_FNC', 2) );
NeedStmt     = ( $'need'    $'  ' ModuleName BREAK(';') $';'  shift_val('raku_need', 'TT_VAR')    shift_val(capmodname, 'TT_QLIT')  reduce('TT_FNC', 2) );
ImportStmt   = ( $'import'  $'  ' ModuleName BREAK(';') $';'  shift_val('raku_import', 'TT_VAR')  shift_val(capmodname, 'TT_QLIT')  reduce('TT_FNC', 2) );
RequireStmt  = ( $'require' $'  ' ModuleName BREAK(';') $';'  shift_val('raku_require', 'TT_VAR') shift_val(capmodname, 'TT_QLIT')  reduce('TT_FNC', 2) );
CatchFreeStmt = ( $'CATCH'   Block  shift_val('raku_catch', 'TT_VAR')   reduce('TT_FNC', 2) );
ControlStmt   = ( $'CONTROL' Block  shift_val('raku_control', 'TT_VAR') reduce('TT_FNC', 2) );
QuitStmt      = ( $'QUIT'    Block  shift_val('raku_quit', 'TT_VAR')    reduce('TT_FNC', 2) );
BeginStmt  = ( $'BEGIN'  Block  shift_val('raku_BEGIN', 'TT_VAR')  reduce('TT_FNC', 2) );
EndStmt    = ( $'END'    Block  shift_val('raku_END', 'TT_VAR')    reduce('TT_FNC', 2) );
InitStmt   = ( $'INIT'   Block  shift_val('raku_INIT', 'TT_VAR')   reduce('TT_FNC', 2) );
CheckStmt  = ( $'CHECK'  Block  shift_val('raku_CHECK', 'TT_VAR')  reduce('TT_FNC', 2) );
EnterStmt  = ( $'ENTER'  Block  shift_val('raku_ENTER', 'TT_VAR')  reduce('TT_FNC', 2) );
LeaveStmt  = ( $'LEAVE'  Block  shift_val('raku_LEAVE', 'TT_VAR')  reduce('TT_FNC', 2) );
KeepStmt   = ( $'KEEP'   Block  shift_val('raku_KEEP', 'TT_VAR')   reduce('TT_FNC', 2) );
UndoStmt   = ( $'UNDO'   Block  shift_val('raku_UNDO', 'TT_VAR')   reduce('TT_FNC', 2) );
FirstStmt  = ( $'FIRST'  Block  shift_val('raku_FIRST', 'TT_VAR')  reduce('TT_FNC', 2) );
NextPhStmt = ( $'NEXT'   Block  shift_val('raku_NEXT', 'TT_VAR')   reduce('TT_FNC', 2) );
LastPhStmt = ( $'LAST'   Block  shift_val('raku_LAST', 'TT_VAR')   reduce('TT_FNC', 2) );
PreStmt    = ( $'PRE'    Block  shift_val('raku_PRE', 'TT_VAR')    reduce('TT_FNC', 2) );
PostStmt   = ( $'POST'   Block  shift_val('raku_POST', 'TT_VAR')   reduce('TT_FNC', 2) );
CloseStmt  = ( $'CLOSE'  Block  shift_val('raku_CLOSE', 'TT_VAR')  reduce('TT_FNC', 2) );
TempStmt   = ( $'TEMP'   Block  shift_val('raku_TEMP', 'TT_VAR')   reduce('TT_FNC', 2) );
DoBlockStmt = ( $'do'    Block  shift_val('raku_do', 'TT_VAR')        reduce('TT_FNC', 2) );
OnceStmt    = ( $'once'  Block  shift_val('raku_once', 'TT_VAR')      reduce('TT_FNC', 2) );
StartStmt   = ( $'start' Block  shift_val('raku_start', 'TT_VAR')     reduce('TT_FNC', 2) );
SupplyStmt  = ( $'supply' Block shift_val('raku_supply', 'TT_VAR')    reduce('TT_FNC', 2) );
ReactStmt   = ( $'react'  Block shift_val('raku_react', 'TT_VAR')     reduce('TT_FNC', 2) );
QuietlyStmt = ( $'quietly' Block shift_val('raku_quietly', 'TT_VAR')  reduce('TT_FNC', 2) );
RaceStmt    = ( $'race'  $'  ' *Expr $';'  shift_val('raku_race', 'TT_VAR')   reduce('TT_FNC', 2) );
HyperStmt   = ( $'hyper' $'  ' *Expr $';'  shift_val('raku_hyper', 'TT_VAR')  reduce('TT_FNC', 2) );
LazyStmt    = ( $'lazy'  $'  ' *Expr $';'  shift_val('raku_lazy', 'TT_VAR')   reduce('TT_FNC', 2) );
EagerStmt   = ( $'eager' $'  ' *Expr $';'  shift_val('raku_eager', 'TT_VAR')  reduce('TT_FNC', 2) );
SinkStmt    = ( $'sink'  $'  ' *Expr $';'  shift_val('raku_sink', 'TT_VAR')   reduce('TT_FNC', 2) );
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
                    shift_val('raku_hash_delete', 'TT_VAR')  shift_val(colnmf colnmr, 'TT_VAR')  shift_val(capkey, 'TT_QLIT')  reduce('TT_FNC', 3)
                  );
DeleteHashBrace = ( $'delete'  HashIdxVar  $'{'  Expr  $'}'  $';'
                    shift_val('raku_hash_delete', 'TT_VAR')  shift_val(colnmf colnmr, 'TT_VAR')  reduce('TT_FNC', 3)
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
                  ( ( VarScalar shift_val(capvf capvr, 'TT_VAR') | VarArray shift_val(capvf capvr, 'TT_VAR') | VarHash shift_val(capvf capvr, 'TT_VAR') )
                    $'=' *Expr $';'  reduce("'TT_ASSIGN'", 2)
                  | ( VarScalar shift_val(capvf capvr, 'TT_VAR') | VarArray shift_val(capvf capvr, 'TT_VAR') | VarHash shift_val(capvf capvr, 'TT_VAR') )
                    $';'             shift_val('', 'TT_NUL')  reduce("'TT_ASSIGN'", 2)
                  )
                );
ReturnBareStmt = ( $'return' $';' reduce("'TT_RETURN'", 0) );
AssignStmt = ( ($'my' $'  ' | epsilon)
               ( VarScalar  shift_val(capvf capvr, 'TT_VAR')
               | VarArray   shift_val(capvf capvr, 'TT_VAR')
               | VarHash    shift_val(capvf capvr, 'TT_VAR')
               )
               $'='  Expr  $';'  reduce("'TT_ASSIGN'", 2)
             );
SayStmt  = ( $'say'  Expr $';'  shift_val('raku_write', 'TT_VAR')   reduce('TT_FNC', 2) );
PrintStmt = ( $'print' Expr $';' shift_val('raku_writes', 'TT_VAR') reduce('TT_FNC', 2) );
WhenClause = ( $'when' $'  '
               Expr     nInc()
               Block    nInc()
             );
DefaultClause = ( $'default'
                  shift_val('', 'TT_NUL') Block
                  nInc() nInc()
                );
GivenStmt = ( $'given' $'  '
              Expr
              nPush()
              $'{'
              ARBNO( *WhenClause )
              (DefaultClause | epsilon)
              $'}'
              reduce('TT_CASE', 'nTop() + 1')
              nPop()
            );
ArrSetStmt = ( VarArray shift_val(capvf capvr, 'TT_VAR') $'[' *Expr $']' $'=' *Expr $';'
               shift_val('raku_arr_set', 'TT_VAR')  shift_val(capvf capvr, 'TT_VAR')  reduce('TT_FNC', 4) );
HashAngleSetKey = ($' ' BREAK('>') . capkey);
HashSetAngleStmt = ( VarHash shift_val(capvf capvr, 'TT_VAR') $'<' HashAngleSetKey $'>' $'=' *Expr $';'
                     shift_val('raku_hash_set', 'TT_VAR')  shift_val(capvf capvr, 'TT_VAR')  shift_val(capkey, 'TT_QLIT')  reduce('TT_FNC', 4) );
HashSetBraceStmt = ( VarHash shift_val(capvf capvr, 'TT_VAR') $'{' *Expr $'}' $'=' *Expr $';'
                     shift_val('raku_hash_set', 'TT_VAR')  shift_val(capvf capvr, 'TT_VAR')  reduce('TT_FNC', 4) );
FieldWriteStmt = ( VarScalar shift_val(capvf capvr, 'TT_VAR') '.' MethodName $'=' *Expr $';'
                   shift_val(capmtf capmtr, 'TT_QLIT')  reduce('TT_FIELD', 2)
                   reduce("'TT_ASSIGN'", 2) );
FhVar = ( VarScalar FENCE $','  shift_val(capvf capvr, 'TT_VAR')
        | VarStdIn  FENCE $','  (epsilon . *assign(.capidx, 0))  shift_val('raku_cap', 'TT_VAR')  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
        | VarStdOut FENCE $','  (epsilon . *assign(.capidx, 1)) shift_val('raku_cap', 'TT_VAR')  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
        | VarStdErr FENCE $','  (epsilon . *assign(.capidx, 2)) shift_val('raku_cap', 'TT_VAR')  shift_val(capidx, 'TT_ILIT')  reduce('TT_FNC', 2)
        );
SayFhStmt   = ( $'say'   $'(' FhVar *Expr $')' $';'  shift_val('raku_say_fh', 'TT_VAR')   reduce('TT_FNC', 3) );
PrintFhStmt = ( $'print' $'(' FhVar *Expr $')' $';'  shift_val('raku_print_fh', 'TT_VAR') reduce('TT_FNC', 3) );
BareStmt = ( Expr $';' );
TryStmt = ( $'try'
            Block
            ( $'CATCH'  Block  (epsilon . *assign(.raku_has_catch, 1))
            | epsilon
            )
            shift_val('raku_try', 'TT_VAR')
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
                 SubParam  shift_val(cappf cappr, 'TT_VAR')  nInc()
               );
SubParams = ( SubParam  shift_val(cappf cappr, 'TT_VAR')  nInc()
              ARBNO( SubParamTail )
            | epsilon
            );
/* PRF-S7: SubStmt — TT_FNC placed on outer counter (no sub_list slink needed).
 * nPop restores outer counter; nInc registers the TT_FNC as a TT_PROGRAM child. */
SubStmt = ( $'sub' $'  '
            SubName
            nPush()
            shift_val(capsnf capsnr, 'TT_VAR')  nInc()
            $'(' SubParams $')'
            SubBlock
            reduce('TT_FNC', 'nTop()')
            nPop()
            nInc()
          );
HasDeclTwigil  = ( VarTwigil  shift_val(capff capfr, 'TT_VAR') );
HasDeclScalar  = ( VarScalar  shift_val(capvf capvr, 'TT_VAR')       );
HasDecl = ( $'has' $'  '
            ( HasDeclTwigil | HasDeclScalar )
            $';'
            nInc()
          );
MethodParamTail = ( $','
                    SubParam  shift_val(cappf cappr, 'TT_VAR')  nInc()
                  );
MethodParams = ( SubParam  shift_val(cappf cappr, 'TT_VAR')  nInc()
                 ARBNO( MethodParamTail )
               | epsilon
               );
MethodDef = ( $'method' $'  '
              MethodIdent
              nPush()
              shift_val(capmtf capmtr, 'TT_VAR')  nInc()
              shift_val('self', 'TT_VAR')      nInc()
              $'(' *MethodParams $')'
              *SubBlock
              reduce('TT_FNC', 'nTop()')
              nPop()
              nInc()
            );
ClassBodyItem = ( HasDecl | MethodDef );
/* PRF-S7: ClassDecl — TT_RECORD placed on outer counter (no sub_list slink needed).
 * nPop restores outer counter; nInc registers the TT_RECORD as a TT_PROGRAM child. */
ClassDecl = ( $'class' $'  '
              ClassName
              $'{'
              nPush()
              shift_val(capclsf capclsr, 'TT_QLIT')  nInc()
              ARBNO( *ClassBodyItem )
              $'}'
              reduce('TT_RECORD', 'nTop()')
              nPop()
              nInc()
            );
ClosureExpr = ( $'{' *Expr $'}' );
/* PRF-S7: Compiland — one nPush for everything: subs, classes, gather defs, and
 * regular stmts all collected into TT_PROGRAM[child0, child1, ...].
 * SubStmt/ClassDecl/GatherBlock already call nInc() after their inner nPop().
 * Regular Stmt does nInc() per the ARBNO arm.
 * ClassDecl in expression context ((*ClassDecl ...)) was previously paired with
 * a dummy nInc for the discarded TT_NUL; now ClassDecl itself does nInc() so
 * the (*ClassDecl) arm needs no extra nInc.
 * E_Parse reduce wraps the TT_PROGRAM in a single-child reduce for error reporting. */
Compiland = nPush()
            POS(0) ARBNO( SubStmt | *ClassDecl | (Stmt nInc()) )
            $' '
            RPOS(0)
            reduce('TT_PROGRAM', 'nTop()')
            (reduce(E_Parse, 1))
            nPop();
InitCounter();
InitStack();
Src = '';
while ((Line = INPUT)) Src = Src Line nl;
if (Src ? Compiland) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            TDump(c(ptree)[i]);
            i = i + 1;
        }
    }
}
parser_done = '';
