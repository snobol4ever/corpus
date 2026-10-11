
:- import write_term/2 from write_term.

test:- test1,nl,fail ; true.

test1:- 
	write_term([1,2,3],[]).
test1:- 
	write_term([1,2,3],[ignore_ops(true)]).
test1:- 
	write_term('1<2',[]).
test1:- 
	 write_term('1<2',[quoted(true)]).
test1:- 
	write_term('$VAR'(0),[numbervars(true)]).
test1:- 
	write_term('$VAR'(26),[numbervars(true)]).
test1:- 
      write_term('$VAR'(seven('MyVar')),[numbervars(true)]).
test1:- 
	write_term('$VAR'(eight("MyVar")),[numbervars(true)]).
test1:- 
	write_term(nine([1,2,3,4,5]),[max_depth(3)]).
test1:- 
	write_term(ten((a,b)),[priority(300)]).
test1:- 
	write_term(eleven(123),[radix(hex)]).
test1:- 
	write_term(twelve(123),[radix(octal)]).
     

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh wttest "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
