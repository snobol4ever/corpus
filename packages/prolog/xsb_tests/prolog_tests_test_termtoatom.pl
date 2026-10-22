:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import term_to_atom/2,term_to_atom/3 from string.

test:- 
	term_to_atom(_X,F),writeln(F),fail.

test:- 
	term_to_atom('$VAR'(_N),F),writeln(F),fail.
test:- 
	term_to_atom('$VAR'(_N),F,[numbervars(true)]),writeln(F),fail.

test:- 
	term_to_atom('$VAR'('Foo'),F),writeln(F),fail.
test:- 
	term_to_atom('$VAR'('Foo'),F,[numbervars(true)]),writeln(F),fail.

test:- 
	term_to_atom('$VAR'("Foo"),F),writeln(F),fail.
test:- 
	term_to_atom('$VAR'("Foo"),F,[numbervars(true)]),writeln(F),fail.

test:- 
        term_to_atom(p7(_A),Atom,[numbervars(true)]),writeln(Atom),fail.

test:- 
	term_to_atom('3cpio',F),writeln(F),fail.
test:- 
	term_to_atom('3cpio',F,[quoted(true)]),writeln(F),fail.

test:- 
	term_to_atom(f(a,1,'3cpio'),F),writeln(F),fail.
test:- 
	term_to_atom(f(a,1,'3cpio'),F,[quoted(true)]),writeln(F),fail.

test:- 
	term_to_atom(['3cpio',d(3)],F),writeln(F),fail.
test:- 
	term_to_atom(['3cpio',d(3)],F,[quoted(true)]),writeln(F),fail.

test:- 
	term_to_atom(f(a,1,['3cpio',d(3)]),F),writeln(F),fail.
test:- 
	term_to_atom(f(a,1,['3cpio',d(3)]),F,[quoted(true)]),writeln(F),fail.
test:- 
	term_to_atom(f(a,1,['3cpio',d(3)]),F,[ignore_ops(true)]),writeln(F),fail.
test:- 
	term_to_atom(f(a,1,['3cpio',d(3)]),F,[ignore_ops(true),quoted(true)]),writeln(F),fail.
test:-  
	term_to_atom(foo(),F),writeln(F),fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_termtoatom "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
