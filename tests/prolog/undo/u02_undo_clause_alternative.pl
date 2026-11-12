:- initialization(main).
:- dynamic a/1.
t1 :- assert(a(1), Ref), undo(erase(Ref)), fail.
t1 :- ( a(1) -> write(still_there) ; write(erased) ), nl.
cut_keeps :- ( undo(write(fired)), ! ; write(other) ), write(committed), nl.
main :-
    t1,
    cut_keeps, write(after_cut), nl,
    ( \+ \+ once((undo(write(c)), fail)) -> write(yes) ; write(no) ), nl,
    halt.
