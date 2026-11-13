:- dynamic t/0.
:- initialization(main).
main :- assertz((t :- (fail ; true), (true -> write(a) ; write(b)), fail)), assertz((t :- writeln(end))), t, halt.
