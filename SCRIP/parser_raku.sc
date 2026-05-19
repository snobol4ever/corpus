/* ====================================================================================================================
 * parser_raku.sc — Raku frontend (Pure recognizer, PRF-14 in progress)
 *
 * Grammar productions mirror raku.y exactly:
 *   program / stmt_list / stmt / if_stmt / while_stmt / unless_stmt / until_stmt /
 *   repeat_stmt / for_stmt / given_stmt / when_list / sub_decl / class_decl /
 *   class_body_list / named_arg_list / param_list / block / closure / expr /
 *   cmp_expr / range_expr / add_expr / mul_expr / unary_expr / postfix_expr /
 *   call_expr / arg_list / atom.
 *
 * Left-recursive bison rules `X : X op Y | Y` are translated to right-iterative
 * Snocone shape `X = Y ARBNO(op Y)` for shift/reduce semantics later.
 *
 * NO tree-building actions (shift/reduce/nPush/nInc/nPop/nTop/assign).
 * NO captures (. var / $ var).  Pure recognition only.  PRF-14 will re-attach
 * tree actions per PRF-14-TREE-SHAPE-ORACLE.md.
 * ==================================================================================================================== */
&ANCHOR   = 0;
&FULLSCAN = 1;
bSlash = '\';
/* ----- Whitespace and comments ----- */
White = ( SPAN(' ' tab nl) FENCE('#' BREAK(nl) nl | epsilon)
        | '#' BREAK(nl) nl
        );
