:- initialization(main).
main :-
    open('/tmp/rung77_data.txt', write, W),
    write(W, 'foo(bar, 42, [x,y,z]).'), nl(W),
    write(W, 'hello.'), nl(W),
    write(W, 'p(A, B, A).'), nl(W),
    close(W),
    open('/tmp/rung77_data.txt', read, R),
    read(R, T1), write(t1=T1), nl,
    read(R, T2), write(t2=T2), nl,
    read(R, T3),
    ( T3 = p(A,B,C), A==C, A\==B -> write(t3=shared_ok) ; write(t3=bad) ), nl,
    read(R, T4), write(t4=T4), nl,
    close(R),
    open('/tmp/rung77_data.txt', read, R2), set_input(R2),
    read(X1), write(x1=X1), nl,
    close(R2),
    write(done), nl,
    halt.
