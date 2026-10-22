:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import get_call/2, table_state/4, get_returns/2 from tables.
:- import abolish_table_info/0 from machine.
 
test :- abolish_table_info, int(p(X,Y)),writeln([X,Y]),fail. 
 
% interpreter 
 
:- table int/1. 
 
int(G) :- rule(G,B),int_c(B).

int_c(G) :- 
        G == true   
         ->     true 
         ; G = (A,B) 
         ->     int_c(A),int_c(B)
         ; in_table(int(G),C,R)     % if completed table for this call 
         ->     get_returns(C,R)
         ;      int(G)
        .

in_table(Call,C,R) :-
	get_call(Call,C,R), table_state(Call,_,_,complete).

rule(p(X,Y),a(X,Y)).
rule(p(X,Y),(p(X,Z),p(Z,Y))).
rule(a(1,2),true).
rule(a(2,3),true).
rule(a(3,1),true).


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh std1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
