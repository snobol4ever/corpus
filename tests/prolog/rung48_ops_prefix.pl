:- op(200, fy, ~).
:- initialization(main).
main :-
    ( ~ ~ a == ~(~(a)) -> write(yes) ; write(no) ), nl,
    ( X = ~ foo, X == ~(foo) -> write(yes) ; write(no) ), nl,
    ( ~ (b + c) == ~(b + c) -> write(yes) ; write(no) ), nl.
