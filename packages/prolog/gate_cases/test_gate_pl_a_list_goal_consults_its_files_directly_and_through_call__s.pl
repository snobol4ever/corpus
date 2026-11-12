:- use_module(library(lists)).
:- initialization(main).
$T
main :- open('lq.pl', write, S), write(S, 'lq(7).'), nl(S), close(S), open('lr.pl', write, S2), write(S2, 'lr(8).'), nl(S2), close(S2),
  ['lq.pl'], lq(X), write(X), nl, G = ['lr.pl'], t((call(G), lr(_))), t([nosuch]).
