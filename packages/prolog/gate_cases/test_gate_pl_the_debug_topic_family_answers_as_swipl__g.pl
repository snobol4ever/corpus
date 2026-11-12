:- initialization(main).
t(G) :- catch((G -> write(yes) ; write(no)), error(E, _), write(E)), nl.
main :-
  debug(t, 'hi ~w', [1]), write(a), nl,
  t(debugging(t)),
  debug(t), t(debugging(t)),
  debug(t, 'shown ~w', [2]),
  debug(u(_)), t(debugging(u(x))),
  nodebug(t), t(debugging(t)),
  nodebug, t(debugging(u(x))),
  t(debug(t, 'x', [])),
  t(assertion(true)),
  halt.
