:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import trie_create/2, trie_intern/2, incr_trie_intern/2, 
	trie_interned/2 from intern.

:- import incr_assert/1,incr_retractall/1,incr_assert_inval/1,
	  incr_table_update/0,incr_retract_inval/1 from increval.

test:- test_seq.
%-----------

:- table pt/3 as subsumptive,incremental.
pt(T,X,Y) :- 
%	writeln(executing(pt(T,X,Y))),
	trie_interned(qt(X,Y),T),Y =< 5.

%-----------

:- table n/2 as subsumptive,incremental.
n(X,Y) :- p(X,Y),Y < 5.

:- table p/2 as subsumptive,incremental.
p(X,Y) :- q(X,Y),Y =< 5.

:- dynamic q/2 as incremental.
q(a,1).
q(b,3).
q(c,5).
q(d,7).

%-----------

:- dynamic qat/2 as incremental.
:- index(qat/2,trie).

:- table pat/2 as subsumptive,incremental.
pat(X,Y) :- qat(X,Y),Y =< 5.

%-----------

test_seq:- test_trie_abol,fail.
test_seq:- test_dyn_abol,fail.
test_seq:- test_tdyn_abol,fail.
test_seq.

incr_writeln(Term):- write(incr(Term)),writeln('.').

test_trie_abol:- 
	trie_create(T,[incremental]),
	trie_intern(qt(a,1),T),	trie_intern(qt(b,3),T),
	trie_intern(qt(c,5),T),trie_intern(qt(d,7),T),
	pt(T,X,Y),incr_writeln(first_pt(T,X,Y)),
	fail.
test_trie_abol:- abolish_all_tables,fail.
test_trie_abol:- incr_trie_intern(1,qt(d,4)),fail.
test_trie_abol:- pt(1,X,Y),incr_writeln(second_pt(1,X,Y)),fail.
test_trie_abol.

%-----------

% test abolish_all + regular asserts.
test_dyn_abol:- p(X,Y),incr_writeln(first_p(X,Y)),fail.
test_dyn_abol:- abolish_all_tables,fail.
test_dyn_abol:- incr_assert(q(d,4)),fail.
test_dyn_abol:- p(X,Y),incr_writeln(second_p(X,Y)),fail.
test_dyn_abol.

%-----------

test_tdyn_abol:- assert(qat(a,1)),assert(qat(b,2)),assert(qat(c,5)),assert(qat(d,7)),fail.
test_tdyn_abol:- pat(X,Y),incr_writeln(first_pat(X,Y)),fail.
test_tdyn_abol:- abolish_all_tables,fail.
test_tdyn_abol:- incr_assert(qat(d,4)),fail.
test_tdyn_abol:- pat(X,Y),incr_writeln(second_pat(X,Y)),fail.
test_tdyn_abol.

%-----------


% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/stest.sh runs gentest.sh s_inc_abol "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
end_of_file.


