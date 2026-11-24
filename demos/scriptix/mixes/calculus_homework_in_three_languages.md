# Calculus homework in three languages

A sheet of derivatives, worked by three languages, each doing one stage.

* **Snocone parses: text to tree.** One pattern grammar with precedence, unary
  minus, powers, brackets and the functions sin cos tan exp ln sqrt. Its shape
  is the corpus calculator of `demos/snocone/calculator` (Lon, 2026-07-24): the
  pattern matches, then its actions run in order and build the tree on a stack.
  A line it cannot read is refused, with the column.
* **Prolog differentiates: tree to tree.** The rules of the textbook, one
  clause each: sum, product, quotient, power, chain. Then a simplifier, run
  until nothing changes.
* **Icon prints: tree to result.** Ordinary algebra with the fewest brackets,
  and a check no textbook gives: it works the function out near three points
  and the derivative at them, and says whether the slope agrees.

ONE TREE, DECLARED BY THE SAME NAMES. Snocone says `DATA('tree(t,v,n,c)')` and
Icon says `record tree(t, v, n, c)`: a type `t`, a value `v`, the number of
children `n` and the children `c`. They are one type. Icon reads the fields of
a tree Snocone built, and Snocone's array of children is a list to Icon.

Prolog runs the sheet: for each line it calls Snocone's `parse`, proves the
derivative, and calls Icon's `answer`. THE TREE GOES IN TO PROLOG AS A TREE:
`parse` returns the record, and Prolog looks inside it by unifying it with
`tree(T, V, N, C)`, the children a Prolog list. On the way out, a Prolog term
does not yet cross a call (it is being built), so the derivative travels to
Icon written out as a term, `times(x,sin(x))`, which Snocone reads back into a
tree with a second small pattern; the function itself reaches Icon as a tree in
the shared global `problem`. When a Prolog term crosses, that text goes too.

