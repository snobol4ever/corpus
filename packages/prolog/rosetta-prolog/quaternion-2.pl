data(q,  qx(1,2,3,4)).
data(q1, qx(2,3,4,5)).
data(q2, qx(3,4,5,6)).
data(r, 7).

test :-	data(Name, qx(A,B,C,D)), abs(qx(A,B,C,D), Norm),
	writef('abs(%w) is %w\n', [Name, Norm]), fail.
test :- data(q, Qx), negate(Qx, Nqx),
	writef('negate(%w) is %w\n', [q, Nqx]), fail.
test :- data(q, Qx), conjugate(Qx, Nqx),
	writef('conjugate(%w) is %w\n', [q, Nqx]), fail.
test :- data(q1, Q1), data(q2, Q2), add(Q1, Q2, Qx),
	writef('q1+q2 is %w\n', [Qx]), fail.
test :- data(q1, Q1), data(q2, Q2), add(Q2, Q1, Qx),
	writef('q2+q1 is %w\n', [Qx]), fail.
test :- data(q, Qx), data(r, R), mul(Qx, R, Nqx),
	writef('q*r is %w\n', [Nqx]), fail.
test :- data(q, Qx), data(r, R), mul(R, Qx, Nqx),
	writef('r*q is %w\n', [Nqx]), fail.
test :- data(q1, Q1), data(q2, Q2), mul(Q1, Q2, Qx),
	writef('q1*q2 is %w\n', [Qx]), fail.
test :- data(q1, Q1), data(q2, Q2), mul(Q2, Q1, Qx),
	writef('q2*q1 is %w\n', [Qx]), fail.
test.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's test/0 is the entry and calls abs/2, negate/2, conjugate/2, add/3 and mul/3 over qx/4 of quaternion-1, so the driver takes that block over (CEO-1613) and calls test/0 once at load (the task's q, q1, q2 and r).
:- include('quaternion-1.pl').
:- initialization(test).
