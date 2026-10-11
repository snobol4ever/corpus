
:- import interrupt_with_goal/1 from mutex_xsb.
test:- p(1000).

p(0):- !.
p(N):- 
       (N mod 5 =:= 0 -> writeln(p(N)) ; true),
       (N mod 10 =:= 0 -> interrupt_with_goal(writeln(hello(N))) ; true),
       N1 is N - 1,
       p(N1).

% DRIVER (appended by the vendoring, CEO-700): XSB nonmt_tests/test.sh runs gentest.sh test_goal_interrupt "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
