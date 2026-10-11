:- import length/2 from basics.
:- import get_residual/2 from tables.

test :- p(1,_),fail.	% complete p(1,X) table.
test :- findall(X, (get_residual(p(1,_),DL),und_delay(DL,X)), L),
        length(L,N), writeln(N).

und_delay([X,und], X).
und_delay([und,X], X).

a(X,Y) :- X >= 0, X < 10001, Y is (X+1) mod 10001.

b(X,Y) :- a(X,Y),und.

:- table p/2.
p(X,Y) :- b(X,Y).
p(X,Y) :- p(X,Z),b(Z,Y).

:- table und/0.
und :- tnot(und).


% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh fa "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
