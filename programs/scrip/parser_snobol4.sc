// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
//
// Grammar and Compiland taken VERBATIM from beauty.sno.
// Changes from beauty.sno (4 only):
//   1. Global constants block removed — already in global.sc.
//   2. TxInList: missing '(' added (typo in uploaded file).
//   3. icase('END') → 'END' (case.sc not in blob; END always uppercase).
//   4. Driver: reads INPUT into Src, matches Compiland, iterates children.
//
// The ~ and & operators work via OPSYN in semantic.sc:
//   OPSYN('~', 'shift', 2)  → P ~ 'tag' calls shift(P, 'tag')
//   OPSYN('&', 'reduce', 2) → ("'tag'" & 'nTop()') calls reduce('tag','nTop()')
//
// match.sc not in blob — Function/BuiltinVar/SpecialNm simplified to *Id.
// ProtKwd/UnprotKwd: bare '&' SPAN patterns (no word-list lookup).
//======================================================================================================================
Integer     =   SPAN(digits);
DQ          =   '"' BREAK('"' nl) '"';
SQ          =   "'" BREAK("'" nl) "'";
String      =   *SQ | *DQ;
Real        =   (  SPAN(digits)
                   ('.' FENCE(SPAN(digits) | epsilon) | epsilon)
                   ('E' | 'e')
                   ('+' | '-' | epsilon)
                   SPAN(digits)
                |  SPAN(digits) '.' FENCE(SPAN(digits) | epsilon)
                );
Id          =   ANY(&UCASE &LCASE)
                FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon);
ProtKwd     =   '&' SPAN(&UCASE &LCASE);
UnprotKwd   =   '&' SPAN(&UCASE &LCASE);
//======================================================================================================================
Gray        =   *White | epsilon;
White       =   (  SPAN(' ' tab)
                   FENCE(nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon) | epsilon)
                |  nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon)
                );
//======================================================================================================================
$'='        =   *White '=' *White;
$'?'        =   *White '?' *White;
$'|'        =   *White '|' *White;
$'+'        =   *White '+' *White;
$'-'        =   *White '-' *White;
$'/'        =   *White '/' *White;
$'*'        =   *White '*' *White;
$'^'        =   *White '^' *White;
$'!'        =   *White '!' *White;
$'**'       =   *White '**' *White;
$'$'        =   *White '$' *White;
$'.'        =   *White '.' *White;
$'&'        =   *White '&' *White;
$'@'        =   *White '@' *White;
$'#'        =   *White '#' *White;
$'%'        =   *White '%' *White;
$'~'        =   *White '~' *White;
$','        =   *Gray ',' *Gray;
$'('        =   '(' *Gray;
$'['        =   '[' *Gray;
$'<'        =   '<' *Gray;
$')'        =   *Gray ')';
$']'        =   *Gray ']';
$'>'        =   *Gray '>';
//======================================================================================================================
ExprList    =   nPush()
                *XList
                ("'ExprList'" & '*(GT(nTop(), 1) nTop())')
                nPop();
XList       =   nInc() (*Expr | epsilon ~ '') FENCE($',' *XList | epsilon);
Expr        =   *Expr0;
Expr0       =   *Expr1 FENCE($'=' *Expr0 ("'='" & 2) | epsilon);
Expr1       =   *Expr2 FENCE($'?' *Expr1 ("'?'" & 2) | epsilon);
Expr2       =   *Expr3 FENCE($'&' *Expr2 ("'&'" & 2) | epsilon);
Expr3       =   nPush() *X3 ("'|'" & '*(GT(nTop(), 1) nTop())') nPop();
X3          =   nInc() *Expr4 FENCE($'|' *X3 | epsilon);
Expr4       =   nPush() *X4 ("'..'" & '*(GT(nTop(), 1) nTop())') nPop();
X4          =   nInc() *Expr5 FENCE(*White *X4 | epsilon);      // ws-here-is-required: juxtaposition-concat (.. op)
Expr5       =   *Expr6 FENCE($'@' *Expr5 ("'@'" & 2) | epsilon);
Expr6       =   *Expr7
                FENCE(
                   $'+' *Expr6 ("'+'" & 2) | $'-' *Expr6 ("'-'" & 2) | epsilon
                );
Expr7       =   *Expr8 FENCE($'#' *Expr7 ("'#'" & 2) | epsilon);
Expr8       =   *Expr9 FENCE($'/' *Expr8 ("'/'" & 2) | epsilon);
Expr9       =   *Expr10 FENCE($'*' *Expr9 ("'*'" & 2) | epsilon);
Expr10      =   *Expr11 FENCE($'%' *Expr10 ("'%'" & 2) | epsilon);
Expr11      =   *Expr12
                FENCE(($'^' | $'!' | $'**') *Expr11 ("'^'" & 2) | epsilon);
