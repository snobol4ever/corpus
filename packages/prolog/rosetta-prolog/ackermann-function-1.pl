:- table ack/3. % memoization reduces the execution time of ack(4,1,X) from several
                % minutes to about one second on a typical desktop computer.
ack(0, N, Ans) :- Ans is N+1.
ack(M, 0, Ans) :- M>0, X is M-1, ack(X, 1, Ans).
ack(M, N, Ans) :- M>0, N>0, X is M-1, Y is N-1, ack(M, Y, Ans2), ack(X, Ans2, Ans).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ack/3 and never calls it; the driver prints A(m, n) for m 0..3 and n 0..4.
:- initialization(forall(between(0, 3, M), (forall(between(0, 4, N), (ack(M, N, A), format("~w ", [A]))), nl))).
