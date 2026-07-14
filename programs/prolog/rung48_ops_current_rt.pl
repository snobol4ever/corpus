:- initialization(main).
main :-
    op(600, xfx, rt_infix),
    op(300, fy, rt_pre),
    ( current_op(P1, T1, rt_infix) -> format("~w ~w~n", [P1, T1]) ; write(none), nl ),
    ( current_op(P2, T2, rt_pre) -> format("~w ~w~n", [P2, T2]) ; write(none), nl ),
    op(400, yfx, rt_multi),
    ( current_op(400, yfx, rt_multi) -> write(yes) ; write(no) ), nl.
