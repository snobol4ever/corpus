:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import new_trie/1 , trie_intern/4, trie_interned/4,
trie_unintern/2, delete_trie/1  from intern.

p(X) :- new_trie(X).

:- new_trie(X), assert(ta(X)).


t(A,L,R) :- ta(X),trie_intern(A,X,L,R).
t(A) :- ta(X),trie_intern(A,X,_,_).
td(A) :- ta(X),trie_interned(A,X,_,_).
td1(A,L) :- ta(X),trie_interned(A,X,L,_).
td(A,S) :- ta(X),trie_interned(A,X,_,S).
td1(A,L,S) :- ta(X), trie_interned(A,X,L,S).


test :- t(1), t(2), t(3,L,_R), t(4), t(5),
 ta(X), trie_unintern(X,L), setof(Y,td(Y), Y1),
	Y1 = [1,2,4,5],
	delete_trie(X),
	findall(Y2,td(Y2), Y3),
	Y3 = [].
       	

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh internt "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
