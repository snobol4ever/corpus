
:- import p1/2, p2/2, p3/2, p4/2, r2/2, p10/0 from m1.

% use this just to load m2.
test:- r2(A,B),writeln(found_r2(A,B)),fail.
% test compiled :/2
test:- m1:exported(A,B),writeln(found_m1:exported(A,B)),fail.
% test call/1 and :/2
test:- call(m1:exported(A,B)),writeln(found_call(m1:exported(A,B))),fail.
% test call/2 and :/2
test:- call(m1:exported(A),B),writeln(found_call(m1:exported(A),B)),fail.
% test call without :/2 (throws error)
test:- catch(exported(_A,_B),error(E,_),writeln(found(E))),fail.
% repeat tests w. dynamic code.
test:- p1(a,b),p2(X,Y),writeln(found(p2(X,Y))),fail.
test:- p3(a,b),p4(X,Y),writeln(found(p4(X,Y))),fail.
test:- m1:d1(A,B),writeln(found_m1:d1(A,B)),fail.
test:- call(m1:d1(A,B)),writeln(found_call(m1:d1(A,B))),fail.
test:- call(m1:d1(A),B),writeln(found_call(m1:d1(A),B)),fail.
test:- d2(X,Y),writeln(found(d2(X,Y))),fail.

/* Does not workt*/
test_broken:- p10,writeln('call(atom) test succeeded'),fail.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_modules "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
