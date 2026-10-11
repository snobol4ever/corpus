test:- test1,fail.
test:- test2,fail.


:- multifile p1/3.
:- dynamic p1/3.
:- index(p1/3, trie).

p1(a, b, c).

test1:- 
      current_index(p1(_,_,_),F),writeln(F),
      tables:check_variant(p1(a,b,c)).

:- multifile p2/3.
:- dynamic p2/3.
:- index(p2/3, [2,1]).

p2(a, b, c).

test2:- 
      current_index(p2(_,_,_),F),writeln(F).


% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_mf_index "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
