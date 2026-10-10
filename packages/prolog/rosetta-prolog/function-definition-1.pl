multiply(A, B, P) :- P is A * B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines multiply/3 and never calls it; the driver multiplies 5 by 2 as function-definition-2's go/0 does.
:- initialization((multiply(5, 2, P), format("The product is ~d.~n", [P]))).
