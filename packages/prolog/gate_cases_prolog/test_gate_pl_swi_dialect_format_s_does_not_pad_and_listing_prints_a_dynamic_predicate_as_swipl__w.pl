:- use_module(library(lists)).
t1 :- format("[~4s]~n", ["new"]), format("[~4s]~n", ["world"]), format("[~s]~n", ["abc"]), format("[~a~t~8|]~n", [ab]).
t2 :- assertz(p(1)), assertz(p(2)), listing(p/1).
t3 :- assertz(q(0)), assertz(q(a)), assertz(q("s")), listing(q/1).
:- initialization((t1, t2, t3, halt)).