Gray   = (White | epsilon);
$'  '  = White;
$' '   = Gray;
/* ----- Keyword tokens (KW_*) — one per raku.y token ----- */
$'my'      = $' ' 'my';         $'say'    = $' ' 'say';
$'print'   = $' ' 'print';      $'if'     = $' ' 'if';
$'else'    = $' ' 'else';       $'elsif'  = $' ' 'elsif';
$'while'   = $' ' 'while';      $'for'    = $' ' 'for';
$'sub'     = $' ' 'sub';        $'gather' = $' ' 'gather';
$'take'    = $' ' 'take';       $'return' = $' ' 'return';
$'given'   = $' ' 'given';      $'when'   = $' ' 'when';
$'default' = $' ' 'default';    $'exists' = $' ' 'exists';
$'delete'  = $' ' 'delete';     $'unless' = $' ' 'unless';
$'until'   = $' ' 'until';      $'repeat' = $' ' 'repeat';
$'map'     = $' ' 'map';        $'grep'   = $' ' 'grep';
$'sort'    = $' ' 'sort';       $'try'    = $' ' 'try';
$'CATCH'   = $' ' ('CATCH' | 'catch');
$'die'     = $' ' 'die';        $'class'  = $' ' 'class';
$'method'  = $' ' 'method';     $'has'    = $' ' 'has';
$'new'     = $' ' 'new';
/* ----- Operator tokens (OP_*) ----- */
$'=>'  = $' ' '=>'  $' ';   /* OP_FATARROW */
$'..^' = $' ' '..^' $' ';   /* OP_RANGE_EX */
$'..'  = $' ' '..'  $' ';   /* OP_RANGE    */
$'->'  = $' ' '->'  $' ';   /* OP_ARROW    */
$'=='  = $' ' '=='  $' ';   /* OP_EQ       */
$'!='  = $' ' '!='  $' ';   /* OP_NE       */
$'<='  = $' ' '<='  $' ';   /* OP_LE       */
$'>='  = $' ' '>='  $' ';   /* OP_GE       */
$'eq'  = $' ' 'eq'  $' ';   /* OP_SEQ      */
$'ne'  = $' ' 'ne'  $' ';   /* OP_SNE      */
$'&&'  = $' ' '&&'  $' ';   /* OP_AND      */
$'||'  = $' ' '||'  $' ';   /* OP_OR       */
$':='  = $' ' ':='  $' ';   /* OP_BIND     */
$'~~'  = $' ' '~~'  $' ';   /* OP_SMATCH   */
$'div' = $' ' 'div' $' ';   /* OP_DIV      */
/* ----- Single-char punctuation ----- */
$'='   = $' ' '='   $' ';   $'+'   = $' ' '+'   $' ';
$'-'   = $' ' '-'   $' ';   $'*'   = $' ' '*'   $' ';
$'/'   = $' ' '/'   $' ';   $'%'   = $' ' '%'   $' ';
$'~'   = $' ' '~'   $' ';   $'!'   = $' ' '!';
$'<'   = $' ' '<'   $' ';   $'>'   = $' ' '>';
$';'   = $' ' ';'   $' ';   $','   = $' ' ','   $' ';
$'('   = $' ' '('   $' ';   $')'   = $' ' ')';
$'{'   = $' ' '{'   $' ';   $'}'   = $' ' '}';
$'['   = $' ' '['   $' ';   $']'   = $' ' ']';
$'.'   = $' ' '.';
/* ----- Identifiers and literals (terminal-equivalent productions) ----- */
ident_first = ANY(&UCASE &LCASE '_');
ident_rest  = SPAN(digits &UCASE &LCASE '_');
Ident       = ($' ' ident_first (ident_rest | epsilon));    /* IDENT */
VarScalar   = ($' ' '$' ident_first (ident_rest | epsilon));    /* VAR_SCALAR */
VarArray    = ($' ' '@' ident_first (ident_rest | epsilon));    /* VAR_ARRAY  */
VarHash     = ($' ' '%' ident_first (ident_rest | epsilon));    /* VAR_HASH   */
VarTwigil   = ($' ' ('$.' | '$!') ident_first (ident_rest | epsilon));  /* VAR_TWIGIL */
VarCapture  = ($' ' '$' SPAN(digits));                          /* VAR_CAPTURE */
VarNamedCapture = ($' ' '$<' BREAK('>') '>');                   /* VAR_NAMED_CAPTURE */
LitInt          = ($' ' SPAN(digits));                          /* LIT_INT */
LitFloat        = ($' ' SPAN(digits) '.' SPAN(digits));         /* LIT_FLOAT */
LitStrSQ        = ($' ' "'" BREAK("'") "'");                    /* LIT_STR  (single-quoted) */
LitStrDQ        = ($' ' '"' BREAK('"') '"');                    /* LIT_INTERP_STR (double-quoted, interp at lower) */
LitRegex        = ($' ' '/' BREAK('/') '/');                    /* LIT_REGEX */
LitMatchGlobal  = ($' ' 'm:g/' BREAK('/') '/');                 /* LIT_MATCH_GLOBAL */
LitSubst        = ($' ' 's/' BREAK('/') '/' BREAK('/') '/' ('g' | epsilon));  /* LIT_SUBST */
HashAngleKey    = (BREAK('>'));                                 /* IDENT between < > (no whitespace) */
/* ====================================================================================================================
 * Grammar productions — mirror raku.y exactly (rule order, alternative order)
 * ====================================================================================================================
 *
 * raku.y top:                            this file:
 *   program  : stmt_list                   Compiland = stmt_list
 *   stmt_list: epsilon                     stmt_list = ARBNO(*stmt)
 *            | stmt_list stmt
 *
 * (left recursion expanded as ARBNO)
 * ==================================================================================================================== */
stmt_list = ARBNO(*stmt);
/* --- stmt --- */
stmt = FENCE(
         /* declared, typed: KW_MY IDENT VAR_X '=' expr ';'  /  KW_MY IDENT VAR_X ';' */
         $'my' $'  ' Ident $'  ' (VarScalar | VarArray | VarHash)
               FENCE( $'=' *expr $';' | $';' )
       /* declared, untyped: KW_MY VAR_X '=' expr ';' */
       | $'my' $'  ' (VarScalar | VarArray | VarHash) $'=' *expr $';'
       /* output: KW_SAY  / KW_SAY  '(' expr ',' expr ')' */
       | $'say'   FENCE( $'(' *expr $',' *expr $')' $';' | *expr $';' )
       | $'print' FENCE( $'(' *expr $',' *expr $')' $';' | *expr $';' )
       /* take, return */
       | $'take'   *expr $';'
       | $'return' FENCE( *expr $';' | $';' )
       /* hash-delete (must come BEFORE plain assignments) */
       | $'delete' VarHash $'<' HashAngleKey $'>' $';'
       | $'delete' VarHash $'{' *expr $'}' $';'
       /* assignments and field-write — must come BEFORE bare expr ';' */
       | VarScalar $'.' Ident $'=' *expr $';'
       | VarArray  $'[' *expr $']' $'=' *expr $';'
       | VarHash   $'<' HashAngleKey $'>' $'=' *expr $';'
       | VarHash   $'{' *expr $'}' $'=' *expr $';'
       | VarScalar $'=' *expr $';'
       /* compound statements */
       | *if_stmt
       | *while_stmt
       | *for_stmt
       | *given_stmt
       | $'try' *block FENCE( $'CATCH' *block | epsilon )
       | *unless_stmt
       | *until_stmt
       | *repeat_stmt
       | *sub_decl
       | *class_decl
       /* bare expression statement (always last) */
       | *expr $';'
       );
