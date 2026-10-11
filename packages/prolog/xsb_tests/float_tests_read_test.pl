:- export test/0.

test :- seeing(X), see('read_test_old'),
	( read_one, fail ; true ), seen, see(X).

read_one :-
	repeat,
		read(Term),
			( Term =.. [_,Float], float(Float),
			  write(Term), writeln('.')
			; Term == end_of_file, !
			).

% DRIVER (appended by the vendoring, CEO-700): XSB float_tests/test.sh runs gentest.sh read_test "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
