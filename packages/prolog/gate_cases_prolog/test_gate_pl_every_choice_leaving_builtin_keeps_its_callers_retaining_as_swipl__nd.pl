:- dynamic(fact/1).
:- dynamic(r/1).
:- dynamic(fd/1).
:- dynamic(sol/2).
fact(1). fact(2). fact(3).
r(a). r(b). r(c).
fd(1).
ab(a) --> [].
ab(b) --> [].
p1(X) :- between(1, 3, X).
p2(X) :- nb_setval(k, 0), repeat, nb_getval(k, K), X is K + 1, nb_setval(k, X), ( X >= 3 -> ! ; true ).
p3(B-S) :- sub_atom(abc, B, 1, _, S).
p4(I-E) :- nth0(I, [a,b,c], E).
p5(I-E) :- nth1(I, [a,b,c], E).
p6(X) :- clause(fact(X), true).
p7(X) :- retract(r(X)).
p8(P-T) :- current_op(P, T, -).
p9(A) :- current_predicate(fact/A).
p10(X) :- member(X, [a,b,c]).
p11(X-R) :- select(X, [a,b,c], R).
p12(X+Y) :- append(X, Y, [1,2]).
p13(X+Y) :- atom_concat(X, Y, abc).
p14(N) :- length(_, N), ( N >= 2 -> ! ; true ).
p15(Y-L) :- bagof(X, member(X-Y, [1-a,2-b,3-a]), L).
p16(Y-L) :- setof(X, member(X-Y, [2-a,1-b,1-a]), L).
p17(X) :- call(member(X, [x,y,z])).
p18(X) :- catch(member(X, [p,q]), _, true).
p19(X) :- phrase(ab(X), []).
p20(X) :- fd(X).
p21(X) :- catch(X = c, _, true).
p22(X) :- ( true *-> X = s ; X = none ).
q1(X) :- p1(X).
q2(X) :- p2(X).
q3(X) :- p3(X).
q4(X) :- p4(X).
q5(X) :- p5(X).
q6(X) :- p6(X).
q7(X) :- p7(X).
q8(X) :- p8(X).
q9(X) :- p9(X).
q10(X) :- p10(X).
q11(X) :- p11(X).
q12(X) :- p12(X).
q13(X) :- p13(X).
q14(X) :- p14(X).
q15(X) :- p15(X).
q16(X) :- p16(X).
q17(X) :- p17(X).
q18(X) :- p18(X).
q19(X) :- p19(X).
q20(X) :- p20(X).
q21(X) :- p21(X).
q22(X) :- p22(X).
run(K, G, X) :- ( call(G), assertz(sol(K, X)), fail ; true ), findall(Y, sol(K, Y), L), msort(L, S), writeq(K-S), nl.
:- initialization(main).
main :- assertz(fd(2)),
    run(1, q1(X1), X1), run(2, q2(X2), X2), run(3, q3(X3), X3), run(4, q4(X4), X4), run(5, q5(X5), X5),
    run(6, q6(X6), X6), run(7, q7(X7), X7), run(8, q8(X8), X8), run(9, q9(X9), X9), run(10, q10(X10), X10),
    run(11, q11(X11), X11), run(12, q12(X12), X12), run(13, q13(X13), X13), run(14, q14(X14), X14), run(15, q15(X15), X15),
    run(16, q16(X16), X16), run(17, q17(X17), X17), run(18, q18(X18), X18), run(19, q19(X19), X19), run(20, q20(X20), X20),
    run(21, q21(X21), X21), run(22, q22(X22), X22).
