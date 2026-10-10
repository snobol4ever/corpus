% SWI-Prolog has transpose/2 in its clpfd library
:- use_module(library(clpfd)).

% N is the dot product of lists V1 and V2.
dot(V1, V2, N) :- maplist(product,V1,V2,P), sumlist(P,N).
product(N1,N2,N3) :- N3 is N1*N2.

% Matrix multiplication with matrices represented
% as lists of lists. M3 is the product of M1 and M2
mmult(M1, M2, M3) :- transpose(M2,MT), maplist(mm_helper(MT), M1, M3).
mm_helper(M2, I1, M3) :- maplist(dot(I1), M2, M3).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines mmult/3 and never calls it; the driver multiplies a 2x3 by a 3x2 matrix and prints the product.
:- initialization((mmult([[1,2,3],[4,5,6]], [[7,8],[9,10],[11,12]], M), format("~w~n", [M]))).
