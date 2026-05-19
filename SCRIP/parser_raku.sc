
E_Parse = "'Parse'";
/* ==================================================================================================================== */
/* PST-clean functions in this file (PRF-S7, 2026-05-18):
 * dq_unescape — pure string processor: parser internalizes \\n/\\t/\\\\/\\" escapes.
 * Lower is language-agnostic; escape semantics belong in the parser.
 * All other helpers eliminated: class-a stubs inlined as shift_val/assign;
 * class-b stubs (emit_to_sub_list, push_stmt_subj) eliminated: replaced by nPop+nInc
 * pattern — sub/class/gather TT_FNC/TT_RECORD nodes placed directly in TT_PROGRAM.
 * ==================================================================================================================== */
bSlash = '\';
/* ==================================================================================================================== */
/* dq_unescape — pure string processor (PST-clean: no tree()/Push()/Append()).
 * The parser must internalize escape values; lower is language-agnostic.
 * Translates \\n→newline, \\t→tab, \\\\→backslash, \\"→quote in capstr. */
function dq_unescape(raw, result, lit, ch) {
 raw = capstr;
 result = '';
 while (1) {
 if (IDENT(raw)) break;
 if (raw ? (POS(0) BREAK(bSlash) . lit) = ) { result = result lit; }
 if (IDENT(raw)) break;
 if (raw ? (POS(0) bSlash) = ) {
 if (raw ? (POS(0) LEN(1) . ch) = ) {
 if (IDENT(ch, 'n')) { result = result nl; }
 else if (IDENT(ch, 't')) { result = result tab; }
 else if (IDENT(ch, bSlash)) { result = result bSlash; }
 else if (IDENT(ch, '"')) { result = result '"'; }
 else { result = result bSlash ch; }
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
/* ==================================================================================================================== */
/* push_interp_leaves eliminated (PRF-S7, 2026-05-18): DQ string emitted as
 * single TT_QLIT leaf; lower handles $var interpolation expansion. */
/* ==================================================================================================================== */
/* PRF-8 (2026-05-18): finish_given eliminated. WhenClause/DefaultClause inline pushes
 * (val, body) pairs via ×2. GivenStmt uses with
 * topic pushed before nPush. cmpkind moved to lower.c (derived from val->t). */
/* ==================================================================================================================== */

/* ==================================================================================================================== */
/* PRF-9 (2026-05-18): finish_gather_body eliminated. GatherBlock inlines two reduce
 * pairs: one for def TT_FNC (def placed on outer counter via nPop+nInc),
 * one for call TT_FNC (stays on parse stack as gather-expr). fountains '__gather_N'. */
/* ==================================================================================================================== */
/* ==================================================================================================================== */

White = ( SPAN(' ' tab nl) FENCE('#' BREAK(nl) nl | epsilon)
 | '#' BREAK(nl) nl
 );
Gray = White | epsilon;
$' ' = White;
$' ' = Gray;
$'my' = $' ' 'my' ; $'say' = $' ' 'say' ;
$'if' = $' ' 'if' ; $'else' = $' ' 'else' ;
$'while' = $' ' 'while' ; $'for' = $' ' 'for' ;
$'sub' = $' ' 'sub' ; $'return' = $' ' 'return';
$'exists' = $' ' 'exists'; $'delete' = $' ' 'delete';
$'unless' = $' ' 'unless'; $'until' = $' ' 'until';
$'without' = $' ' 'without';
$'whenever' = $' ' 'whenever';
$'foreach' = $' ' 'foreach';
$'loop' = $' ' 'loop';
$'use' = $' ' 'use';
$'no' = $' ' 'no';
$'need' = $' ' 'need';
$'import' = $' ' 'import';
$'require' = $' ' 'require';
$'given' = $' ' 'given' ; $'when' = $' ' 'when' ;
$'default' = $' ' 'default';
$'print' = $' ' 'print' ; $'die' = $' ' 'die' ;
$'try' = $' ' 'try' ; $'CATCH' = $' ' ('CATCH' | 'catch');
$'CONTROL' = $' ' 'CONTROL';
$'QUIT' = $' ' 'QUIT';
$'BEGIN' = $' ' 'BEGIN'; $'END' = $' ' 'END';
$'INIT' = $' ' 'INIT'; $'CHECK' = $' ' 'CHECK';
$'ENTER' = $' ' 'ENTER'; $'LEAVE' = $' ' 'LEAVE';
$'KEEP' = $' ' 'KEEP'; $'UNDO' = $' ' 'UNDO';
$'FIRST' = $' ' 'FIRST'; $'NEXT' = $' ' 'NEXT';
$'LAST' = $' ' 'LAST'; $'PRE' = $' ' 'PRE';
$'POST' = $' ' 'POST'; $'CLOSE' = $' ' 'CLOSE';
$'TEMP' = $' ' 'TEMP';
$'do' = $' ' 'do'; $'once' = $' ' 'once';
$'start' = $' ' 'start'; $'supply' = $' ' 'supply';
$'react' = $' ' 'react'; $'quietly' = $' ' 'quietly';
$'race' = $' ' 'race'; $'hyper' = $' ' 'hyper';
$'lazy' = $' ' 'lazy'; $'eager' = $' ' 'eager';
$'sink' = $' ' 'sink';
$'map' = $' ' 'map' ; $'grep' = $' ' 'grep' ; $'sort' = $' ' 'sort' ;
$'gather' = $' ' 'gather' ; $'take' = $' ' 'take' ;
$'elsif' = $' ' 'elsif' ; $'repeat' = $' ' 'repeat' ;
$'class' = $' ' 'class' ; $'method' = $' ' 'method' ;
$'has' = $' ' 'has' ; $'new' = $' ' 'new' ;
$'eq' = $' ' 'eq' $' '; $'ne' = $' ' 'ne' $' ';
$'div' = $' ' 'div' $' '; $'%' = $' ' '%' $' ';
$'->' = $' ' '->' $' '; $'==' = $' ' '==' $' ';
$'!=' = $' ' '!=' $' '; $'<=' = $' ' '<=' $' ';
$'>=' = $' ' '>=' $' '; $'=' = $' ' '=' $' ';
$'+' = $' ' '+' $' '; $'-' = $' ' '-' $' ';
$'*' = $' ' '*' $' '; $'/' = $' ' '/' $' ';
$';' = $' ' ';' $' '; $',' = $' ' ',' $' ';
$'(' = $' ' '(' $' '; $')' = $' ' ')';
$'{' = $' ' '{' $' '; $'}' = $' ' '}';
$'<' = $' ' '<' $' '; $'>' = $' ' '>';
$'[' = $' ' '[' $' '; $']' = $' ' ']';
$'~~' = $' ' '~~' $' ';
$'=>' = $' ' '=>' $' ';
$'..' = $' ' '..' $' '; $'..^' = $' ' '..^' $' ';
$'&&' = $' ' '&&' $' '; $'||' = $' ' '||' $' ';
$'!' = $' ' '!'; $'~' = $' ' '~' $' ';
ident_first = ANY(&UCASE &LCASE '_');
ident_rest = SPAN(digits &UCASE &LCASE '_');
Ident = ($' ' ident_first (ident_rest | epsilon));
modname_part = (ident_first (ident_rest | epsilon));
modname_chain = (modname_part ARBNO('::' modname_part));
modname_ver = ('v' SPAN(digits) ('.' SPAN(digits &UCASE &LCASE '_') | epsilon));
ModuleName = ($' ' (modname_chain | modname_ver) );
vf = ANY(&UCASE &LCASE '_');
vr = SPAN(digits &UCASE &LCASE '_');
vro = (vr | epsilon);
VarScalar = ($' ' '$' vf vro );
VarArray = ($' ' '@' vf vro );
VarHash = ($' ' '%' vf vro );
BareIdent = ($' ' vf vro );
twf = ANY(&UCASE &LCASE '_');
twr = SPAN(digits &UCASE &LCASE '_');
twro = (twr | epsilon);
VarTwigil = ($' ' ('$.' | '$!') twf twro );
clf = ANY(&UCASE &LCASE '_');
clr = SPAN(digits &UCASE &LCASE '_');
clro = (clr | epsilon);
ClassName = ($' ' clf clro );
mtf = ANY(&UCASE &LCASE '_');
mtr = SPAN(digits &UCASE &LCASE '_');
mtro = (mtr | epsilon);
MethodIdent = ($' ' mtf mtro );
LitInt = ($' ' SPAN(digits));
LitStrDQ = ($' ' '"' BREAK('"') '"');
LitStrSQ = ($' ' "'" BREAK("'") "'");
LitFloat = ($' ' SPAN(digits) '.' SPAN(digits));
LitRegex = ($' ' '/' BREAK('/') '/');
VarCapture = ($' ' '$' SPAN(digits) );
VarStdIn = ($' ' '$*STDIN');
VarStdOut = ($' ' '$*STDOUT');
VarStdErr = ($' ' '$*STDERR');
VarNamedCapture = ($' ' '$<' BREAK('>') '>');
LitMatchGlobal = ($' ' 'm:g/' BREAK('/') '/');
LitSubst = ($' ' 's/' BREAK('/') '/'
 BREAK('/') '/'
 ('g' | epsilon));
HashAngleKey = (BREAK('>') );
cnf = ANY(&UCASE &LCASE '_');
cnr = SPAN(digits &UCASE &LCASE '_');
cnro = (cnr | epsilon);
ArrIdxVar = ($' ' '@' cnf cnro );
HashIdxVar = ($' ' '%' cnf cnro );
ff = ANY(&UCASE &LCASE '_');
fr = SPAN(digits &UCASE &LCASE '_');
fro = (fr | epsilon);
ForLoopvar = ($' ' '$' ff fro );
snf = ANY(&UCASE &LCASE '_');
snr = SPAN(digits &UCASE &LCASE '_');
snro = (snr | epsilon);
SubName = ($' ' snf snro );
pf = ANY(&UCASE &LCASE '_');
pr = SPAN(digits &UCASE &LCASE '_');
pro = (pr | epsilon);
SubParam = ($' ' '$' pf pro );
fnf = ANY(&UCASE &LCASE '_');
fnr = SPAN(digits &UCASE &LCASE '_');
fnro = (fnr | epsilon);
CallName = ($' ' fnf fnro );
capvf = '';
capvr = '';
colnmf = '';
colnmr = '';
capstr = '';
caprx = '';
capidx = '';
capncname = '';
cappat = '';
caprepl = '';
capflag = '';
capkey = '';
capff = '';
capfr = '';
for_iter = '';
capsnf = '';
capsnr = '';
cappf = '';
cappr = '';
capmf = '';
capmr = '';
captype = '';
capnamedkey = '';
capnamedval = '';
capclsf = '';
capclsr = '';
capmtf = '';
capmtr = '';
captwf = '';
captwr = '';
gather_seq = 0;
struct slink { snext, sval }
/* ==================================================================================================================== */
/* PST-allowed leaf constructors: set v.sval from token capture, no child inspection */
/* ==================================================================================================================== */
/* Grammar rules — only shift and reduce from here on */
NamedArgTail = ( $',' $' ' ((ident_first (ident_rest | epsilon)) ) $'=>' *Expr );
NewCallName = ($' ' fnf fnro );
CallArgTail = ( $',' *Expr );
McallArgTail = ( $',' *Expr );
MethodName = ( fnf fnro );
MethodTail = FENCE(
 '.' MethodName
 FENCE(
 '('

 ( *Expr
 ARBNO( *McallArgTail )
 | epsilon
 )
 $')'

 | epsilon
 )
);
Expr11 = ( $'!' *Expr11
 | ($' ' '-') *Expr11
 | $'die' $' ' *Expr11
 | $'map' $' ' ClosureExpr $' ' *Expr
 | $'grep' $' ' ClosureExpr $' ' *Expr
 | $'sort' $' ' ClosureExpr $' ' *Expr
 | $'sort' $' ' *Expr
 | $'gather' *GatherBlock
 | VarTwigil
 | VarScalar
 | ArrIdxVar $'[' *Expr $']'
 | VarArray
 | HashIdxVar $'<' HashAngleKey $'>'
 | HashIdxVar $'{' *Expr $'}'
 | VarHash
 | $'exists' HashIdxVar $'<' HashAngleKey $'>'
 | $'exists' HashIdxVar $'{' *Expr $'}'
 | VarStdIn
 | VarStdOut
 | VarStdErr
 | VarCapture
 | VarNamedCapture
 | ( LitFloat )
 | ( LitStrDQ )
 | LitStrSQ
 | (

 NewCallName
 '.' 'new'
 $'('
 ( $' ' ((ident_first (ident_rest | epsilon)) ) $'=>' *Expr
 ARBNO( *NamedArgTail )
 | epsilon
 )
 $')'

 )
 | $'(' *Expr $')'
 | (

 $'('
 ( *Expr
 ARBNO( *CallArgTail )
 | epsilon
 )
 $')'

 )
 | BareIdent
 )
 ARBNO(*MethodTail);
Expr7tail = FENCE( $'*' *Expr11
 | $'/' *Expr11
 | $'div' *Expr11
 | $'%' *Expr11
 );
Expr7 = ( Expr11 ARBNO(Expr7tail) );
Expr6tail = FENCE( $'+' *Expr7
 | $'-' *Expr7
 | $'~' *Expr7
 );
Expr6 = ( Expr7 ARBNO(Expr6tail) );
Expr5 = ( Expr6
 FENCE( $'..^' *Expr6
 | $'..' *Expr6
 | epsilon
 )
 );
Expr4tail = FENCE( $'==' *Expr5
 | $'!=' *Expr5
 | $'<=' *Expr5
 | $'>=' *Expr5
 | $'<' *Expr5
 | $'>' *Expr5
 | $'eq' *Expr5
 | $'ne' *Expr5
 | $'~~' LitRegex
 | $'~~' LitMatchGlobal
 | $'~~' LitSubst
 );
Expr4 = ( Expr5 ARBNO(Expr4tail) );
Expr3tail = FENCE( $'&&' *Expr4
 | $'||' *Expr4
 );
Expr3 = ( Expr4 ARBNO(Expr3tail) );
Expr = Expr3;
BlockStmt = epsilon;
Block_body = ( *BlockStmt );
Block = ( $'{'

 ARBNO( Block_body )
 $'}'

 );
SubBlockStmt = epsilon;
SubBlock_body = ( *SubBlockStmt );
SubBlock = ( $'{'
 ARBNO( SubBlock_body )
 $'}'
 );
/* PRF-S7 (2026-05-18): GatherBlock — two TT_FNCs sharing a fresh '__gather_N' name.
 * The def TT_FNC is placed on outer counter via nPop+nInc (goes into TT_PROGRAM children).
 * The call TT_FNC stays on parse stack as the gather-expr in context.
 * / transitional (PRF-12 gather step). */
GatherBlock = ( $'{'

 ARBNO( *SubBlock_body )
 $'}'

 );
IfStmt = ( $'if' $'(' Expr $')'
 Block
 ( $'elsif' $'(' Expr $')' Block
 ( $'else' Block
 )
 | $'else' Block
 )
 );
WhileStmt = ( $'while' $'(' Expr $')'
 Block

 );
UnlessStmt = ( $'unless' $'(' Expr $')'

 Block
 ( $'else' Block
 )
 );
UntilStmt = ( $'until' $'(' Expr $')'
 Block

 );
WithoutStmt = ( $'without' $'(' Expr $')' Block );
WheneverStmt = ( $'whenever' $' ' *Expr Block );
LoopSubExpr = ( ( VarScalar $'=' Expr )
 | Expr
 );
LoopThreeStmt = ( $'loop' $'(' LoopSubExpr $';' LoopSubExpr $';' LoopSubExpr $')'
 Block

 );
LoopInfStmt = ( $'loop' Block );
UseStmt = ( $'use' $' ' ModuleName BREAK(';') $';' );
NoStmt = ( $'no' $' ' ModuleName BREAK(';') $';' );
NeedStmt = ( $'need' $' ' ModuleName BREAK(';') $';' );
ImportStmt = ( $'import' $' ' ModuleName BREAK(';') $';' );
RequireStmt = ( $'require' $' ' ModuleName BREAK(';') $';' );
CatchFreeStmt = ( $'CATCH' Block );
ControlStmt = ( $'CONTROL' Block );
QuitStmt = ( $'QUIT' Block );
BeginStmt = ( $'BEGIN' Block );
EndStmt = ( $'END' Block );
InitStmt = ( $'INIT' Block );
CheckStmt = ( $'CHECK' Block );
EnterStmt = ( $'ENTER' Block );
LeaveStmt = ( $'LEAVE' Block );
KeepStmt = ( $'KEEP' Block );
UndoStmt = ( $'UNDO' Block );
FirstStmt = ( $'FIRST' Block );
NextPhStmt = ( $'NEXT' Block );
LastPhStmt = ( $'LAST' Block );
PreStmt = ( $'PRE' Block );
PostStmt = ( $'POST' Block );
CloseStmt = ( $'CLOSE' Block );
TempStmt = ( $'TEMP' Block );
DoBlockStmt = ( $'do' Block );
OnceStmt = ( $'once' Block );
StartStmt = ( $'start' Block );
SupplyStmt = ( $'supply' Block );
ReactStmt = ( $'react' Block );
QuietlyStmt = ( $'quietly' Block );
RaceStmt = ( $'race' $' ' *Expr $';' );
HyperStmt = ( $'hyper' $' ' *Expr $';' );
LazyStmt = ( $'lazy' $' ' *Expr $';' );
EagerStmt = ( $'eager' $' ' *Expr $';' );
SinkStmt = ( $'sink' $' ' *Expr $';' );
ForeachStmt = ( $'foreach' $' ' Expr $'->' ForLoopvar Block
 );
ForStmt = ( $'for' $' ' Expr $'->' ForLoopvar Block
 );
ForRangeStmt = ( $'for' $' '
 Expr6
 FENCE( $'..^' | $'..' )
 Expr6
 $'->'
 ForLoopvar
 Block
 );
DeleteHashAngle = ( $'delete' HashIdxVar $'<' HashAngleKey $'>' $';'

 );
DeleteHashBrace = ( $'delete' HashIdxVar $'{' Expr $'}' $';'

 );
ReturnStmt = ( $'return'
 ( $';'
 | $' ' Expr $';'
 )
 );
TakeStmt = ( $'take' $' ' Expr $';' );
TypedDeclStmt = ( $'my' $' '
 $' ' ident_first (ident_rest | epsilon)
 $' '
 ( ( VarScalar | VarArray | VarHash )
 $'=' *Expr $';'
 | ( VarScalar | VarArray | VarHash )
 $';'
 )
 );
ReturnBareStmt = ( $'return' $';' );
AssignStmt = ( ($'my' $' ' | epsilon)
 ( VarScalar
 | VarArray
 | VarHash
 )
 $'=' Expr $';'
 );
SayStmt = ( $'say' Expr $';' );
PrintStmt = ( $'print' Expr $';' );
WhenClause = ( $'when' $' '
 Expr
 Block
 );
DefaultClause = ( $'default'
 Block

 );
GivenStmt = ( $'given' $' '
 Expr

 $'{'
 ARBNO( *WhenClause )
 (DefaultClause | epsilon)
 $'}'

 );
ArrSetStmt = ( VarArray $'[' *Expr $']' $'=' *Expr $';'
 );
HashAngleSetKey = ($' ' BREAK('>') );
HashSetAngleStmt = ( VarHash $'<' HashAngleSetKey $'>' $'=' *Expr $';'
 );
HashSetBraceStmt = ( VarHash $'{' *Expr $'}' $'=' *Expr $';'
 );
FieldWriteStmt = ( VarScalar '.' MethodName $'=' *Expr $';'

 );
FhVar = ( VarScalar $','
 | VarStdIn $','
 | VarStdOut $','
 | VarStdErr $','
 );
SayFhStmt = ( $'say' $'(' FhVar *Expr $')' $';' );
PrintFhStmt = ( $'print' $'(' FhVar *Expr $')' $';' );
BareStmt = ( Expr $';' );
TryStmt = ( $'try'
 Block
 ( $'CATCH' Block
 | epsilon
 )

 ( EQ(try_has_catch, 1)
 )
 );
RepeatStmt = ( $'repeat' Block );
ForNoArrowStmt = ( $'for' $' ' *Expr Block
 );
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
 SubParam
 );
SubParams = ( SubParam
 ARBNO( SubParamTail )
 | epsilon
 );
/* PRF-S7: SubStmt — TT_FNC placed on outer counter (no sub_list slink needed).
 * nPop restores outer counter; nInc registers the TT_FNC as a TT_PROGRAM child. */
SubStmt = ( $'sub' $' '
 SubName

 $'(' SubParams $')'
 SubBlock

 );
HasDeclTwigil = ( VarTwigil );
HasDeclScalar = ( VarScalar );
HasDecl = ( $'has' $' '
 ( HasDeclTwigil | HasDeclScalar )
 $';'

 );
MethodParamTail = ( $','
 SubParam
 );
MethodParams = ( SubParam
 ARBNO( MethodParamTail )
 | epsilon
 );
MethodDef = ( $'method' $' '
 MethodIdent

 $'(' *MethodParams $')'
 *SubBlock

 );
ClassBodyItem = ( HasDecl | MethodDef );
/* PRF-S7: ClassDecl — TT_RECORD placed on outer counter (no sub_list slink needed).
 * nPop restores outer counter; nInc registers the TT_RECORD as a TT_PROGRAM child. */
ClassDecl = ( $'class' $' '
 ClassName
 $'{'

 ARBNO( *ClassBodyItem )
 $'}'

 );
ClosureExpr = ( $'{' *Expr $'}' );
/* PRF-S7: Compiland — one nPush for everything: subs, classes, gather defs, and
 * regular stmts all collected into TT_PROGRAM[child0, child1, ...].
 * SubStmt/ClassDecl/GatherBlock already call after their inner .
 * Regular Stmt does per the ARBNO arm.
 * ClassDecl in expression context ((*ClassDecl ...)) was previously paired with
 * a dummy nInc for the discarded TT_NUL; now ClassDecl itself does so
 * the (*ClassDecl) arm needs no extra nInc.
 * E_Parse reduce wraps the TT_PROGRAM in a single-child reduce for error reporting. */
Compiland =
 POS(0) ARBNO( SubStmt | *ClassDecl | (Stmt ) )
 $' '
 RPOS(0)

 ;
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
