t(G) :- catch((G -> R = ok ; R = no), error(E, _), R = err(E)), writeq(R), nl.
o(G) :- write('<'), catch(( G -> R = true ; R = fail ), error(F, _), R = error(F)), write('> '), writeq(R), nl.
:- initialization(main).
main :- t(\+ \+ (statistics(local_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
  t(\+ \+ (statistics(global_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
  t(\+ \+ (statistics(trail_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
  t(\+ \+ (statistics(cstr_stack, [A, B]), integer(A), integer(B), A >= 0, B >= 0)),
  o(format('~a', [])), o(format('x~a ~a', [y])), o(format('~y', [x])), o(format('ab~y', [x])), o(format('~c', [-1])),
  o(format('~a', [1])), o(format('p~w~', [x])).
