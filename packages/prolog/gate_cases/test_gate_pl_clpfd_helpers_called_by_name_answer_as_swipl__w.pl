:- use_module(library(clpfd)).
:- initialization(main).
main :- Vs = [A,B,C], Vs ins 1..3, all_different(Vs), labeling([ff, down], Vs), writeq(Vs), nl,
    [P,Q] ins 1..3, P #< Q, labeling([min, up, bisect], [P,Q]), writeq(P-Q), nl,
    length(Ss, 3), Ss ins 0..5, sum(Ss, #=, 7), Ss = [S1,S2,S3], S1 #< S2, S2 #< S3, label(Ss), writeq(Ss), nl,
    scalar_product([2,3], [X,Y], #=, 12), [X,Y] ins 0..6, label([X,Y]), writeq(X-Y), nl,
    length(Cs, 4), circuit(Cs), Cs = [2|_], label(Cs), writeq(Cs), nl,
    Gs = [G1,G2,G3], Gs ins 1..2, global_cardinality(Gs, [1-2, 2-1]), G1 #= 2, label(Gs), writeq(Gs), nl,
    Ds = [D1,D2,D3,D4], Ds ins 1..4, all_distinct(Ds), D1 #= 1, D2 #= 2, label(Ds), writeq(Ds), nl,
    [R1,R2,R3] ins 0..1, R1 #\/ R2 #<==> R3, R1 #= 0, R3 #= 1, label([R1,R2,R3]), writeq([R1,R2,R3]), nl,
    tuples_in([[T1,T2]], [[1,2],[2,3],[3,1]]), T1 #= 2, writeq(T1-T2), nl, halt.
