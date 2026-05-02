% compound/1, atomic/1, is_list/1 style checks via =..
main :-
    ( compound(foo(a)) -> write(yes) ; write(no) ), nl,
    ( compound(hello)  -> write(yes) ; write(no) ), nl,
    ( atomic(hello)    -> write(yes) ; write(no) ), nl,
    ( atomic(42)       -> write(yes) ; write(no) ), nl,
    ( atomic(foo(a))   -> write(yes) ; write(no) ), nl,
    T = p(1,p(2,p(3,nil))),
    T =.. [p, H | _], write(H), nl.
