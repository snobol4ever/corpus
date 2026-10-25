:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- encoding(latin_1).
?- set_prolog_flag(character_set,latin_1).

test:- 
       compile(test_ascii_atom_1),
       ensure_loaded(test_ascii_atom_1),
       test_sub.


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_ascii_atom "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
