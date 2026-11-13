:- initialization(main).
q(1).
q(2).
cp(0) :- !.
cp(N) :- N > 0, q(_), N1 is N - 1, cp(N1).
on(0) :- !.
on(N) :- N > 0, once(q(_)), N1 is N - 1, on(N1).
cnt(G, C) :- findall(x, G, L), length(L, C).
main :- cnt(cp(3), A), cnt(on(3), B), write(cp(A)), write(' '), write(once(B)), nl.
