:- initialization(main).
:- dynamic(r/1).
:- dynamic(s/1).
r(a) :- !, fail.
r(_).
s(X) :- X == a, !, \+ true.
s(_) :- true.
main :- ( r(a) -> write(wrong) ; write(cut_ok) ), nl, ( s(a) -> write(wrong) ; write(cut_ok) ), nl, assertz((t(X) :- X == a, !, fail)), assertz(t(_)), ( t(a) -> write(wrong) ; write(cut_ok) ), nl, ( t(b) -> write(ok_b) ; write(wrong_b) ), nl.
