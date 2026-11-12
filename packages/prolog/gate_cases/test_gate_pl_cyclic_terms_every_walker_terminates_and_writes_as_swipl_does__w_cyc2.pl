:- dynamic(p/1).
main :-
    X1 = f(X1, X1), term_variables(X1, V1), length(V1, N1), write(N1), nl,
    X2 = f(X2, Y2), term_variables(X2, V2), ( V2 == [Y2] -> write(tv2) ; write(notv2) ), nl,
    X3 = f(X3), ( ground(X3) -> write(g3) ; write(ng3) ), X4 = f(X4, _), ( ground(X4) -> write(g4) ; write(ng4) ), nl,
    X5 = f(X5), ( subsumes_term(f(_), f(X5)) -> write(s5) ; write(ns5) ), ( subsumes_term(f(X5), f(_)) -> write(s5b) ; write(ns5b) ), ( subsumes_term(X5, X5) -> write(s5c) ; write(ns5c) ), nl,
    L6 = [A6, B6, C6|L6], numbervars(L6, 0, N6), print(N6-A6-B6-C6), nl,
    X7 = f(X7), numbervars(X7, 0, N7), write(N7), nl,
    L8 = [_|L8], catch(length(L8, _), error(E8, _), true), ( E8 = type_error(list, _) -> write(lerr8) ; write(lnoerr8) ), nl,
    length(L9, 3), length(L9, N9), write(N9), length([a, b|T9], 4), length(T9, M9), write(M9), nl,
    L10 = [c-3, a-1|L10], catch(keysort(L10, _), error(E10, _), true), ( E10 = type_error(list, _) -> write(kerr10) ; write(knoerr10) ), nl,
    L11 = [3, 1|L11], catch(msort(L11, _), error(E11, _), true), ( E11 = type_error(list, _) -> write(merr11) ; write(mnoerr11) ), nl,
    L12 = [a|L12], catch(_ =.. [f|L12], error(E12, _), true), ( E12 = type_error(list, _) -> write(uerr12) ; write(unoerr12) ), nl,
    X13 = f(X13), catch(assertz(p(X13)), error(E13, _), true), write(E13), nl,
    X14 = f(X14), print(X14), nl, writeq(g(X14, 'A b')), nl,
    X15 = f(X15, Y15), Y15 = g(Y15), print(X15), nl,
    X16 = f(Y16, X16), Y16 = g(Y16), print(X16), nl,
    X17 = f(X17), print([X17, X17]), nl, print(-(X17)), nl,
    X18 = -(X18), print(X18), nl,
    X19 = [a|X19], format("~w ~q ~p~n", [X19, X19, X19]),
    X20 = f(X20), with_output_to(string(S20), print(X20)), string_length(S20, N20), write(N20), nl,
    sort([V21], V21), keysort([W21-W21], W21), msort([Z21], Z21), write(ok21), nl,
    compare(O22, 1152921504606846976, 1152921504606846977), write(O22), sort([9007199254740993, 9007199254740992], L22), write(L22), nl.
:- initialization((main, halt)).