/* --- if_stmt --- */
if_stmt = $'if' $'(' *expr $')' *block
          FENCE( $'else' *block
               | $'else' *if_stmt
               | epsilon
               );
/* --- while_stmt --- */
while_stmt = $'while' $'(' *expr $')' *block;
/* --- unless_stmt --- */
unless_stmt = $'unless' $'(' *expr $')' *block
              FENCE( $'else' *block | epsilon );
/* --- until_stmt --- */
until_stmt = $'until' $'(' *expr $')' *block;
/* --- repeat_stmt --- */
repeat_stmt = $'repeat' *block;
/* --- for_stmt --- */
for_stmt = $'for' FENCE(
              /* KW_FOR add_expr OP_RANGE   add_expr OP_ARROW VAR_SCALAR block */
              /* KW_FOR add_expr OP_RANGE_EX add_expr OP_ARROW VAR_SCALAR block */
                *add_expr ($'..^' | $'..') *add_expr $'->' VarScalar *block
              /* KW_FOR expr OP_ARROW VAR_SCALAR block */
              | *expr $'->' VarScalar *block
              /* KW_FOR expr block */
              | *expr *block
              );
/* --- given_stmt --- */
given_stmt = $'given' *expr $'{' *when_list FENCE( $'default' *block | epsilon ) $'}';
/* --- when_list --- */
when_list = ARBNO( $'when' *expr *block );
/* --- sub_decl --- */
sub_decl = $'sub' Ident $'(' FENCE( *param_list | epsilon ) $')' *block;
/* --- class_decl --- */
class_decl = $'class' Ident $'{' *class_body_list $'}';
/* --- class_body_list --- */
class_body_item = FENCE(
                    $'has' VarTwigil $';'
                  | $'has' VarScalar $';'
                  | $'method' Ident $'(' FENCE( *param_list | epsilon ) $')' *block
                  );
class_body_list = ARBNO(*class_body_item);
/* --- named_arg_list --- */
named_arg = Ident $'=>' *expr;
named_arg_list = *named_arg ARBNO( $',' *named_arg );
/* --- param_list --- */
param_list = VarScalar ARBNO( $',' VarScalar );
/* --- block --- */
block = $'{' *stmt_list $'}';
/* --- closure --- */
closure = $'{' *expr $'}';
/* ====================================================================================================================
 * Expression precedence chain.  raku.y is left-recursive; we translate to
 * right-iterative `X = Y ARBNO(op Y)` form.  Tree action will fold left at reduce
 * time; pure recognizer here just consumes the chain.
 *
 * raku.y precedence (low → high):
 *   expr      : VAR_SCALAR '=' expr  |  KW_GATHER block  |  cmp_expr
 *   cmp_expr  : (left-assoc &&, ||, ==, !=, <, >, <=, >=, eq, ne, ~~)
 *   range_expr: (left-assoc .., ..^)        [folded into cmp_expr tail]
 *   add_expr  : (left-assoc +, -, ~)
 *   mul_expr  : (left-assoc *, /, %, div)
 *   unary_expr: '-' unary | '!' unary | postfix
 *   postfix   : call_expr
 *   call_expr : IDENT '(' args ')' | atom '.' IDENT '(' args ')' | KW_DIE expr | KW_MAP/GREP/SORT ... | atom
 *   atom      : literals / variables / parens
 * ==================================================================================================================== */
/* --- expr --- */
expr = FENCE(
         VarScalar $'=' *expr        /* VAR_SCALAR '=' expr */
       | $'gather' *block            /* KW_GATHER block     */
       | *cmp_expr                   /* cmp_expr            */
       );
