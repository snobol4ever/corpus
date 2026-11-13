:- use_module(library(lists)).
:- initialization(main).
t(T, G) :- catch((call(G) -> \+ \+ (numbervars(T, 0, _), writeq(T)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
main :-
    t(E1, catch(length(_, 100000000), error(E1, _), true)),
    t(E2, catch((length(L2, 100000000), L2 = [_|_]), error(E2, _), true)),
    t(E3, (current_prolog_flag(stack_limit, Old3), set_prolog_flag(stack_limit, 1000000), catch((numlist(1, 100000, L3), L3 = [_|_], length(L3, _)), error(E3, _), true), set_prolog_flag(stack_limit, Old3))),
    t(L4, (length(L4, 3), L4 = [a|_])),
    t(L5, numlist(1, 5, L5)),
    t(L6, (length(L6, 0))),
    t(N7, (length(L7, 7), length(L7, N7))),
    t(yes, (current_prolog_flag(stack_limit, X8), integer(X8))),
    t(E9, (current_prolog_flag(stack_limit, Old), set_prolog_flag(stack_limit, 1000000), catch(length(_, 100000), error(E9, _), true), set_prolog_flag(stack_limit, Old))),
    t(N10, (length(L10, 10000), length(L10, N10))),
    t(L11, (numlist(5, 1, L11))),
    t(E12, catch(length(_, -1), error(E12, _), true)),
    t(E13, catch(length(_, a), error(E13, _), true)),
    t(E14, catch(numlist(a, 3, _), error(E14, _), true)), t(E15, catch(numlist(1, b, _), error(E15, _), true)), t(E16, catch(numlist(_, 3, _), error(E16, _), true)), t(L17, numlist(3, 3, L17)).
