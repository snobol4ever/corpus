:- dynamic(portray/1).
portray(x) :- write(one).
portray(x) :- write(two).
loop(0) :- !.
loop(N) :- format("~p", [f(x,x,x,x,x)]), nl, M is N-1, loop(M).
:- initialization(main).
main :- loop(LOOPS), write(done), nl, halt.
