:- set_prolog_flag(double_quotes, codes).
:- initialization(main).
:- public natnum/1.
:- mode(natnum(+)).
:- dynamic(seen/1).
natnum(0).
seen(a).
for(0, _Goal) :- !.
for(N, Goal) :- N > 0, call(Goal), M is N-1, for(M, Goal), !.
main :-
  abolish(seen, 1), ( catch(seen(_), _, fail) -> write(still) ; write(gone) ), nl,
  put("("), put([0'x]), put(0')), nl,
  X is [0'a] + 1, write(X), nl,
  recordz(k, val(1), _), recordz(k, val(2), R2), recorda(k, val(0), _),
  findall(V, recorded(k, val(V), _), L1), write(L1), nl,
  erase(R2), findall(V, recorded(k, val(V)), L2), write(L2), nl,
  recorda(f(x, y), two), ( recorded(f(_, _), T) -> write(T) ; write(none) ), nl,
  log(2.718281828459045, Lg), write(Lg), nl, acos(0.5, Ac), write(Ac), nl, sqrt(16, Sq), write(Sq), nl,
  ( otherwise -> write(otherwise) ; true ), nl,
  natnum(N0), write(N0), nl,
  prompt(Old, 'Q: '), prompt(Mid, Old), write(Mid), nl, prompt1('P: '), style_check(-singleton),
  statistics(runtime, [T0, _]), statistics(walltime, [W0, _]), statistics(cputime, C),
  ( integer(T0), integer(W0), number(C) -> write(stats_ok) ; write(stats_bad) ), nl,
  assertz((h :- for(2, (write(q), nl)))), h,
  halt.
