:- initialization(main).
main :-
    current_prolog_flag(bounded, B), write(B), nl,
    ( current_prolog_flag(double_quotes, _) -> write(has_dq) ; write(no_dq) ), nl,
    set_prolog_flag(double_quotes, codes),
    current_prolog_flag(double_quotes, D), write(D), nl,
    ( catch(set_prolog_flag(bounded, false), error(permission_error(modify,flag,_),_), write(ro_protected)) ), nl,
    ( catch(set_prolog_flag(no_such_flag, x), error(domain_error(prolog_flag,_),_), write(dom_checked)) ), nl.
