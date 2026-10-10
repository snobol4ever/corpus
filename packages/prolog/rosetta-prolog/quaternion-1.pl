% A quaternion is represented as a complex term qx/4
add(qx(R0,I0,J0,K0), qx(R1,I1,J1,K1), qx(R,I,J,K)) :-
	!, R is R0+R1, I is I0+I1, J is J0+J1, K is K0+K1.
add(qx(R0,I,J,K), F, qx(R,I,J,K)) :-
	number(F), !, R is R0 + F.
add(F, qx(R0,I,J,K), Qx) :-
	add(qx(R0,I,J,K), F, Qx).
mul(qx(R0,I0,J0,K0), qx(R1,I1,J1,K1), qx(R,I,J,K)) :- !,
	R is R0*R1 - I0*I1 - J0*J1 - K0*K1,
	I is R0*I1 + I0*R1 + J0*K1 - K0*J1,
	J is R0*J1 - I0*K1 + J0*R1 + K0*I1,
	K is R0*K1 + I0*J1 - J0*I1 + K0*R1.
mul(qx(R0,I0,J0,K0), F, qx(R,I,J,K)) :-
	number(F), !, R is R0*F, I is I0*F, J is J0*F, K is K0*F.
mul(F, qx(R0,I0,J0,K0), Qx) :-
	mul(qx(R0,I0,J0,K0),F,Qx).
abs(qx(R,I,J,K), Norm) :-
	Norm is sqrt(R*R+I*I+J*J+K*K).
negate(qx(Ri,Ii,Ji,Ki),qx(R,I,J,K)) :-
	R is -Ri, I is -Ii, J is -Ji, K is -Ki.
conjugate(qx(R,Ii,Ji,Ki),qx(R,I,J,K)) :-
	I is -Ii, J is -Ji, K is -Ki.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the quaternion operations over qx/4 and never calls them; the driver runs each on the task's q = (1,2,3,4), q1 = (2,3,4,5), q2 = (3,4,5,6), r = 7.
:- initialization((Q = qx(1,2,3,4), Q1 = qx(2,3,4,5), Q2 = qx(3,4,5,6), R = 7, abs(Q, N), format("abs(q) = ~w~n", [N]), negate(Q, Ng), format("-q = ~w~n", [Ng]), conjugate(Q, C), format("conj(q) = ~w~n", [C]), add(Q, R, QR), format("q + r = ~w~n", [QR]), add(R, Q, RQ), format("r + q = ~w~n", [RQ]), add(Q1, Q2, S), format("q1 + q2 = ~w~n", [S]), mul(Q, R, M1), format("q * r = ~w~n", [M1]), mul(R, Q, M2), format("r * q = ~w~n", [M2]), mul(Q1, Q2, P12), format("q1 * q2 = ~w~n", [P12]), mul(Q2, Q1, P21), format("q2 * q1 = ~w~n", [P21]))).
