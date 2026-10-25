:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* Try to test string GC just a little.  */

:- import for/3 from basics.
:- import concat_atom/2 from string.
:- import gc_heap/0 from machine.
:- import storage_delete_all/1, storage_insert_fact/3, storage_find_fact/2 from storage.


test :-
	add_anon_syms,
	do_gcs,
	dump_predicates,
	retractall(p(_)),
	retractall(q(_)),
	abolish_all_tables,
	(for(I,61,79),concat_atom([storage,I],Atom),storage_delete_all(Atom),fail ; true),
	do_gcs,
	writeln(finished_ok).

do_gcs :-
	gc_heap,
	gc_heap.


:- dynamic p/1.
:- dynamic q/1.
:- index(q/1,trie).
:- table r/1.

add_anon_syms :-
	for(I,1,20),
	concat_atom([assert,I],Atom),
	I =< 10,
	assert(p(Atom)),
	fail.
add_anon_syms :-
	for(I,21,40),
	concat_atom([trieassert,I],Atom),
	I =< 30,
	assert(q(Atom)),
	fail.
add_anon_syms :-
	r(_),
	fail.
add_anon_syms :-
	for(I,61,80),
	concat_atom([storage,I],Atom),
	I =< 70,
	storage_insert_fact(Atom,Atom,_),
	fail.
add_anon_syms.

r(Atom) :-
	for(I,41,60),
	concat_atom([tabletrie,I],Atom),
	I =< 50.

dump_predicates :- p(X),writeln(p(X)),fail.
dump_predicates :- q(X),writeln(q(X)),fail.
dump_predicates :- r(X),writeln(r(X)),fail.
dump_predicates :- for(I,61,79),concat_atom([storage,I],Atom),
	storage_find_fact(Atom,Atom2),writeln(storage(Atom,Atom2)),fail.
dump_predicates.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh gctest "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
