:- import tfindall/3, abolish_table_pred/1 from tables.
:- import numbervars/3 from num_vars.

:- table b/2.
:- table q/2.

testcombo :- 	(a4w(A,B,C),fail ; 
		 abolish_table_pred(b/2),a5w(A,B,C),fail ;
		 abolish_table_pred(b/2),a6w(A,B,C),fail).

a4w(A,B,C) :- a4(A,B,C),T = a4(A,B,C),numbervars(T,0,_T1),writeq(T),nl.

a5w(A,B,C) :- a5(A,B,C),T = a5(A,B,C),numbervars(T,0,_T1),writeq(T),nl.

a6w(A,B,C) :- a6(A,B,C),T = a6(A,B,C),numbervars(T,0,_T1),writeq(T),nl.

a4(_A,_B,L) :- b(X,Y), tfindall(X-Y,b(X,Y),L1), sort(L1,L).

a5(X,Y,L) :- b(X,Y), tfindall(X-Y,b(X,Y),L1), sort(L1,L).

a6(X,Y,L) :- q(X,Y), tfindall(X-Y,q(X,Y),L1), sort(L1,L).

b(X,Y) :- p(X,Y).
b(_,_).

p(1,2).
p(1,3).
p(2,3).

q(1,2).
q(1,3).
q(2,3).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs gentest.sh tsstr13 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((testcombo))).
