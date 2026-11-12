mm(X) :- !, (X = g ; X = i).
unused :- setup_call_cleanup(true, true, true).
:- initialization(((mm(X), write(X), nl, fail ; true), write(done), nl, halt)).
