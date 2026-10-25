:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%-----------------------------------------------------------------------
%  Programs that tests insertion of duplicate delay lists.  It is
%  dynamically stratified and its model should be WFM = {q, ~r}.
%-----------------------------------------------------------------------

:- auto_table.

q :- tnot(r).
q :- tnot(r).
q :- tnot(r).
q :- tnot(r).
q :- tnot(r).
q :- tnot(r).

r :- tnot(q), fail.

%-----------------------------------------------------------------------

test :- q, fail.
test :- ( q ->  ( tnot(q) -> writeln('q is undefined')
		; writeln('q is true (OK)') )
	; writeln('q is false') ),
        ( r ->	( tnot(r) -> writeln('r is undefined')
		; writeln('r is true') )
	; writeln('r is false (OK)') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh asl_dupl "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
