%------------------------------------------------------- 1 rung48_ops_current_rt
:- initialization(main).
main :-
    op(600, xfx, rt_infix),
    op(300, fy, rt_pre),
    ( current_op(P1, T1, rt_infix) -> format("~w ~w~n", [P1, T1]) ; write(none), nl ),
    ( current_op(P2, T2, rt_pre) -> format("~w ~w~n", [P2, T2]) ; write(none), nl ),
    op(400, yfx, rt_multi),
    ( current_op(400, yfx, rt_multi) -> write(yes) ; write(no) ), nl.
%---------------------------------------------------------- 2 rung48_ops_postfix
:- op(100, xf, fact).
:- initialization(main).
main :-
    ( 5 fact == fact(5) -> write(yes) ; write(no) ), nl,
    ( (1 + 2) fact == fact(1 + 2) -> write(yes) ; write(no) ), nl.
%----------------------------------------------------------- 3 rung48_ops_prefix
:- op(200, fy, ~).
:- initialization(main).
main :-
    ( ~ ~ a == ~(~(a)) -> write(yes) ; write(no) ), nl,
    ( X = ~ foo, X == ~(foo) -> write(yes) ; write(no) ), nl,
    ( ~ (b + c) == ~(b + c) -> write(yes) ; write(no) ), nl.
