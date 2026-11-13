:- meta_predicate m(:, -).
m(X, X).
w(G) :- m(G, X), writeq(X), nl.
open_kept :- m(m1:Y, X), X = m1:Y1, ( Y1 == Y -> writeln(open_inner_kept) ; writeln(open_inner_lost) ).
var_kept(G, Tag) :- m(G, X), X = V:x, ( var(V) -> format("~w: var qualifier kept~n", [Tag]) ; format("~w: var qualifier lost~n", [Tag]) ).
main :- w(x), w(m1:x), w(m2:m1:x), w(m2:m3:m1:x), w(m2:42:x), w(42:x), w(m2:f(a):x), w(m2:m3:f(a):x), w(m2:1:2:x), w(1:2:x), w(1:m3:x), w(m2:42:m3:x),
    w(m2:(42:x)), w(m2:[a]:x), w(m2:[]:x), w(m2:1.5:x), w(m2:f(1):m3:x), open_kept, var_kept(m2:_:x, one), var_kept(m2:m3:_:x, two), var_kept(_:x, three).
:- initialization(main).
