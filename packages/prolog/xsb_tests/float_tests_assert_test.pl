:- export test/0.
:- import floatp/1 from usermod.

test :- load_dyn('assert_test_old'),
	floatp(Float), float(Float), write(floatp(Float)), writeln('.'), fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB float_tests/test.sh runs gentest.sh assert_test "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
