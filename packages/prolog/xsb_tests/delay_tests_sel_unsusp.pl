%----------------------------------------------------------------------
%  Requires only negative simplification.
%----------------------------------------------------------------------

:- table a/0, b/0, c/0.

a :- tnot(b).

b :- tnot(b), fail.
b :- tnot(c).

c :- tnot(b), fail.

%----------------------------------------------------------------------

test :- a, fail.
test :-
	( a ->	( tnot(a) -> writeln('a is undefined')
		; writeln('a is true') )
	; writeln('a is false (OK)') ),
	( b ->	( tnot(b) -> writeln('b is undefined')
		; writeln('b is true (OK)') )
	; writeln('b is false') ),
	( c ->	( tnot(c) -> writeln('c is undefined')
		; writeln('c is true') )
	; writeln('c is false (OK)') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh sel_unsusp "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
