:- use_module(library(lists)).
main :- term_size(a(1,2,3), S), write(S), nl, term_size(f(a), S2), write(S2), nl, term_size([a,b], S3), write(S3), nl, term_size(f(_), S4), write(S4), nl,
    term_to_atom(f(a,'B c',1+2), A1), write(A1), nl, term_to_atom(T, 'g(h,Z,1+2)'), T = g(H, _, E), write(H), nl, write(E), nl.
:- initialization((main, halt)).
