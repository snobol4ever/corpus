:- import incr_trans_depends/2 from increval.
:- import numbervars/1 from num_vars.

test:- test_1.

test_1:- baz(_X),fail.
test_1:- assert((fff(X):-foo(X))),
	incr_trans_depends(foo(_),Y),
	numbervars(Y),
	writeln(dep1(Y)),fail.
test_1:- incr_trans_depends(Y,foo(_)),
	numbervars(Y),
	writeln(dep2(Y)),fail.
test_1.

:- table baz/1 as incremental.
baz(X):- foo(X).

:- table foo/1 as incremental.
foo(X):- bar(X).

:- table bar/1, test/0 as incremental.
bar(X) :- fff(X).

:- dynamic fff/1 as incremental.



end_of_file.

%:- export test/0.

:- import incr_trans_depends/2 from increval.

test:- baz(_X),fail.
test:- incr_trans_depends(foo(_),Y),writeln(Y),fail.
test:- incr_trans_depends(Y,foo(_)),writeln(Y),fail.

:- table baz/1 as incremental.
baz(X):- foo(X).

:- table foo/1 as incremental.
foo(X):- bar(X).

:- table bar/1 as incremental.
bar(_).

nt.

:- table ni/0.
ni.

% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/test.sh runs gentest.sh test_incr_depends "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
