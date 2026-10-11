:- table s2/1.
:- use_subsumptive_tabling s2/1.

test :- test7.

s2(X) :- 	put_attr(X,general5,bug).

test7:- catch(test7_1,error(table_error,_Msg,_Bt),writeln('test7 properly caught')).

test7_1:- 
	s2(X),
	writeln('test7: attv in answer to subsumptive table.').


% DRIVER (appended by the vendoring, CEO-700): XSB attv_tests/test.sh (commented out there) runs gentest.sh catch1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
