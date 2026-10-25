:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* This file is used to compile all the test files for multifile directive */
 
:- mc(mf_file1,[]).
:- mc(mf_file2,[]).
:- mc(mf_file5,[]).
:- mc(mf_hilog1,[]).
:- mc(mf_hilog2,[]).
 
 
do :- writeln('mf_file1 compiled.'), fail.
do :- writeln('mf_file2 compiled.'), fail.
do :- writeln('mf_file5 compiled.'), fail.
do :- writeln('mf_hilog1 compiled.'), fail.
do :- writeln('mf_hilog2 compiled.'), fail.
do.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh mf_obj "do."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((do))).
