:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import trie_create/2, trie_bulk_insert/2, trie_bulk_unify/3, trie_bulk_delete/2
   from intern.
:- import member/2 from basics.

test:- test1, test2.

test1:- 
	trie_create(T,[type(prge)]),
	trie_bulk_insert(T,bulk_create(_Term,5)),
	trie_bulk_unify(T,pair(X,Y),List1),
	writeln(intrie(prge,1,List1)),
	trie_bulk_delete(T,pair(1,_)),
	trie_bulk_unify(T,pair(X,Y),List2),
	writeln(intrie(prge,2,List2)).

test2:- 
	trie_create(T,[type(pras)]),
	trie_bulk_insert(T,bulk_create(_Term,5)),
	trie_bulk_unify(T,pair(X,Y),List1),
	writeln(intrie(pras,1,List1)),
	trie_bulk_delete(T,pair(1,_)),
	trie_bulk_unify(T,pair(X,Y),List2),
	writeln(intrie(pras,1,List2)).

bulk_create(pair(One,Two),N):- 
	make_list(N,List),
	member(One,List),
	member(Two,List).

make_list(0,[]):- !.
make_list(N,[N|T]):- 
	N1 is N - 1,
	make_list(N1,T).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh bulk_trie_test "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
