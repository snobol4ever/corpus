:- initialization(main).
main :- open('data.pl', read, _, [alias(in)]), close(in), X = f(sum, chain, element, label, transpose), write(X), nl.
