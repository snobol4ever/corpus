% nrev — naive reverse of a 30-element atom list via append/3 (GNU examples).
% Bottleneck: O(n^2) list construction; exercises a user-defined append plus a
% recursive list generator (data/2). Source: gprolog examples/ExamplesPl. The
% timing harness is replaced by a deterministic result signature (the reversed
% list) per the corpus benchmark convention.
:- initialization(main).
bench__main :- data(L), nrev(L, R), write(R), nl.
nrev([], []).
nrev([X|Rest], Ans) :- nrev(Rest, L), append(L, [X], Ans).
append([], L, L).
append([X|L1], L2, [X|L3]) :- append(L1, L2, L3).
data(X) :- data(X, 30).
data([], 0).
data([a|Y], N) :- N > 0, N1 is N - 1, data(Y, N1).
main :- l__(65536).
l__(N__) :- between(1, N__, _), bench__main, fail.
l__(_).
