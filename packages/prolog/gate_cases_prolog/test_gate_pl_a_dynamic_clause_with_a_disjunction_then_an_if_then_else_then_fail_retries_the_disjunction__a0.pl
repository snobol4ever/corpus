t :- (fail ; true), (true -> write(a) ; write(b)), fail.
t :- writeln(end).
:- initialization((t, halt)).
