% functor/3: functor(Term, Name, Arity)
main :-
    functor(foo(a,b), F, A), write(F/A), nl,
    functor(hello, F2, A2), write(F2/A2), nl,
    functor(42, F3, A3), write(F3/A3), nl,
    functor(T, bar, 2), write(T), nl.
