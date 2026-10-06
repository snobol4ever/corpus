% first_arg_driver.pl -- grades GNU Prolog's Pl2Wam/first_arg.pl (the compiler pass that finds the first-argument key a
% clause's WAM code indexes on) by calling find_first_arg/2 on WAM code and printing the key it finds. first_arg.pl calls
% codification/2 from its own package's inst_codif.pl, so both are included.
:- include('first_arg.pl').
:- include('inst_codif.pl').
:- initialization(main).

t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

main :-
    t(find_first_arg([], _)),
    t(find_first_arg([get_atom(a, 0), proceed], _)),
    t(find_first_arg([get_integer(42, 0), proceed], _)),
    t(find_first_arg([get_nil(0), proceed], _)),
    t(find_first_arg([get_list(0), unify_variable(x(1)), proceed], _)),
    t(find_first_arg([get_structure(f/2, 0), proceed], _)),
    t(find_first_arg([get_atom(b, 1), get_atom(a, 0), proceed], _)),
    t(find_first_arg([call(foo/0), get_atom(a, 0)], _)),
    t(find_first_arg([execute(foo/0)], _)),
    t(find_first_arg([cut(x(2)), get_nil(0)], _)),
    t(find_first_arg([get_float(1.5, 0), proceed], _)),
    t(stopping_inst(call(p/1))),
    t(stopping_inst(proceed)),
    t(defines_first_arg(get_structure(g/3, 0), _)),
    t(defines_first_arg(get_atom(a, 1), _)),
    t(assign_x0([w(1), w(0)])),
    t(assign_x0([c(0, 0)])),
    t(assign_x0([c(3, 0)])),
    true.
