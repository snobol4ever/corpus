main :-
    ( acyclic_term(foo(a,b,c)) -> write(compound_yes) ; write(compound_no) ), nl,
    ( acyclic_term(_) -> write(var_yes) ; write(var_no) ), nl,
    ( acyclic_term([1,2,3,4,5]) -> write(list_yes) ; write(list_no) ), nl,
    ( acyclic_term(42) -> write(int_yes) ; write(int_no) ), nl,
    ( acyclic_term(hello) -> write(atom_yes) ; write(atom_no) ), nl,
    S = f(1), ( acyclic_term(g(S,S)) -> write(shared_yes) ; write(shared_no) ), nl,
    ( acyclic_term(a+b*c-d) -> write(oper_yes) ; write(oper_no) ), nl,
    make_cycle(X), acyc(X, R), write(cyclic(R)), nl,
    write(done), nl.
make_cycle(X) :- X = f(X).
acyc(T, yes) :- acyclic_term(T), !.
acyc(_, no).
