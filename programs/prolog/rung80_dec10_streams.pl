:- initialization(main).
main :-
    telling(T0), seeing(S0),
    write(std(T0,S0)), nl,
    tell('/tmp/rung80.txt'),
    write(alpha(1)), write('.'), nl,
    write(beta(two)), write('.'), nl,
    told,
    append('/tmp/rung80.txt'),
    write(gamma(3)), write('.'), nl,
    told,
    telling(T1), write(after_told(T1)), nl,
    see('/tmp/rung80.txt'),
    read(A), read(B), read(C), read(D),
    seen,
    write(read4(A,B,C,D)), nl,
    seeing(S1), write(after_seen(S1)), nl,
    write(done), nl,
    halt.
