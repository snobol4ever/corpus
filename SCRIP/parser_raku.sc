
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
        $')'                 Finish_mcall_body
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
         | VarStdIn    Set_stdin   Push_fn_capture  Push_ilit(capidx)  reduce('TT_FNC', 2)
         | VarStdOut   Set_stdout  Push_fn_capture  Push_ilit(capidx)  reduce('TT_FNC', 2)
         | VarStdErr   Set_stderr  Push_fn_capture  Push_ilit(capidx)  reduce('TT_FNC', 2)
         | VarCapture             Push_fn_capture  Push_ilit(capidx)   reduce('TT_FNC', 2)
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
             $')'                 Finish_new_body
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
             $')'                 Finish_call_body
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
                Finish_gather_body
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
ForeachStmt = ( $'foreach' $'  '  Expr $'->' ForLoopvar  Store_for_iter  Block
                reduce('TT_ITERATE', 1)  reduce("'TT_EVERY'", 2) );
ForStmt     = ( $'for' $'  '  Expr $'->' ForLoopvar  Store_for_iter  Block
                reduce('TT_ITERATE', 1)  reduce("'TT_EVERY'", 2) );
ForRangeStmt = ( $'for' $'  '
                 Expr6
                 FENCE( $'..^' | $'..' )
                 Expr6
                 $'->'
                 ForLoopvar  Store_for_iter
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
              Finish_given
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
        | VarStdIn  FENCE $','  Set_stdin  Push_fn_capture  Push_ilit(capidx)  reduce('TT_FNC', 2)
        | VarStdOut FENCE $','  Set_stdout Push_fn_capture  Push_ilit(capidx)  reduce('TT_FNC', 2)
        | VarStdErr FENCE $','  Set_stderr Push_fn_capture  Push_ilit(capidx)  reduce('TT_FNC', 2)
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
            SubBlock  Finish_sub_body
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
              *SubBlock  Finish_method_body
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
              Finish_class_body
              nPop()
            );
ClosureExpr = ( $'{' *Expr $'}' );
Compiland = nPush()
            nPush()
            POS(0) ARBNO( SubStmt | (*ClassDecl Push_nul nInc()) | (Stmt nInc()) )
            $' '
            RPOS(0)
            Finish_main_body
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
