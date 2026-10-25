:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- table interp_g/1.

interp([]).
interp([G|Gs]) :- interp_g(G),interp(Gs).
interp_g(tnot(G)) :- tnot(interp_g(G)).
interp_g(G) :- rule(G,B),interp(B).

rule(p, [tnot(q),p]).
rule(q, [tnot(q),p]).
rule(q, [tnot(p)]).

%-------------------------------------------------------------------------------

test :- Goal = p, interp_g(Goal), fail.
test :- writeln('Program interp0 finished execution...').

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh interp0 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
