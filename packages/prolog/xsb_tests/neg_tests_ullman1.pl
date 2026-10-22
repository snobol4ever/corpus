:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%
% The well-founded model is two valued {p, ~q, ~r, s, ~t, ~u}
%
% Query:	p, tnot(q), tnot(r), s, tnot(t), tnot(u).
%

:- table p/0, q/0, r/0, s/0, t/0, u/0.

p :- tnot(q).
q :- r.
r :- q.
s :- p.
t :- tnot(s).
t :- u.
u :- t.

%--------------------------------------------------------------

test :-
	( p -> writeln('p is true') ; writeln('p is false') ),
	( q -> writeln('q is true') ; writeln('q is false') ),
	( r -> writeln('r is true') ; writeln('r is false') ),
	( s -> writeln('s is true') ; writeln('s is false') ),
	( t -> writeln('t is true') ; writeln('t is false') ),
	( u -> writeln('u is true') ; writeln('u is false') ),
	abolish_all_tables,
	( p, tnot(q), tnot(r), s, tnot(t), tnot(u) ->
		writeln('! Conjunctive query is successful...')
	; writeln('! Conjunctive query failed...')
	).

%---------------------------------------------------------------


% DRIVER (appended by the vendoring, CEO-700): XSB neg_tests/test.sh runs gentest.sh ullman1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
