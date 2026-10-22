:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import trie_create/2,trie_drop/1, trie_property/2 from intern.

test:- test1, test2, test3, test4, test5, test6.

test1:- 
	trie_create(_X,[type(prge),alias(foo)]),
	trie_create(_Y,[type(pras),alias(bar)]),
	trie_property(_A,B),
	writeln(trie_property(1,B)),
	fail.
test1.

test2:- 
	trie_drop(foo),
	trie_property(_X,Y),
	writeln(trie_property(2,Y)),
	fail.
test2.

test3:- 
	trie_drop(bar),
	trie_property(_X,Y),
	writeln(trie_property(3,Y)),
	fail.
test3.

test4:- 
	trie_create(_X,[type(prge),alias(foo1)]),
	trie_create(_Y,[type(pras),alias(bar1)]),
	trie_property(_A,B),
	writeln(trie_property(4,B)),
	fail.
test4.

test5:- 
	trie_drop(bar1),
	trie_property(_X,Y),
	writeln(trie_property(5,Y)),
	fail.
test5.

test6:- 
	trie_drop(foo1),
	trie_property(_X,Y),
	writeln(trie_property(6,Y)),
	fail.
test6.



% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_trie_property "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
