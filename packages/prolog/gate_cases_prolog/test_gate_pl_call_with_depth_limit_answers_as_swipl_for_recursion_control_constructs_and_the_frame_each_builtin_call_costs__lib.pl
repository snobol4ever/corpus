mem(El, [H|T]) :- mem_(T, El, H).
mem_(_, El, El).
mem_([H|T], El, _) :- mem_(T, El, H).
t(G) :- forall(call_with_depth_limit(G, 20, R), (write(G-R), nl)).
:- t(mem(_, [a, b, c])).
:- t(member(_, [a, b, c])).
:- t(member(c, [a, b, c])).
:- t(append(_, _, [a])).
:- t(reverse([a, b, c], _)).
:- forall(call_with_depth_limit(member(X, [a, b, c]), 10, R), (write(X-R), nl)).
