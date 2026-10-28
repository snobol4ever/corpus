:- use_module(library(clpfd)).
q(N, Qs) :- length(Qs, N), Qs ins 1..N, safe(Qs), label(Qs).
safe([]).
safe([Q|Qs]) :- no_attack(Q, Qs, 1), safe(Qs).
no_attack(_, [], _).
no_attack(Q, [Q1|Qs], D) :- Q #\= Q1, abs(Q - Q1) #\= D, D1 is D + 1, no_attack(Q, Qs, D1).
main :- q(4, Qs), write(Qs), nl, fail.
main :- write(done), nl.
:- initialization(main).
