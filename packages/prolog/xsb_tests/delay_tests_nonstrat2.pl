:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- table a/0, b/0, a/1, b/1.

test :- a, fail.
test :- b(0), fail.
test :- b(1), fail.
test :-
	( a ->
	    ( tnot(a) -> writeln('a is undefined') ; writeln('a is true (OK)') )
	; writeln('a is false')
	),
	( b -> writeln('b is true') ; writeln('b is false (OK)') ), fail.
test :-
	( a(0) -> writeln('a(0) is true (OK)') ; writeln('a(0) is false') ),
	( X = 1, a(X) ->
		( tnot(a(1)) ->  writeln('a(1) is undefined (OK)')
		; writeln('a(1) is true') )
	; writeln('a(1) is false')
	),
	( b(0) -> writeln('b(0) is true') ; writeln('b(0) is false (OK)') ),
	( b(1) ->
		( tnot(b(1)) ->  writeln('b(1) is undefined (OK)')
		; writeln('b(1) is true') )
	; writeln('b(1) is false')
	).

a :- b.
a.

b :- tnot(a).

a(X) :- b(X).
a(0).

b(X) :- tnot(a(X)).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh nonstrat2 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
