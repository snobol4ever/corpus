:- import for/3 from basics.
:- import for/2, for/1 from basics.  %% note that these do not exist and are not called,
				% but are used to get the basics module for call/n

test :-	call(myappend,X,Y,[x,y]),writeln(a(X,Y)),fail.
test :-	call(myappend(X),Y,[x,y]),writeln(b(X,Y)),fail.
test :-	call(myappend(X,Y),[x,y]),writeln(c(X,Y)),fail.
test :-	call(basics:append,X,Y,[a,b]),writeln(d(X,Y)),fail.
test :-	call(basics:append(X),Y,[a,b]),writeln(e(X,Y)),fail.
test :-	call(basics:append(X,Y),[a,b]),writeln(f(X,Y)),fail.
test :-	call(basics:for,X,1,3),writeln(g(X)),fail.
test :-	call(for(X),1,3),writeln(h(X)),fail.
test :-	call(for(X,1),3),writeln(i(X)),fail.
test :-	call(basics:select,X,[a,b,c],Y),writeln(j(X,Y)),fail.
test :-	call(basics:select(X),[a,b,c],Y),writeln(k(X,Y)),fail.
test :-	call(basics:select(X,[a,b,c]),Y),writeln(l(X,Y)),fail.

myappend([],L,L).
myappend([X|L1],L2,[X|L3]) :- myappend(L1,L2,L3).

select(_,_,_) :- writeln('ERROR').  % should not be used

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh call_tests "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
