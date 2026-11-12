:- use_module(library(quasi_quotations)).
:- quasi_quotation_syntax(prolog).
prolog(Content, _Vars, _Dict, Term) :- with_quasi_quotation_input(Content, Stream, read(Stream, Term)).
t(X) :- X = {|prolog||f(x, [1,2]).|}.
main :- t(X), writeq(X), nl.
:- initialization(main).
