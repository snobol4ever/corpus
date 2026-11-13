:- dynamic(p/1).
:- dynamic(q/2).
p(X) :- X > 0, throw(boom).
p(_) :- write(second), nl.
main :- catch(p(1), E, (write(caught(E)), nl)), assertz(q(1, a)), assertz((q(X, b) :- X > 5, throw(qq))), assertz(q(_, c)),
        catch(findall(V, q(9, V), L), E2, (write(caught(E2)), nl)), ( var(L) -> true ; write(L), nl ),
        findall(V, q(1, V), L1), write(L1), nl.
:- initialization(main).
