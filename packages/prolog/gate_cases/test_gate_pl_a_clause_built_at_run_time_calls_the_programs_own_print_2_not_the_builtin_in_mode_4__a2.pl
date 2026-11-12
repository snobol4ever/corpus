:- use_module(library(lists)).
test :- print(2,0), fail.
test.
print(N,M) :- write(N-M), nl, fail.
zz :- listing(foo/1).
run(G) :- catch(ignore(G), E, (write(caught(E)), nl)).
:- initialization(run(test)).