/* --- cmp_expr  (left-assoc chain of comparisons / logical ops) ---
 * raku.y interleaves `add_expr` and `cmp_expr` on each side of the operator.
 * The natural Snocone shape: a head non-cmp arm, then a tail repeating ops.
 */
cmp_expr_tail = FENCE(
                  $'&&' *add_expr
                | $'||' *add_expr
                | $'=='  *add_expr
                | $'!='  *add_expr
                | $'<='  *add_expr
                | $'>='  *add_expr
                | $'<'   *add_expr
                | $'>'   *add_expr
                | $'eq'  *add_expr
                | $'ne'  *add_expr
                | $'~~'  FENCE( LitMatchGlobal | LitSubst | LitRegex )
                );
cmp_expr = *range_expr ARBNO(*cmp_expr_tail);
/* --- range_expr --- */
range_expr = *add_expr FENCE( ($'..^' | $'..') *add_expr | epsilon );
/* --- add_expr --- */
add_expr_tail = FENCE( $'+' *mul_expr | $'-' *mul_expr | $'~' *mul_expr );
add_expr      = *mul_expr ARBNO(*add_expr_tail);
/* --- mul_expr --- */
mul_expr_tail = FENCE( $'*' *unary_expr | $'/' *unary_expr | $'%' *unary_expr | $'div' *unary_expr );
mul_expr      = *unary_expr ARBNO(*mul_expr_tail);
/* --- unary_expr --- */
unary_expr = FENCE(
               $'-' *unary_expr     /* UMINUS  */
             | $'!' *unary_expr     /* '!'     */
             | *postfix_expr
             );
/* --- postfix_expr === call_expr per raku.y --- */
postfix_expr = *call_expr;
/* --- call_expr ---
 * raku.y mixes prefix-keyword call forms (die/map/grep/sort) with
 * IDENT '(' args ')' and atom '.' IDENT '(' args ')' postfix chains.
 * The cleanest Snocone shape: try keyword-prefix call forms first,
 * then IDENT '(' args ')' / IDENT '.' KW_NEW '(' ...,
 * then atom followed by ARBNO of method-call postfixes.
 */
arg_list = *expr ARBNO( $',' *expr );
new_args = FENCE( *named_arg_list | epsilon );
call_args = FENCE( *arg_list | epsilon );
method_postfix = $'.' FENCE(
                   $'new' $'(' *new_args $')'      /* covered separately when LHS is IDENT */
                 | Ident $'(' *call_args $')'
                 | Ident
                 );
call_expr = FENCE(
              $'die' *expr
            | $'map'  *closure *expr
            | $'grep' *closure *expr
            | $'sort' FENCE( *closure *expr | *expr )
            /* IDENT-headed call forms: IDENT '(' args ')'  |  IDENT '.' KW_NEW '(' named_args ')' */
            | Ident FENCE(
                  $'(' *call_args $')'
                | $'.' $'new' $'(' *new_args $')'
                )
            /* atom followed by ARBNO of `.` postfix (method call or bare field) */
            | *atom ARBNO(*method_postfix)
            );
/* --- atom --- */
atom = FENCE(
         LitFloat
       | LitInt
       | LitStrSQ
       | LitStrDQ
       | VarCapture
       | VarNamedCapture
       | $'exists' VarHash FENCE( $'<' HashAngleKey $'>' | $'{' *expr $'}' )
       | VarArray $'[' *expr $']'
       | VarHash  $'<' HashAngleKey $'>'
       | VarHash  $'{' *expr $'}'
       | VarScalar
       | VarArray
       | VarHash
       | VarTwigil
       | Ident
       | $'(' *expr $')'
       );
/* ====================================================================================================================
 * Compiland — top-level program (raku.y `program : stmt_list`)
 * ==================================================================================================================== */
Compiland = POS(0) *stmt_list $' ' RPOS(0);
/* ====================================================================================================================
 * Driver
 * ==================================================================================================================== */
Src = '';
while ((Line = INPUT)) Src = Src Line nl;
if (Src ? Compiland) {
    OUTPUT = 'Parse OK';
} else {
    OUTPUT = 'Parse Error';
}
