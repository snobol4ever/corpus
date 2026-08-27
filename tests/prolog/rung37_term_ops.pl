%--------------------------------------------------------------------- 1 01_univ
% =.. (univ): decompose and construct terms
main :-
    foo(a,b,c) =.. L, write(L), nl,
    T =.. [bar, 1, 2], write(T), nl,
    hello =.. L2, write(L2), nl,
    42 =.. L3, write(L3), nl.
%------------------------------------------------------------------ 2 02_functor
% functor/3: functor(Term, Name, Arity)
main :-
    functor(foo(a,b), F, A), write(F/A), nl,
    functor(hello, F2, A2), write(F2/A2), nl,
    functor(42, F3, A3), write(F3/A3), nl,
    functor(T, bar, 2), write(T), nl.
%---------------------------------------------------------------------- 3 03_arg
% arg(+N, +Term, ?Arg): 1-based argument access
main :-
    arg(1, foo(a,b,c), X), write(X), nl,
    arg(2, foo(a,b,c), Y), write(Y), nl,
    arg(3, foo(a,b,c), Z), write(Z), nl,
    arg(1, f(hello), W), write(W), nl.
%---------------------------------------------------------------- 4 04_copy_term
% copy_term/2: fresh copy with new variables
main :-
    copy_term(f(X,X), f(A,B)),
    ( A == B -> write(shared) ; write(not_shared) ), nl,
    X = original,
    ( A == original -> write(aliased) ; write(independent) ), nl,
    copy_term([H|T], Copy), write(Copy), nl.
%---------------------------------------------------------- 5 05_compound_atomic
% compound/1, atomic/1, is_list/1 style checks via =..
main :-
    ( compound(foo(a)) -> write(yes) ; write(no) ), nl,
    ( compound(hello)  -> write(yes) ; write(no) ), nl,
    ( atomic(hello)    -> write(yes) ; write(no) ), nl,
    ( atomic(42)       -> write(yes) ; write(no) ), nl,
    ( atomic(foo(a))   -> write(yes) ; write(no) ), nl,
    T = p(1,p(2,p(3,nil))),
    T =.. [p, H | _], write(H), nl.
