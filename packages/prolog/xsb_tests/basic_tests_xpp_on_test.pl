
test :-
	compile('empty.P',[xpp_on]), writeln(ok1),
	compile('empty.P',[xpp_on]), writeln(ok2),
	compile('empty2.P',[xpp_on]), writeln(ok3),
	compile('empty2.P',[xpp_on]), writeln(ok4).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/atest.sh runs agentest.sh xpp_on_test "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
