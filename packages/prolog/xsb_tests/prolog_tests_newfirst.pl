:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import append/3,length/2 from basics.
:- import abolish_table_info/0 from machine.

:- table(first/3).
:- op(500,xfx,==>).

at :- abolish_table_info.

:- at.

test:- first(5,[s3],F),writeln(F),fail.

first(0,_,[]).
first(K,[],[]) :- K>0.
first(K,[S|R],L) :- K>0,
        S ==> B,
        first(K,B,L1),
        length(L1,K1),
        Kr is K - K1,
        first(Kr,R,L2),
        append(L1,L2,L).
first(K,[S|R],[S|L]) :- K>0,
        \+ (S ==> _),
        K1 is K-1,
        first(K1,R,L).

s3 ==> [s3,a].
s3 ==> [].

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh newfirst "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
