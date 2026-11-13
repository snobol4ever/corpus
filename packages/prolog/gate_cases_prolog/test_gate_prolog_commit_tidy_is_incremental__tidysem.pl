:- initialization(main).
main :- length(L, 2000), fill(L, 0), findall(S, (member(K, [1,2,3]), step(L, K, S)), Ss), writeq(Ss), nl,
        length(M, 300), ( bindmix(M, 1), commits(300), sum_vars(M, S1), S1 > 1000000 -> write(impossible) ; write(backtracked) ), nl,
        ( catch(( length(C, 50), fill(C, 7), commits(50), throw(ball(C)) ), ball(C2), (sum_vars(C2, SC), write(SC))) ), nl,
        g_loop(0, 3000, 0, R), write(R), nl.
fill([], _).
fill([X|Xs], N) :- X = N, N1 is N + 1, fill(Xs, N1).
step(L, K, S) :- bindmix(L, K), commits(500), sum_vars(L, S).
bindmix([], _).
bindmix([X|Xs], K) :- ( var(X) -> X = K ; true ), bindmix(Xs, K).
sum_vars([], 0).
sum_vars([X|Xs], S) :- sum_vars(Xs, S0), ( var(X) -> S is S0 ; S is S0 + X ).
commits(0) :- !.
commits(N) :- ( N > 0 -> true ; fail ), N1 is N - 1, commits(N1).
g_loop(I, N, Acc, R) :- ( I >= N -> R = Acc ; b_setval(k, I), ( I mod 2 =:= 0 -> b_getval(k, V) ; V = 0 ), Acc1 is Acc + V, I1 is I + 1, g_loop(I1, N, Acc1, R) ).
