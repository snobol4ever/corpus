:- module(u11, []).
:- meta_predicate m(0).
m(G) :- writeq(m_got(G)), nl.
main :- m(u11:p), m(p), m(other:p).
:- initialization(main).
