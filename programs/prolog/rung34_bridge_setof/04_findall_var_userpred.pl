% rung34_bridge_setof/04_findall_var_userpred
% findall/3 where goal Var is bound to a call into a user-defined predicate.
:- initialization(main).
color(red).
color(green).
color(blue).
main :-
    G = color(C),
    findall(C, G, Cs),
    write(Cs), nl.
