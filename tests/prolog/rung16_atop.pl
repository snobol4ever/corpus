%----------------------------------------------------------- 1 rung16_atop_at_ge
main :-
    ( b @>= a -> write(yes) ; write(no) ), nl,
    ( b @>= b -> write(yes) ; write(no) ), nl,
    ( a @>= b -> write(yes) ; write(no) ), nl.
main.
%----------------------------------------------------------- 2 rung16_atop_at_gt
main :-
    ( b @> a -> write(yes) ; write(no) ), nl,
    ( a @> b -> write(yes) ; write(no) ), nl,
    ( z @> z -> write(yes) ; write(no) ), nl.
main.
%----------------------------------------------------------- 3 rung16_atop_at_le
main :-
    ( a @=< b -> write(yes) ; write(no) ), nl,
    ( a @=< a -> write(yes) ; write(no) ), nl,
    ( b @=< a -> write(yes) ; write(no) ), nl.
main.
%----------------------------------------------------------- 4 rung16_atop_at_lt
main :-
    ( a @< b -> write(yes) ; write(no) ), nl,
    ( b @< a -> write(yes) ; write(no) ), nl,
    ( a @< a -> write(yes) ; write(no) ), nl.
main.
%--------------------------------------------------------- 5 rung16_atop_at_sort
main :-
    ( apple @< banana -> write(ok1) ; write(fail1) ), nl,
    ( zebra @> mango  -> write(ok2) ; write(fail2) ), nl,
    ( cat @=< cat     -> write(ok3) ; write(fail3) ), nl,
    ( dog @>= cat     -> write(ok4) ; write(fail4) ), nl.
main.
