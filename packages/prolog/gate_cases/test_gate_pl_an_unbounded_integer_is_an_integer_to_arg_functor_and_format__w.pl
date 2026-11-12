t(G) :- catch((G -> write(yes) ; write(no)), error(E, _), (E = representation_error(_) -> write(representation_error) ; write(E))), nl.
main :- B is 2^150, N is -(2^150), t(arg(B, t(1,2,3), _)), t(arg(N, t(1,2,3), _)), t(functor(_, t, B)), t(functor(_, t, N)),
        t(format("~d", [B])), t(format("~2d", [B])), t(format("~D", [B])), t(format("~d", [N])), t(format("~2d", [314])).
:- initialization(main).
