:- use_module(library(quasi_quotations)).
:- quasi_quotation_syntax(prolog).
prolog(Content, _Vars, _Dict, Term) :- with_quasi_quotation_input(Content, Stream, read(Stream, Term)).
main :- context_module(Me), term_string(T, "{|prolog||a(b).|}", [module(Me)]), writeq(T), nl,
        catch(term_string(_, "{|prolog||a b.|}", [module(Me)]), error(E, _), (writeq(E), nl)).
:- initialization(main).
