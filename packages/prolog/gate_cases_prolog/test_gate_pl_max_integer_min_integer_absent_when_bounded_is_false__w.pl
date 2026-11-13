:- initialization(main).
chk(F) :- catch(( current_prolog_flag(F, V) -> write(present(F, V)) ; write(absent(F)) ), E,
                ( E = error(domain_error(prolog_flag, F), _) -> write(absent(F)) ; write(bad(F, E)) )), nl.
main :- ( current_prolog_flag(bounded, B) -> write(bounded(B)) ; write(bounded(missing)) ), nl,
        chk(max_integer), chk(min_integer).
