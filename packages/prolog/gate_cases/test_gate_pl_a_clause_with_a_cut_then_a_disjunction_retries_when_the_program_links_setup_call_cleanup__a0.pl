mm(X) :- !, (X = g ; X = i).
:- initialization(((mm(X), write(X), nl, fail ; true), write(done), nl, halt)).
