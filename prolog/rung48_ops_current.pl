:- op(700, xfx, ===).
:- op(200, xfy, likes).
:- op(500, fy, myp).
:- op(400, yf, myq).
:- initialization(main).
main :-
    ( current_op(P1, T1, (===)) -> format("~w ~w~n", [P1, T1]) ; write(none), nl ),
    ( current_op(P2, T2, likes) -> format("~w ~w~n", [P2, T2]) ; write(none), nl ),
    ( current_op(P3, T3, myp) -> format("~w ~w~n", [P3, T3]) ; write(none), nl ),
    ( current_op(P4, T4, myq) -> format("~w ~w~n", [P4, T4]) ; write(none), nl ),
    ( current_op(700, xfx, ===) -> write(yes) ; write(no) ), nl,
    ( current_op(_, _, nosuchop) -> write(yes) ; write(no) ), nl.
