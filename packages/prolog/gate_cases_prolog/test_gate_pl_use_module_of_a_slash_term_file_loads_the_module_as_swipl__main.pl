:- use_module(sub/m, [hello/0]).
:- initialization(main, main).
main :- hello, m:hello.
