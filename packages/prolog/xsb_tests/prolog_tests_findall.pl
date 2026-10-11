% This tests findall/3 and heap expansion: should
% better be run with default global/local stack size.

:- import length/2, select/3 from basics.

perms([], []).
perms(S, [X|Temp]) :- select(X, S, T), perms(T, Temp).

test :- findall(Elem,perms([1,2,3,4,5,6,7,8],Elem),L), length(L,N), writeln(N).


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh findall "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
