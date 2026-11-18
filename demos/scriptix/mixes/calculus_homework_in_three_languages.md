# Calculus homework in three languages

A sheet of derivatives, worked by three languages, each doing one stage.

* **SNOBOL4 parses: text to tree.** One pattern grammar with precedence, unary
  minus, powers, brackets and the functions sin cos tan exp ln sqrt. Its shape
  is the corpus calculator of `demos/snobol4/calculator` (Lon, 2026-07-24): the
  pattern matches, then its actions run in order and build the tree on a stack.
  A line it cannot read is refused, with the column.
* **Prolog differentiates: tree to tree.** The rules of the textbook, one
  clause each: sum, product, quotient, power, chain. Then a simplifier, run
  until nothing changes.
* **Icon prints: tree to result.** Ordinary algebra with the fewest brackets,
  and a check no textbook gives: it works the function out near three points
  and the derivative at them, and says whether the slope agrees.

ONE TREE, DECLARED BY THE SAME NAMES. SNOBOL4 says `DATA('tree(t,v,n,c)')` and
Icon says `record tree(t, v, n, c)`: a type `t`, a value `v`, the number of
children `n` and the children `c`. They are one type. Icon reads the fields of
a tree SNOBOL4 built, and SNOBOL4's array of children is a list to Icon.

Prolog runs the sheet: for each line it calls SNOBOL4's `parse`, proves the
derivative, and calls Icon's `answer`. Measured on the day this was written,
Prolog cannot yet look inside a record and a Prolog term does not cross a call
(both are being built), so across Prolog's two calls the tree travels written
out as a term, `times(x,sin(x))`. SNOBOL4 reads the answer back into a tree
with a second small pattern, and the function itself reaches Icon as a tree in
the shared global `problem`. When Prolog sees a record, the term text goes.