Expr12      =   *Expr13
                FENCE(
                   $'$' *Expr12 ("'$'" & 2)
                |  $'.' *Expr12 ("'.'" & 2)
                |  epsilon
                );
Expr13      =   *Expr14 FENCE($'~' *Expr13 ("'~'" & 2) | epsilon);
Expr14      =   '@' *Expr14 ("'@'" & 1)
            |   '~' *Expr14 ("'~'" & 1)
            |   '?' *Expr14 ("'?'" & 1)
            |   *ProtKwd ~ 'ProtKwd'
            |   *UnprotKwd ~ 'UnprotKwd'
            |   '&' *Expr14 ("'&'" & 1)
            |   '+' *Expr14 ("'+'" & 1)
            |   '-' *Expr14 ("'-'" & 1)
            |   '*' *Expr14 ("'*'" & 1)
            |   '$' *Expr14 ("'$'" & 1)
            |   '.' *Expr14 ("'.'" & 1)
            |   '!' *Expr14 ("'!'" & 1)
            |   '%' *Expr14 ("'%'" & 1)
            |   '/' *Expr14 ("'/'" & 1)
            |   '#' *Expr14 ("'#'" & 1)
            |   '=' *Expr14 ("'='" & 1)
            |   '|' *Expr14 ("'|'" & 1)
            |   *Expr15;
Expr15      =   *Expr17
                FENCE(nPush() *Expr16 ("'[]'" & 'nTop() + 1') nPop() | epsilon);
Expr16      =   nInc()
                ($'[' *ExprList $']' | $'<' *ExprList $'>')
                FENCE(*Expr16 | epsilon);
Expr17      =   FENCE(
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
//======================================================================================================================
// §3 decision — S/F tokens: keep inline 'S'|'s' / 'F'|'f' literals (status quo); conciseness over isomorphism.
SGoto       =   ('S' | 's') . *assign(.sf, *'S');
FGoto       =   ('F' | 'f') . *assign(.sf, *'F');
SorF        =   *SGoto | *FGoto;
Target      =   $'(' . *assign(.Brackets, *'()') *Expr $')'
            |   $'<' . *assign(.Brackets, *'<>') *Expr $'>';
Goto        =   *Gray ':'  // ws-here-is-required: ':' not in $'...' bracket tokens
                *Gray      // ws-here-is-required: optional space after ':' before target
                FENCE(
                   *Target ("*(':' Brackets)" & 1) epsilon ~ ''
                |  *SorF *Target ("*(':' sf Brackets)" & 1)
                   FENCE(*Gray *SorF *Target ("*(':' sf Brackets)" & 1) | epsilon ~ '')
                );
Control     =   '-' BREAK(nl ';');
Comment     =   '*' BREAK(nl);
Label       =   BREAK(' ' tab nl ';') ~ 'Label';
Stmt        =   *Label
                (  *White  // ws-here-is-required: column-sensitive — body must start with whitespace after label
                   *Expr14
                   FENCE(
                      epsilon ~ ''
                      *White  // ws-here-is-required: space before '=' replacement operator
                      ('=' ~ '=' *White *Expr | '=' ~ '=' epsilon ~ '')
                   |  ($'?' | *White)  // ws-here-is-required: SNOBOL4 allows space OR '?' as subject/pattern delimiter
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
//======================================================================================================================
Commands    =   *Command FENCE(*Commands | epsilon);
Command     =   nInc()
                FENCE(
                   *Comment ~ 'comment' ("'Comment'" & 1) nl
                |  *Control ~ 'control' ("'Control'" & 1) (nl | ';')
                |  *Stmt ("'Stmt'" & 7) (nl | ';')
                );
//----------------------------------------------------------------------------------------------------------------------
Compiland   =   nPush()
                ARBNO(*Command)
                ("'Parse'" & 'nTop()')
                ('END' (' ' BREAK(nl) nl | nl) ARBNO(BREAK(nl) nl) | epsilon)
                nPop();
//======================================================================================================================
InitCounter();
InitStack();
Src = '';
while ((Line = INPUT)) Src = Src Line nl ;
if (Src ? Compiland) {
    ptree = Pop();
    i = 1;
    nk = n(ptree);
    while (LE(i, nk)) {
        TDump(c(ptree)[i]);
        i = i + 1;
    }
} else {
    OUTPUT = 'Parse Error.';
}
