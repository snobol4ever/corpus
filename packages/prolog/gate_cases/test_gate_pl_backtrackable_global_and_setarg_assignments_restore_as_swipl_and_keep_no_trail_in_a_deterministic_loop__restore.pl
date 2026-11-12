g(V) :- nb_getval(k, V).
t1 :- nb_setval(k, a), ( b_setval(k, b), b_setval(k, c), fail ; g(V), writeln(t1(V)) ).
t2 :- nb_setval(k, a), b_setval(k, b), ( b_setval(k, c), b_setval(k, d), fail ; g(V), writeln(t2(V)) ).
t3 :- nb_setval(k, a), ( member(X, [1, 2, 3]), b_setval(k, x(X)), b_setval(k, y(X)), g(V), writeln(t3(X, V)), fail ; g(W), writeln(t3_end(W)) ).
t4 :- nb_setval(k, a), b_setval(k, b), ( ( member(X, [1, 2]), b_setval(k, c(X)), b_setval(k, d(X)), g(V1), writeln(t4in(X, V1)), fail ; g(V2), writeln(t4mid(V2)) ), b_setval(k, e), fail ; g(V3), writeln(t4end(V3)) ).
t5 :- nb_setval(k, a), ( b_setval(k, 1), ( b_setval(k, 2), b_setval(k, 3), g(A), writeln(t5a(A)), fail ; g(B), writeln(t5b(B)), b_setval(k, 4), b_setval(k, 5), fail ) ; g(C), writeln(t5c(C)) ).
t6 :- nb_setval(k, a), \+ ( b_setval(k, p), b_setval(k, q), fail ), g(V), writeln(t6(V)).
t7 :- nb_setval(k, a), findall(X, ( member(X, [1, 2]), b_setval(k, X), b_setval(k, z) ), L), g(V), writeln(t7(L, V)).
t8 :- nb_setval(k, a), catch(( b_setval(k, m), b_setval(k, n), throw(oops) ), oops, true), g(V), writeln(t8(V)).
t9 :- nb_setval(k, a), ( ( b_setval(k, 1), b_setval(k, 2) ; b_setval(k, 3), b_setval(k, 4) ), g(V), writeln(t9(V)), fail ; g(W), writeln(t9_end(W)) ).
t10 :- nb_setval(k, a), ( member(X, [1, 2, 3]), b_setval(k, x(X)), b_setval(k, y(X)), g(V), writeln(t10(X, V)), X >= 3, ! ; true ), g(W), writeln(t10_end(W)).
t11 :- nb_setval(k, a), member(X, [1, 2]), b_setval(k, p(X)), ( X == 1 -> fail ; true ), g(V), writeln(t11(X, V)).
s1 :- T = f(a,b), ( setarg(1, T, x), setarg(2, T, y), fail ; writeln(s1(T)) ).
s2 :- ( member(_, [1,2]), T = f(a), setarg(1, T, z), writeln(s2(T)), fail ; true ).
s3 :- T = f(a), ( member(X, [1,2,3]), setarg(1, T, X), writeln(s3(T)), fail ; writeln(s3_end(T)) ).
s4 :- T = g(1,2,3), ( setarg(1, T, p), ( setarg(2, T, q), fail ; writeln(s4a(T)) ), setarg(3, T, r), fail ; writeln(s4b(T)) ).
s5 :- T = h(0), ( between(1, 3, I), setarg(1, T, I), I >= 3 -> writeln(s5(T)) ; writeln(no) ).
s6 :- T = k(a), \+ ( setarg(1, T, b), fail ), writeln(s6(T)).
s7 :- T = k(a), findall(x, (member(_, [1,2]), setarg(1, T, c)), _), writeln(s7(T)).
s8 :- T = m(a,b), catch((setarg(1,T,x), throw(e)), e, true), writeln(s8(T)).
s9 :- ( member(X, [1,2]), T = f(X), setarg(1, T, new), writeln(s9(T)), fail ; true ).
s10 :- T = c(0), ( between(1, 50000, I), setarg(1, T, I), I >= 50000 -> writeln(s10(T)) ; true ), ( T = c(V), V > 0, fail ; writeln(s10b(T)) ).
s11 :- T = d(a, b), ( member(X, [1,2]), setarg(X, T, n(X)), numlist(1, 5000, L), length(L, _), writeln(s11(T)), fail ; writeln(s11_end(T)) ).
s12 :- T = e(1), ( setarg(1, T, f(2)), T = e(f(A)), setarg(1, T, A), writeln(s12(T)), fail ; writeln(s12_end(T)) ).
:- t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, halt.
