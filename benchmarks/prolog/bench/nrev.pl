% nrev - naive reverse of a 30-element atom list via a user-defined app/3.
% Bottleneck: O(n^2) list construction; exercises a user-defined append plus a
% recursive list generator (data/2). Source: gprolog examples/ExamplesPl. The
% timing harness is replaced by a deterministic result signature (the reversed
% list) per the corpus benchmark convention.
% RENAMED append/3 -> app/3 (2026-07-25, s147): gprolog REFUSES to redefine its
% native append/3 ("native code procedure append/3 cannot be redefined (ignored)")
% and silently measured its own C builtin against SCRIP's interpreted predicate.
% Measured effect of the rename: GNU per-iter 0.0072ms -> 0.0219ms, so the old
% file reported SCRIP at 19.94x GNU when the honest engine-vs-engine ratio is
% 6.68x. Do NOT restore the name append/3 here. See s145 FINDING (PL-SINK-3).
:- initialization(main).
main :- data(L), nrev(L, R), write(R), nl.
nrev([], []).
nrev([X|Rest], Ans) :- nrev(Rest, L), app(L, [X], Ans).
app([], L, L).
app([X|L1], L2, [X|L3]) :- app(L1, L2, L3).
data(X) :- data(X, 30).
data([], 0).
data([a|Y], N) :- N > 0, N1 is N - 1, data(Y, N1).
