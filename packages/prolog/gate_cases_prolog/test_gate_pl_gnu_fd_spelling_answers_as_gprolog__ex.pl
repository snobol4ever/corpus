:- initialization(main).
main :-
    fd_domain(X, 1, 20), X ** 2 #= 49, fd_labeling([X]), write(pow(X)), nl,
    D #= dist(3, 8), write(dist(D)), nl,
    fd_domain(Y, 1, 20), dist(Y, 10) #= 4, fd_labeling([Y]), write(dist_lab(Y)), nl,
    fd_domain(Z, 1, 20), Z / 3 #= 4, fd_labeling([Z]), write(exact_div(Z)), nl,
    ( fd_domain(W, 1, 20), W / 3 #= 4, W #\= 12 -> write(exact_div_alt(W)) ; write(exact_div_only_12) ), nl,
    Q #= quot_rem(17, 5, R), write(qr(Q, R)), nl,
    fd_domain(M, 0, 9), min(M, 4) + max(M, 2) #= 9, fd_labeling([M]), write(minmax(M)), nl,
    fd_domain(K, 0, 30), K // 4 #= 3, K rem 4 #= 1, fd_labeling([K]), write(quot_rem2(K)), nl,
    fd_domain([A,B,C,E], 0, 1), (A #<=> B) #/\ (C #<=> E), A = 1, C = 0, fd_labeling([B,E]), write(and_equiv(B, E)), nl,
    fd_domain([P,S], 0, 1), (P ## S) #\/ (P #==> S), fd_labeling([P,S]), write(or_xor(P, S)), nl,
    fd_domain(T, 1, 9), #\ (T ** 2 #>=# 10), fd_labeling([T]), write(not_pow(T)), nl,
    fd_domain(U, 0, 50), B2 #<=> (U ** 2 #= 25), B2 = 1, fd_labeling([U]), write(reif_pow(U)), nl,
    halt.
