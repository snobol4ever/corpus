t(0) :- !.
t(N) :- catch(throw(oops(N)), oops(_), true), M is N - 1, t(M).
:- t(1000000), write(done), nl.
