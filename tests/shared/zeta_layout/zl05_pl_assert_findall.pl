% zl05 -- assert and retract in a loop, findall over a dynamic table, atoms built at run time, deep recursion (DESIGN-PLAN zeta-layout, the cto 2026-10-29)
:- dynamic fact/2.
:- initialization(main).
fill(0) :- !.
fill(N) :- number_codes(N, Cs), atom_codes(NA, Cs), atom_concat(key_, NA, K), assertz(fact(K, N)), M is N - 1, fill(M).
drop_odd :- forall((fact(K, V), V mod 2 =:= 1), retract(fact(K, V))).
nrev([], []).
nrev([H|T], R) :- nrev(T, RT), append(RT, [H], R).
loop(0, Acc, Acc) :- !.
loop(N, Acc0, Acc) :- numlist(1, 120, L), nrev(L, R), R = [X|_], Acc1 is Acc0 + X, M is N - 1, loop(M, Acc1, Acc).
main :-
    fill(400),
    drop_odd,
    findall(V, fact(_, V), Vs), length(Vs, Len), sum_list(Vs, Sum),
    findall(K, fact(K, 100), Ks),
    loop(40, 0, Acc),
    findall(A, (between(1, 300, I), number_codes(I, Cs), atom_codes(IA, Cs), atom_concat(ab, IA, A)), As), length(As, NA), last(As, LastA),
    write(Len), write(' '), write(Sum), nl,
    write(Ks), nl,
    write(Acc), write(' '), write(NA), write(' '), write(LastA), nl.
