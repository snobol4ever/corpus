:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import append/3,length/2 from basics.
:- import abolish_table_info/0 from machine.

:- table(first/3).
:- op(500,xfx,==>).

at :- abolish_table_info.
 
:- at.

test:- first([s],5,F),writeln(F),fail.

% first(TNT,K,TList)
%first(_,0,[]).
%first([],_,[]).
first(_,_,[]).
first([Sym|Syms],K,F) :- K > 0,
        Sym ==> Bod,
        first(Bod,K,F0),
        length(F0,N), K1 is K-N,
        first(Syms,K1,F1), append(F0,F1,F).
first([Sym|Syms],K,[Sym|F]) :- K > 0,
        \+ (Sym ==> _),
        K1 is K-1, first(Syms,K1,F).


% first([s],3,L).
s ==> [a,s].
s ==> [a].


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh first "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
