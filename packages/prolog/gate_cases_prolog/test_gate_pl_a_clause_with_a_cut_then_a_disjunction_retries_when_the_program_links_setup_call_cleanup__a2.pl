mm(X) :- !, (X = g ; X = i).
:- initialization((with_output_to(string(S), forall(mm(X), write(X))), write(S), nl, halt)).
