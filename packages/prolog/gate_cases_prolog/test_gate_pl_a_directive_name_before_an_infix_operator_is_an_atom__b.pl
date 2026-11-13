:- dynamic foo/1.
:- dynamic bar/1, baz/2.
:- dynamic((qux/1, quux/1)).
:- multifile m1/1.
foo(1).
bar(2).
baz(3, 4).
qux(5).
quux(6).
:- initialization(main).
main :- foo(A), bar(B), baz(C, D), qux(E), quux(F), write([A, B, C, D, E, F]), nl,
    assertz(bar(7)), findall(X, bar(X), L), write(L), nl,
    ( m1(_) -> write(m1_true) ; write(m1_fails) ), nl,
    retract(foo(1)), ( foo(_) -> write(foo_left) ; write(foo_gone) ), nl.
