%
% From Przymusinska and Przymusinski (weakly stratified paper).
% Example of a program that has a well-founded (and unique stable)
% model M = {s}, but does not have a weakly perfect model.
%
% This is the same as pzry1.P byt the literals in the first clause
% have been reordered so that it is left-to-right WHATEVER stratified.
%

:- table p/0, q/0, r/0, s/0.

p :- q, tnot(s), tnot(r).
q :- r, tnot(p).
r :- p, tnot(q).
s :- tnot(p), tnot(q), tnot(r).

%--------------------------------------------------------------

test :-
	( p -> writeln('p is true') ; writeln('p is false') ),
	( q -> writeln('q is true') ; writeln('q is false') ),
	( r -> writeln('r is true') ; writeln('r is false') ),
	( s -> writeln('s is true') ; writeln('s is false') ).
				 
%---------------------------------------------------------------


% DRIVER (appended by the vendoring, CEO-700): XSB neg_tests/test.sh runs gentest.sh przy2 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
