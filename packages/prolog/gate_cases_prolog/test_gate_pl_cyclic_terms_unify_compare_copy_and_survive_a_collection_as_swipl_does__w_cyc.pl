dag(0, a) :- !.
dag(N, f(T, T)) :- N1 is N - 1, dag(N1, T).
churn(0) :- !.
churn(N) :- _ = g(N, [a, b, c], foo(bar)), N1 is N - 1, churn(N1).
main :-
    X1 = f(X1), ( X1 == X1 -> write(eq1) ; write(neq1) ), nl,
    X2 = f(X2), Y2 = f(Y2), ( X2 == Y2 -> write(eq2) ; write(neq2) ), nl,
    X3 = f(X3), Y3 = f(Y3), ( X3 = Y3 -> write(unif3) ; write(nounif3) ), nl,
    X4 = f(X4), Y4 = f(f(Y4)), ( X4 = Y4 -> write(unif4) ; write(nounif4) ), nl,
    X5 = f(X5), Y5 = f(f(Y5)), ( X5 == Y5 -> write(eq5) ; write(neq5) ), nl,
    X6 = f(X6), Y6 = f(Y6), compare(O6, X6, Y6), write(O6), nl,
    X7 = s(X7, _), Y7 = s(Y7, _), ( X7 @< Y7 -> write(lt7) ; write(nlt7) ), nl,
    X8 = s(_, X8), Y8 = s(_, Y8), ( X8 @< Y8 -> write(lt8) ; write(nlt8) ), ( X8 == Y8 -> write(eq8) ; write(neq8) ), nl,
    X9 = [0, 1|X9], Y9 = [0, 2|Y9], compare(O9, a(1, X9), a(1, Y9)), write(O9), nl,
    L10 = [1, 2, 3|L10], M10 = [1, 2, 3, 1, 2, 3|M10], ( L10 == M10 -> write(eq10) ; write(neq10) ), ( L10 = M10 -> write(unif10) ; write(nounif10) ), nl,
    L11 = [1, 2, 3|L11], M11 = [A11, B11, C11|M11], unify_with_occurs_check(L11, M11), write(A11-B11-C11), nl,
    X12 = f(X12), copy_term(X12, Z12), ( Z12 == X12 -> write(copyeq12) ; write(copyneq12) ), ( acyclic_term(Z12) -> write(acyc12) ; write(cyc12) ), nl,
    L13 = [_, _, _|L13], copy_term(L13, V13), V13 = [_, _, _|T13], ( V13 == T13 -> write(yes13) ; write(no13) ), nl,
    X14 = f(X14), copy_term(foo(X14, Y14), foo(Z14, Y14)), ( Z14 == X14 -> write(yes14) ; write(no14) ), nl,
    copy_term(demoen(X15, X15), demoen(Y15, f(Y15))), ( acyclic_term(Y15) -> write(acyc15) ; write(cyc15) ), nl,
    X16 = f(X16), findall(X16, true, [F16]), ( F16 == X16 -> write(found16) ; write(nf16) ), nl,
    X17 = f(X17), catch(throw(X17), B17, true), ( B17 = f(_) -> write(caught17) ; write(other17) ), ( B17 == X17 -> write(eq17) ; write(neq17) ), nl,
    X18 = f(X18, Y18), Y18 = g(X18), Z18 = f(Z18, W18), W18 = g(Z18), ( X18 == Z18 -> write(eq18) ; write(neq18) ), ( X18 = Z18 -> write(unif18) ; write(nounif18) ), nl,
    X19 = f(X19, a), Y19 = f(Y19, b), ( X19 = Y19 -> write(unif19) ; write(nounif19) ), compare(O19, X19, Y19), write(O19), nl,
    dag(40, D1), dag(40, D2), ( D1 == D2 -> write(dageq) ; write(dagneq) ), ( D1 = D2 -> write(dagunif) ; write(dagnounif) ), compare(O20, D1, D2), write(O20), nl,
    X21 = f(X21), churn(3000), X21 = f(f(Q21)), ( Q21 == X21 -> write(survived21) ; write(lost21) ), nl,
    X22 = f(X22, Y22), copy_term(X22-Y22, C22), C22 = (P22-R22), ( var(R22), R22 \== Y22 -> write(fresh22) ; write(stale22) ), arg(1, P22, P22b), ( P22b == P22 -> write(cyc22) ; write(acyc22) ), nl,
    write_term(X1, [max_depth(3)]), nl.
:- initialization((main, halt)).