```SNOBOL4
        DATA('tree(t,v,n,c)')
        S = ARRAY(200)
        M = ARRAY(50)
*  The actions: each runs after the match, in order, on the stack of trees.
        DEFINE('PSH()')
        DEFINE('NUM()')
        DEFINE('VAR()')
        DEFINE('BIN(ty)a')
        DEFINE('ADD()')
        DEFINE('SUB()')
        DEFINE('MUL()')
        DEFINE('DIV()')
        DEFINE('POW()')
        DEFINE('NEG()a')
        DEFINE('CALL()a')
        DEFINE('MARK()')
        DEFINE('BUILD()a,k,i')
        DEFINE('far()')                                    :(actions_end)
PSH     PSH = .S[sp = sp + 1]                              :(NRETURN)
NUM     S[sp] = tree('num', S[sp], 0)
        NUM = .dm                                          :(NRETURN)
VAR     S[sp] = tree('var', S[sp], 0)
        VAR = .dm                                          :(NRETURN)
BIN     a = ARRAY(2)
        a[1] = S[sp - 1] ; a[2] = S[sp]
        S[sp = sp - 1] = tree(ty, , 2, a)                  :(RETURN)
ADD     BIN('plus')
        ADD = .dm                                          :(NRETURN)
SUB     BIN('minus')
        SUB = .dm                                          :(NRETURN)
MUL     BIN('times')
        MUL = .dm                                          :(NRETURN)
DIV     BIN('over')
        DIV = .dm                                          :(NRETURN)
POW     BIN('power')
        POW = .dm                                          :(NRETURN)
NEG     a = ARRAY(1)
        a[1] = S[sp]
        S[sp] = tree('neg', , 1, a)
        NEG = .dm                                          :(NRETURN)
CALL    a = ARRAY(1)
        a[1] = S[sp]
        S[sp = sp - 1] = tree(S[sp], , 1, a)
        CALL = .dm                                         :(NRETURN)
*  MARK and BUILD serve the term reader: a name, then however many trees follow it.
MARK    M[mp = mp + 1] = sp
        MARK = .dm                                         :(NRETURN)
BUILD   k = sp - M[mp]
        a = ARRAY(k)
BUILD_1 i = LT(i, k) i + 1                                 :F(BUILD_2)
        a[i] = S[M[mp] + i]                                :(BUILD_1)
BUILD_2 sp = M[mp]
        mp = mp - 1
        S[sp] = tree(S[sp], , k, a)
        BUILD = .dm                                        :(NRETURN)
far     most = GT(c0, most) c0                             :(RETURN)
actions_end
*  THE GRAMMAR OF A FORMULA. g_num a number, g_var a letter, g_fn a function of
*  one argument, g_atom, g_pow a power (right to left), g_fac a signed factor,
*  g_term a product, g_sum a sum. HERE notes how far any token was read.
        digits = '0123456789'
        here   = @c0 *far()
        g_num  = (SPAN(digits) ('.' SPAN(digits) | '')) . *PSH() . *NUM() here
        g_var  = ANY(&LCASE) . *PSH() . *VAR() here
        g_fn   = ('sin' | 'cos' | 'tan' | 'exp' | 'ln' | 'sqrt') . *PSH() '(' here *g_sum ')' . *CALL() here
        g_atom = FENCE(g_fn | g_num | g_var | '(' here *g_sum ')' here)
        g_pow  = g_atom ('^' here *g_fac . *POW() | '')
        g_fac  = FENCE(g_pow | '-' here *g_fac . *NEG() | '+' here *g_fac)
        g_term = g_fac ARBNO('*' here g_fac . *MUL() | '/' here g_fac . *DIV())
        g_sum  = g_term ARBNO('+' here g_term . *ADD() | '-' here g_term . *SUB())
*  THE GRAMMAR OF A TERM, the written form Prolog hands back: name(term, ...), a name, a number.
        t_num  = (('-' | '') SPAN(digits) ('.' SPAN(digits) | '')) . *PSH() . *NUM()
        t_name = SPAN(&LCASE)
        t_term = t_name . *PSH() . *MARK() '(' *t_term ARBNO(',' *t_term) ')' . *BUILD()
+              | t_num | t_name . *PSH() . *VAR()
*  term(x): the tree x written out as a term.
        DEFINE('term(x)i')                                 :(term_end)
term    term = v(x)
        EQ(n(x), 0)                                        :S(RETURN)
        term = t(x) '('
term_1  i = LT(i, n(x)) i + 1                              :F(term_2)
        term = term (GT(i, 1) ',', ) term(c(x)[i])         :(term_1)
term_2  term = term ')'                                    :(RETURN)
term_end
*  tree_of(text): the tree of a term. Icon calls this with Prolog's answer.
        DEFINE('tree_of(text)')                            :(tree_of_end)
tree_of sp = 0 ; mp = 0
        text POS(0) t_term RPOS(0)                         :F(FRETURN)
        tree_of = S[1]                                     :(RETURN)
tree_of_end
*  parse(line): 'd/dx FORMULA' as the term d(x,TREE), the tree left in PROBLEM;
*  or error(COLUMN).
        DEFINE('parse(line)')                              :(parse_end)
parse   parsed = parsed + 1
        line POS(0) 'd/d' ANY(&LCASE) . wrt SPAN(' ') REM . body   :S(parse_1)
        parse = 'error(1)'                                 :(RETURN)
parse_1 text = body
parse_2 text ' ' =                                         :S(parse_2)
        sp = 0 ; most = 0
        text POS(0) g_sum RPOS(0)                          :F(parse_3)
        problem = S[1]
        parse = 'd(' wrt ',' term(problem) ')'             :(RETURN)
*  Refused. MOST is how many characters, blanks apart, were read; the column
*  is that of the next one in the line as it was written.
parse_3 i = 0 ; k = 0
parse_4 i = i + 1
        GT(i, SIZE(body))                                  :S(parse_5)
        IDENT(SUBSTR(body, i, 1), ' ')                     :S(parse_4)
        k = k + 1
        EQ(k, most + 1)                                    :F(parse_4)
parse_5 parse = 'error(' (SIZE(line) - SIZE(body) + i) ')' :(RETURN)
parse_end
END
```

```Icon
global parsed, worked, agreed, problem
global tree_of               # SNOBOL4's function, declared because this section calls it
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
# The function is the tree SNOBOL4 left in the global problem; SNOBOL4 reads the term into a tree too.
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
# refused(line, column): SNOBOL4 could not read the line.
procedure refused(line, column)
    write(line);
    write(repl(" ", column - 1), "^ not a formula from column ", column);
    return column;
end
procedure report(n)
    write(parsed, " lines read by SNOBOL4, ", worked, " derivatives proved by Prolog, ", agreed, " checked by Icon and found to agree");
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

% homework(Line): SNOBOL4 parses, Prolog differentiates and simplifies, Icon prints and checks.
homework(Line) :- parse(Line, Text), term_to_atom(Term, Text), work(Line, Term).
work(Line, error(Column)) :- !, refused(Line, Column, _).
work(Line, d(X, F)) :- d(F, X, D0), simp(D0, D), term_to_atom(D, DT), answer(Line, X, DT, _).
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
