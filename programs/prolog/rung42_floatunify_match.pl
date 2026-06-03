% rung42_floatunify — equality and disequality of float literals
% Expected output: yes neq
:- initialization(main).
main :-
    ( 2.5 = 2.5 -> write(yes) ; write(no) ),
    write(' '),
    ( 1.5 = 2.5 -> write(eq) ; write(neq) ),
    nl.
