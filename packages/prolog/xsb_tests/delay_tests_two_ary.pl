%-----------------------------------------------------------------------
% Tests printing of delay lists.
%-----------------------------------------------------------------------

test :- p(X,Y), writeln(p(X,Y)), fail.
test.

%-----------------------------------------------------------------------

:- table p/2.

p(a,f(b)) :- tnot(p(a,f(b))).
p(a,f2(b,c)) :- tnot(p(a,f2(b,c))).
p(a,f3(b,c,d)) :- tnot(p(a,f3(b,c,d))).
p(a,f3(b,f(1,c),d)) :- tnot(p(a,f3(b,f(1,c),d))).
p(a,f3(b,c,e)).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh two_ary "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
