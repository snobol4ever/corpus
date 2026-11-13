:- use_module(library(plunit)).
:- writeq(d1), nl.
:- nb_setval(k, 1).
:- nb_getval(k, V), writeq(nb_setval_in_place-V), nl.
:- prolog_load_context(module, M), writeq(before_unit-M), nl.
:- begin_tests(u).
:- prolog_load_context(module, M), writeq(in_unit-M), nl.
:- end_tests(u).
:- prolog_load_context(module, M), writeq(after_unit-M), nl.
:- begin_tests(v, []).
:- prolog_load_context(module, M), writeq(in_unit_with_options-M), nl.
:- end_tests(v).
:- writeq(d2), nl.
:- initialization((writeq(init), nl)).
