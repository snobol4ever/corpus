% ex08 -- ISO errors raised by builtins implemented in the runtime, caught by catch/3 at every depth, inside findall, negation and call/N (DESIGN-PLAN exceptions, the cto 2026-10-29)
:- initialization(main).
try(G, R) :- catch((G -> R = ok ; R = failed), error(E, _), (E =.. [C|_], R = caught(C))).
deep(0, G) :- call(G).
deep(N, G) :- M is N - 1, deep(M, G).
main :-
    try(atom_length(_, _), R1), try(atom_length(abc, L), R2), try(number_codes(_, "12a"), R3), try(arg(a, f(a), _), R4),
    try(functor(_, _, _), R5), try(X is foo + 1, R6), try(atom_codes(_, _), R7), try(_ is 1 / 0, R8), try(succ(_, 0), R9),
    write([R1, R2, L, R3, R4, R5, R6, R7, R8, R9]), nl,
    try(deep(30, (_ is bar + 1)), D1), write(D1), nl,
    catch(findall(Y, (member(Y, [1, 2, 3]), Y2 is Y + a, Y2 > 0), Ys), error(type_error(T, _), _), Ys = caught(T)), write(Ys), nl,
    catch((\+ (_ is 1 + z)), error(E2, _), (E2 =.. [C2|_], write(neg_caught(C2)), nl)),
    catch(call(atom_length, _, _), error(E3, _), (E3 =.. [C3|_], write(call_caught(C3)), nl)),
    catch(throw(my(ball, [1, 2])), my(B, Lst), (write(B-Lst), nl)),
    ( var(X) -> write(x_unbound) ; write(x_bound) ), nl.