```Snocone
DATA('tree(t,v,n,c)');
S = ARRAY(200);
M = ARRAY(50);
// The actions: each runs after the match, in order, on the stack of trees.
function PSH() { PSH = .S[sp = sp + 1]; nreturn; }
function NUM() { S[sp] = tree('num', S[sp], 0); NUM = .dm; nreturn; }
function VAR() { S[sp] = tree('var', S[sp], 0); VAR = .dm; nreturn; }
function BIN(ty) a {
    a = ARRAY(2);
    a[1] = S[sp - 1];
    a[2] = S[sp];
    S[sp = sp - 1] = tree(ty, '', 2, a);
    return;
}
function ADD() { BIN('plus');  ADD = .dm; nreturn; }
function SUB() { BIN('minus'); SUB = .dm; nreturn; }
function MUL() { BIN('times'); MUL = .dm; nreturn; }
function DIV() { BIN('over');  DIV = .dm; nreturn; }
function POW() { BIN('power'); POW = .dm; nreturn; }
function NEG() a {
    a = ARRAY(1);
    a[1] = S[sp];
    S[sp] = tree('neg', '', 1, a);
    NEG = .dm;
    nreturn;
}
function CALL() a {
    a = ARRAY(1);
    a[1] = S[sp];
    S[sp = sp - 1] = tree(S[sp], '', 1, a);
    CALL = .dm;
    nreturn;
}
// MARK and BUILD serve the term reader: a name, then however many trees follow it.
function MARK() { M[mp = mp + 1] = sp; MARK = .dm; nreturn; }
function BUILD() a, k, i {
    k = sp - M[mp];
    a = ARRAY(k);
    i = 0;
BUILD_1:
    if (~(i = LT(i, k) i + 1)) goto BUILD_2;
    a[i] = S[M[mp] + i];
    goto BUILD_1;
BUILD_2:
    sp = M[mp];
    mp = mp - 1;
    S[sp] = tree(S[sp], '', k, a);
    BUILD = .dm;
    nreturn;
}
function far() { most = GT(c0, most) c0; return; }
// THE GRAMMAR OF A FORMULA. g_num a number, g_var a letter, g_fn a function of
// one argument, g_atom, g_pow a power (right to left), g_fac a signed factor,
// g_term a product, g_sum a sum. HERE notes how far any token was read.
digits = '0123456789';
here   = @c0 *far();
g_num  = (SPAN(digits) ('.' SPAN(digits) | '')) . *PSH() . *NUM() here;
g_var  = ANY(&LCASE) . *PSH() . *VAR() here;
g_fn   = ('sin' | 'cos' | 'tan' | 'exp' | 'ln' | 'sqrt') . *PSH() '(' here *g_sum ')' . *CALL() here;
g_atom = FENCE(g_fn | g_num | g_var | '(' here *g_sum ')' here);
g_pow  = g_atom ('^' here *g_fac . *POW() | '');
g_fac  = FENCE(g_pow | '-' here *g_fac . *NEG() | '+' here *g_fac);
g_term = g_fac ARBNO('*' here g_fac . *MUL() | '/' here g_fac . *DIV());
g_sum  = g_term ARBNO('+' here g_term . *ADD() | '-' here g_term . *SUB());
// THE GRAMMAR OF A TERM, the written form Prolog hands back: name(term, ...), a name, a number.
t_num  = (('-' | '') SPAN(digits) ('.' SPAN(digits) | '')) . *PSH() . *NUM();
t_name = SPAN(&LCASE);
t_term = t_name . *PSH() . *MARK() '(' *t_term ARBNO(',' *t_term) ')' . *BUILD()
       | t_num | t_name . *PSH() . *VAR();
// tree_of(text): the tree of a term. Icon calls this with Prolog's answer.
function tree_of(text) {
    sp = 0;
    mp = 0;
    if (~(text ? POS(0) t_term RPOS(0))) freturn;
    tree_of = S[1];
    return;
}
// parse(line): 'd/dx FORMULA' as the tree d of the variable x over the formula's
// tree, which is also left in PROBLEM; or the tree error of the COLUMN.
function parse(line) {
    parsed = parsed + 1;
    if (~(line ? POS(0) 'd/d' ANY(&LCASE) . wrt SPAN(' ') REM . body)) {
        parse = tree('error', 1, 0);
        return;
    }
    text = body;
parse_2:
    if (text ? ' ' = '') goto parse_2;
    sp = 0;
    most = 0;
    if (~(text ? POS(0) g_sum RPOS(0))) goto parse_3;
    problem = S[1];
    whole = ARRAY(1);
    whole[1] = problem;
    parse = tree('d', wrt, 1, whole);
    return;
// Refused. MOST is how many characters, blanks apart, were read; the column
// is that of the next one in the line as it was written.
parse_3:
    i = 0;
    k = 0;
parse_4:
    i = i + 1;
    if (GT(i, SIZE(body))) goto parse_5;
    if (IDENT(SUBSTR(body, i, 1), ' ')) goto parse_4;
    k = k + 1;
    if (~EQ(k, most + 1)) goto parse_4;
parse_5:
    parse = tree('error', SIZE(line) - SIZE(body) + i, 0);
    return;
}
```

