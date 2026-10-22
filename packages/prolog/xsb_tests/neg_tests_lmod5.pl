:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
test :- a, fail.
test :-
	( a -> writeln('a is true') ; writeln('a is false') ),
	( b -> writeln('b is true') ; writeln('b is false') ),
	( c -> writeln('c is true') ; writeln('c is false') ),
	( d -> writeln('d is true') ; writeln('d is false') ),
	( e -> writeln('e is true') ; writeln('e is false') ),
	( f -> writeln('f is true') ; writeln('f is false') ).

%--------------------------------------------------------------

%
% Example that shows that setting the BREG to point to the topmost
% generator CP is not safe...  Instead the lowest uncompleted generator
% CP of the ASCC should be used for this purpose.  Also, the prevbreg
% of that CP should be set to the prevbreg of the leader of the ASCC.
%

:- table a/0, b/0, c/0, d/0, e/0, f/0.

a :- b, tnot(d).

b :- c.
b.
b :- tnot(e).

c :- b.

d :- e, f.

e.

f :- tnot(c).


% DRIVER (appended by the vendoring, CEO-700): XSB neg_tests/test.sh runs gentest.sh lmod5 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
