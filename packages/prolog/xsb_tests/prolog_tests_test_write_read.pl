:- import numbervars/1 from num_vars.

test :-
	writeln('Test write_canonical - read_canonical'),
	testterm(T),
	open('tempfile.P',write,OStr),
	write_canonical(OStr,T),
	writeln(OStr,' .'),
	close(OStr),
	open('tempfile.P',read,IStr),
	catch(read_canonical(IStr,NT),_,true),
	close(IStr),
	numbervars(T),
	numbervars(NT),
	(T == NT
	 ->	write_canonical('OK'(T,NT)), nl
	 ;	write_canonical('ERROR'(T,NT)), nl
	),
	fail.
test :-
	nl,
	writeln('Test write_canonical - read'),
	testterm(T),
	open('tempfile.P',write,OStr),
	write_canonical(OStr,T),
	writeln(OStr,' .'),
	close(OStr),
	open('tempfile.P',read,IStr),
	catch(read(IStr,NT),_,true),
	close(IStr),
	numbervars(T),
	numbervars(NT),
	(T == NT
	 ->	write_canonical('OK'(T,NT)), nl
	 ;	write_canonical('ERROR'(T,NT)), nl
	),
	fail.
test :-
	nl,
	writeln('Test writeq - read'),
	testterm(T),
	open('tempfile.P',write,OStr),
	writeq(OStr,T),
	writeln(OStr,' .'),
	close(OStr),
	open('tempfile.P',read,IStr),
	catch(read(IStr,NT),_,true),
	close(IStr),
	numbervars(T),
	numbervars(NT),
	(T == NT
	 ->	write_canonical('OK'(T,NT)), nl
	 ;	write_canonical('ERROR'(T,NT)), nl
	),
	fail.
test.

testterm((p(X,Y):-q(X,Z),r(Z,Y))).
testterm((- 1)).
testterm((- (1))).
testterm((-(1))).
testterm((?+?)).
testterm((? + ?)).
testterm((- ?)).
testterm((-((a,b)))).
testterm((- ((a,b)))).
testterm((-((a;b)))).
testterm((- ((a;b)))).
testterm((-(-))).
testterm(((-)-(-))).

testterm(v(- 1)).
testterm(v(- (1))).
testterm(v(-(1))).
testterm(v(?+?)).
testterm(v(? + ?)).
testterm(v(- ?)).
testterm(v(-((a,b)))).
testterm(v(-(-))).
testterm(v((-)-(-))).
testterm(v(- ((a;b)))).

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_write_read "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