```Icon
global parsed, worked, agreed, problem
global tree_of               # Snocone's function, declared because this section calls it
record tree(t, v, n, c)

# prec(x): how tightly the top of the tree x binds.
procedure prec(x)
    return case x.t of { "plus" | "minus" | "neg": 1; "times" | "over": 2; "power": 4; "num": if x.v < 0 then 1 else 6; default: 6 };
end
# show(x, need): x in ordinary algebra, bracketed only if it binds more loosely than need.
procedure show(x, need)
    local s, k;
    /need := 0;
    k := x.c;
    s := case x.t of {
        "num" | "var": string(x.v);
        "plus":  show(k[1], 1) || " + " || show(k[2], 1);
        "minus": show(k[1], 1) || " - " || show(k[2], 2);
        "times": show(k[1], 2) || "*" || show(k[2], 2);
        "over":  show(k[1], 2) || "/" || show(k[2], 3);
        "neg":   "-" || show(k[1], 2);
        "power": show(k[1], 5) || "^" || show(k[2], 4);
        default: x.t || "(" || show(k[1]) || ")"
    };
    return if prec(x) < need then "(" || s || ")" else s;
end

# value(x, name, at): the number x comes to when the variable name is at. Fails where it has none.
procedure value(x, name, at)
    local a, b;
    if x.t == "num" then return real(x.v);
    if x.t == "var" then return if x.v == name then at else 1.5;
    a := value(x.c[1], name, at) | fail;
    if x.n = 2 then b := value(x.c[2], name, at) | fail;
    return case x.t of {
        "plus": a + b;  "minus": a - b;  "times": a * b;  "over": a / (0.0 ~= b);
        "neg": -a;      "power": if b = integer(b) then a ^ integer(b) else (0.0 < a) ^ b;
        "sin": sin(a);  "cos": cos(a);   "tan": tan(a);   "exp": exp(a);
        "ln": log(0.0 < a);              "sqrt": sqrt(0.0 <= a)
    };
end
# slope_agrees(f, d, name): the slope of f near three points against d at them.
procedure slope_agrees(f, d, name)
    local at, h, rise, want;
    h := 0.00001;
    every at := 0.7 | 1.3 | 2.1 do {
        rise := (value(f, name, at + h) - value(f, name, at - h)) / (2 * h) | fail;
        want := value(d, name, at) | fail;
        if abs(rise - want) > 0.0001 * (1 + abs(want)) then fail;
    };
    return;
end

# answer(line, name, dtext): Prolog hands over the problem, its variable and the derivative as a term.
# The function is the tree Snocone left in the global problem; Snocone reads the term into a tree too.
procedure answer(line, name, dtext)
    local d, ok;
    /worked := 0; /agreed := 0;
    d := tree_of(dtext) | stop("no tree for ", dtext);
    worked +:= 1;
    ok := if slope_agrees(problem, d, name) then { agreed +:= 1; "the slope agrees at three points" } else "THE SLOPE DIFFERS";
    write(line);
    write("     = ", left(show(d), 44), ok);
    return ok;
end
# refused(line, column): Snocone could not read the line.
procedure refused(line, column)
    write(line);
    write(repl(" ", column - 1), "^ not a formula from column ", column);
    return column;
end
procedure report(n)
    write(parsed, " lines read by Snocone, ", worked, " derivatives proved by Prolog, ", agreed, " checked by Icon and found to agree");
    return agreed;
end
procedure main()
end
```

