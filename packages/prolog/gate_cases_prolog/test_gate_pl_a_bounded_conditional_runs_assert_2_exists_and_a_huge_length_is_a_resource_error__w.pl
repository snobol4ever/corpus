:- dynamic f/1.
:- if(current_prolog_flag(bounded, false)).
big(yes).
:- else.
big(no).
:- endif.
:- if(current_prolog_flag(bounded, true)).
bnd(yes).
:- else.
bnd(no).
:- endif.
:- if(\+ current_prolog_flag(bounded, true)).
nb(yes).
:- else.
nb(no).
:- endif.
t :- big(B), write(B), nl, bnd(C), write(C), nl, nb(D), write(D), nl,
     assert(f(1), R), ( clause(f(X), true, R) -> write(X) ; write(noref) ), nl,
     erase(R), ( f(_) -> write(still) ; write(erased) ), nl,
     catch((N is 1<<66, length(_, N)), error(E, _), (write(E), nl)).
:- initialization(t).
