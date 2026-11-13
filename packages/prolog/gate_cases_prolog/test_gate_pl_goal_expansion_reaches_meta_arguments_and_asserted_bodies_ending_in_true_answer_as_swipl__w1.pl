:- initialization(main).
:- dynamic user:hook/1.
:- set_module(base(user)).
:- '$clausable'(foo/2).
foo --> [].
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), writeq(N-R), nl.
main :- t(direct_def, current_predicate(foo//0)), t(direct_undef, current_predicate(no_a//0)), t(called, call(current_predicate(foo//0))), t(var_arity, (current_predicate(foo//A), writeq(A), nl)),
  t(neg, \+ current_predicate(no_a//0)), G = current_predicate(no_a//0), t(meta_undef, G), t(enumerate, (current_predicate(foo//N0), writeq(N0), nl)),
  t(dyn_mpi, current_predicate(hook/1)), t(clausable, '$clausable'(foo/2)).
