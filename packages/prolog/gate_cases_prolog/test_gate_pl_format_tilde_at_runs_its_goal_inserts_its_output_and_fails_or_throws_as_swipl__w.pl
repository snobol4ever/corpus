:- use_module(library(lists)).
:- initialization(main).
t(G) :- catch(( call(G) -> R = succeeded ; R = failed ), E, ( E = error(F, _) -> R = raised(F) ; R = threw(E) )), write(' => '), write(R), nl.
main :-
    t(format('a~@b', [fail])),
    t(format('a~@b', [throw(oops)])),
    t(format('a~@b', [(write(x), fail)])),
    t(format('a~@b', [(write(x), throw(oops))])),
    t(format('a~@b~@c', [write(1), write(2)])),
    t(format('~a~t~@~20|~a', [ab, write(mid), z])),
    t(format('~t~@~10|', [write(right)])),
    t(format(atom(A), 'p~@q', [write(zz)])), write(A), nl,
    t(format(atom(_), 'p~@q', [fail])),
    t(format('~@', [_])),
    t(format('~@', [3])),
    t(format('~@', [(member(Y,[1,2]), write(Y))])), nl,
    t(format('~@~@', [write(a), nofunc_here])),
    t(format('~@ ~w ~@~n', [write(1), two, write(3)])),
    t(format('~@~n', [format('~a-~a', [in, ner])])),
    t(format('~@', [format('~@', [fail])])),
    with_output_to(string(S), format('x~@y', [write(1)])), write(S), nl,
    halt.