```Prolog
% d(F, X, D): D is the derivative of F with respect to X. One clause a rule.
d(X, X, 1) :- !.
d(C, _, 0) :- atomic(C), !.
d(plus(U, V), X, plus(DU, DV)) :- d(U, X, DU), d(V, X, DV).
d(minus(U, V), X, minus(DU, DV)) :- d(U, X, DU), d(V, X, DV).
d(neg(U), X, neg(DU)) :- d(U, X, DU).
d(times(U, V), X, plus(times(DU, V), times(U, DV))) :- d(U, X, DU), d(V, X, DV).
d(over(U, V), X, over(minus(times(DU, V), times(U, DV)), power(V, 2))) :- d(U, X, DU), d(V, X, DV).
d(power(U, N), X, times(times(N, power(U, M)), DU)) :- number(N), !, M is N - 1, d(U, X, DU).
d(power(U, V), X, times(power(U, V), plus(times(DV, ln(U)), times(V, over(DU, U))))) :- d(U, X, DU), d(V, X, DV).
d(sin(U), X, times(cos(U), DU)) :- d(U, X, DU).
d(cos(U), X, neg(times(sin(U), DU))) :- d(U, X, DU).
d(tan(U), X, over(DU, power(cos(U), 2))) :- d(U, X, DU).
d(exp(U), X, times(exp(U), DU)) :- d(U, X, DU).
d(ln(U), X, over(DU, U)) :- d(U, X, DU).
d(sqrt(U), X, over(DU, times(2, sqrt(U)))) :- d(U, X, DU).

% simp(T, S): T simplified, the rules applied inside out until none applies.
simp(T, S) :- compound(T), !, T =.. [F|As], maplist(simp, As, Bs), U =.. [F|Bs], ( r(U, V) -> simp(V, S) ; S = U ).
simp(T, T).
r(plus(A, B), C) :- number(A), number(B), C is A + B.
r(minus(A, B), C) :- number(A), number(B), C is A - B.
r(times(A, B), C) :- number(A), number(B), C is A * B.
r(neg(A), C) :- number(A), C is -A.
r(plus(0, A), A).
r(plus(A, 0), A).
r(minus(A, 0), A).
r(minus(0, A), neg(A)).
r(minus(A, A), 0).
r(times(0, _), 0).
r(times(_, 0), 0).
r(times(1, A), A).
r(times(A, 1), A).
r(over(0, _), 0).
r(over(A, 1), A).
r(over(A, A), 1) :- \+ number(A).
r(power(_, 0), 1).
r(power(A, 1), A).
r(neg(neg(A)), A).
r(plus(A, neg(B)), minus(A, B)).
r(minus(A, neg(B)), plus(A, B)).
r(plus(neg(A), B), minus(B, A)).
r(times(neg(A), B), neg(times(A, B))).
r(times(A, neg(B)), neg(times(A, B))).
r(over(neg(A), B), neg(over(A, B))).
r(times(A, over(B, C)), over(times(A, B), C)).
r(times(over(A, B), C), over(times(A, C), B)).
r(times(A, N), times(N, A)) :- number(N), \+ number(A).
r(times(N, times(M, A)), times(K, A)) :- number(N), number(M), K is N * M.
r(times(times(N, A), B), times(N, times(A, B))) :- number(N).
r(times(A, times(N, B)), times(N, times(A, B))) :- number(N), \+ number(A).
r(times(A, B), times(B, A)) :- \+ number(A), \+ number(B), B \= times(_, _), A @> B.
r(times(A, A), power(A, 2)).
r(times(A, power(A, N)), power(A, M)) :- number(N), M is N + 1.
r(times(power(A, N), A), power(A, M)) :- number(N), M is N + 1.
r(plus(A, A), times(2, A)).
r(plus(times(N, A), times(M, A)), times(K, A)) :- number(N), number(M), K is N + M.

% term_of(Tree, Term): the tree Snocone built, looked into as tree(T, V, N, C), as Prolog's own term.
term_of(tree(T0, V0, _, C), Term) :- atom_string(T, T0), term_of(T, V0, C, Term).
term_of(num, V0, _, Number) :- !, number_string(Number, V0).
term_of(var, V0, _, Name) :- !, atom_string(Name, V0).
term_of(T, _, C, Term) :- maplist(term_of, C, Args), Term =.. [T|Args].

% homework(Line): Snocone parses, Prolog differentiates and simplifies, Icon prints and checks.
homework(Line) :- parse(Line, tree(T0, V, _, C)), atom_string(T, T0), work(T, Line, V, C).
work(error, Line, Column, _) :- refused(Line, Column, _).
work(d, Line, V0, [Tree]) :- atom_string(X, V0), term_of(Tree, F), d(F, X, D0), simp(D0, D), term_to_atom(D, DT), answer(Line, X, DT, _).
```

The sheet: the rules one at a time, then together, two lines that are no
expression, and one whose answer is an identity. <!-- one cell a line -->

```Prolog
:- homework('d/dx 7').
:- homework('d/dx x').
:- homework('d/dx 3*x + 5').
:- homework('d/dx x^4').
:- homework('d/dx x^3 - 2*x^2 + x - 9').
:- homework('d/dx x*sin(x)').
:- homework('d/dx sin(x)/x').
:- homework('d/dx sin(x^2)').
:- homework('d/dx exp(-x^2)').
:- homework('d/dx ln(3*x + 1)').
:- homework('d/dx sqrt(x)*cos(x)').
:- homework('d/dx tan(2*x)').
:- homework('d/dx (x^2 + 1)^3').
:- homework('d/dt a*t^2 + b*t + c').
:- homework('d/dx x^x').
:- homework('d/dx 3*x + * 5').
:- homework('d/dx sin(x').
:- homework('d/dx sin(x)^2 + cos(x)^2').
:- report(0, _).
```
