:- initialization(main).
:- dynamic(f/1).
:- dynamic(g/1).
f(1). f(2). f(3).
g(1). g(2). g(3).
t(between) :- between(1, 3, X), write(X), nl, throw(x).
t(repeat) :- repeat, write(r), nl, throw(x).
t(sub_atom) :- sub_atom(abc, B, 1, _, S), write(B-S), nl, throw(x).
t(clause) :- clause(f(X), true), write(X), nl, throw(x).
t(atom_concat) :- atom_concat(A, B, ab), write(A+B), nl, throw(x).
t(between_throw_in_callee) :- between(1, 3, X), write(X), nl, thr.
t(between_undefined_callee) :- between(1, 3, X), write(X), nl, undefined_zz(X).
t(between_deep_callee) :- between(1, 3, X), write(X), nl, deep(X).
t(user_facts) :- g(X), write(X), nl, throw(x).
t(disjunction) :- (X = 1 ; X = 2 ; X = 3), write(X), nl, throw(x).
t(member) :- member(X, [a, b, c]), write(X), nl, throw(x).
t(retract) :- retract(f(X)), write(X), nl, throw(x).
t(redo_between) :- ( between(1, 3, X), write(X), nl, fail ; true ).
t(redo_repeat) :- flag_reset, repeat, bump(N), write(N), nl, N >= 3, !.
t(redo_sub_atom) :- ( sub_atom(abc, B, 1, _, S), write(B-S), nl, fail ; true ).
t(redo_clause) :- ( clause(g(X), true), write(X), nl, fail ; true ).
t(redo_atom_concat) :- ( atom_concat(A, B, ab), write(A+B), nl, fail ; true ).
t(redo_retract) :- assertz(h(1)), assertz(h(2)), ( retract(h(X)), write(X), nl, fail ; true ).
:- dynamic(h/1).
:- dynamic(cnt/1).
flag_reset :- retractall(cnt(_)), assertz(cnt(0)).
bump(N) :- retract(cnt(M)), N is M + 1, assertz(cnt(N)).
thr :- throw(x).
deep(X) :- X > 0, thr.
formal(error(F, _), F) :- !.
formal(B, B).
names([between, repeat, sub_atom, clause, atom_concat, between_throw_in_callee, between_undefined_callee, between_deep_callee, user_facts, disjunction, member, retract, redo_between, redo_repeat, redo_sub_atom, redo_clause, redo_atom_concat, redo_retract]).
main :- names(L), forall(member(N, L), (write(N), write(':'), nl, catch(t(N), E, (formal(E, F), write(caught(F)), nl)))), halt.
