:- use_module(library(lists)).
t1 :- telling(X), writeln(inside1), tell(X), writeln(inside2).
t2 :- telling(Y), ( Y == user -> write(user) ; write(stream) ).
t3 :- telling(X), tell(X), write(a), tell(X), write(b).
main :- with_output_to(string(S), t1), write(captured(S)), nl,
        with_output_to(string(S3), t2), write(kind(S3)), nl,
        with_output_to(string(S4), t3), write(retold(S4)), nl,
        telling(Z), write(outside(Z)), nl, writeln(after).
:- initialization((main, halt)).
