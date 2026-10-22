:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import gc_strings/0 from machine.

test:- gc_strings,fail.
test:- writeln(first(3.5)),fail.
test:- X is pi,writeln(second(X)),fail.
%test:- X is pi,write_term(userout,third_str(X),[]),nl,fail.
%test:- X is pi,write_term(userout,fourth_str(X),[float_precision(4)]),nl,fail.
test:- X is pi,write_term(third(X),[]),nl,fail.
test:- X is pi,write_term(fourth_1(X),[float_precision(4)]),nl,fail.
test:- X is 3.5,write_term(fourth_2(X),[float_precision(10),float_specifier(f)]),nl,fail.
test:- X is 3.5,write_term(fourth_3(X),[float_precision(10)]),nl,fail.
test:- set_xsb_param(float_display_format,[precision(4)]),fail.
test:- X is pi,writeln(fifth(X)),fail.

%test:- X is 100**100,write(third(X)),fail.
%test:- X is 0.1 + 100**30,write_term(third(X),[]),nl,fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_float_io_precision "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
