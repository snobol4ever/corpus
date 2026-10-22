:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%----------------------------------------------------------------------
% Tests abolishing suspensions and early completion.  The idea is that
% negation suspensions should not be abolished and early completion 
% cannot be performed when only unconditional answers are derived.
%
% In this program all answers are conditional; furthermore, no
% simplification is applicable and thus the residual program is
% identical to those without the writelns.  Nice example for
% displaying conditional answers...
%----------------------------------------------------------------------

:- table t/0, a/0, b/0.

test :- t, fail.
test.

t :- a,	tnot(t),	% create generators for a and b.
     writeln('t: gets a conditional answer from its first clause').
t :- b, tnot(a), tnot(t),
     writeln('t: gets a conditional answer from its second clause').
t :- tnot(a), tnot(t),
     writeln('t: gets a conditional answer from its third clause').

a :- tnot(b), writeln('a: One b'), tnot(b), writeln('a: Two b''s').

b :- tnot(b).


% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh abol_susp1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
