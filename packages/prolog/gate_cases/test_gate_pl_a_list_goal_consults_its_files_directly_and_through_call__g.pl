:- initialization(main).
$T
main :- open('lq.pl', write, S), write(S, 'lq(7).'), nl(S), close(S), ['lq.pl'], lq(X), write(X), nl,
  t((['lq.pl'], lq(_))), t([lq]), t([nosuch]), G = ['lq.pl'], t((call(G), lq(_))).
