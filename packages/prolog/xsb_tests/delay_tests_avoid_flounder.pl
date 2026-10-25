:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%--------------------------------------------------------------------------
%  Currently, this test is quite pointless...  Unfortunately, I do not
%  know of a good way of testing floundering (or have a variant of SLG
%  that avoids unnecessary floundering.  Thus, the use of sk_not/1.
%  However, one fine day this test can serve as an example of a floundering
%  test.
%--------------------------------------------------------------------------

:- table p/1, q/1, r/1, t/1.

:- import sk_not/1 from tables.

%----------------------------------------------------
% p/1 should not flounder for any query.
% Furthermore, no query should require SCC detection.
%----------------------------------------------------

p(X) :- sk_not(p(X)).
p(a).
p(X) :- ( var(X) -> writeln('Universal answer derived for p(X)')
	; X == a -> writeln('Major bug in early completion')
	; true
	).

%----------------------------------------------------
% q/1 should have the same behaviour as p/1.
%----------------------------------------------------

q(a).
q(X) :- sk_not(q(X)).
q(X) :- ( var(X) -> writeln('Universal answer derived for q(X)')
	; X == a -> writeln('Major bug in early completion')
	; true
	).

%----------------------------------------------------
% r/1 should not flounder for the query q(a),
% it should produce a conditional answer for q(b),
% and it should flounder for the query q(X).
%----------------------------------------------------

r(a).
r(X) :- sk_not(r(X)).

%----------------------------------------------------
% t/1 should have the same behaviour as r/1.
%----------------------------------------------------

t(X) :- sk_not(t(X)).
t(a).

%--------------------------------------------------------------------------

:- import numbervars/1 from num_vars.

test :- tp.
test :- tq.
test :- tr.
test :- tt.
test.

%---------------------------------------------------------------------------
tp :- X = a, p(X), write(p(X)),
      ( tnot(p(X)) -> writeln(' is undefined') ; writeln(' is true (OK)') ),
      fail.
tp :- X = b, p(X), write(p(X)),
      ( tnot(p(X)) -> writeln(' is undefined') ; writeln(' is true (OK)') ),
      fail.
tp :- X = X, p(X), write('p(X) has answer '),
      numbervars(p(X)), writeln(p(X)), fail.
%---------------------------------------------------------------------------
tq :- X = a, q(X), write(q(X)),
      ( tnot(p(X)) -> writeln(' is undefined') ; writeln(' is true (OK)') ),
      fail.
tq :- X = b, q(X), write(q(X)),
      ( tnot(q(X)) -> writeln(' is undefined') ; writeln(' is true (OK)') ),
      fail.
tq :- X = X, q(X), write('q(X) has answer '),
      numbervars(q(X)), writeln(q(X)), fail.
%---------------------------------------------------------------------------
tr :- X = a, r(X), write(r(X)),
      ( tnot(r(X)) -> writeln(' is undefined') ; writeln(' is true (OK)') ),
      fail.
tr :- X = b, r(X), write(r(X)), fail.
tr :- ( tnot(r(b)) -> writeln(' is undefined (OK)') ; writeln(' is true') ),
      fail.
tr :- X = X, r(X), write('r(X) has answer '),
      numbervars(r(X)), writeln(r(X)), fail.
%---------------------------------------------------------------------------
tt :- X = a, t(X), write(t(X)),
      ( tnot(t(X)) -> writeln(' is undefined') ; writeln(' is true (OK)') ),
      fail.
tt :- X = b, t(X), write(t(X)), fail.
tt :- ( tnot(t(b)) -> writeln(' is undefined (OK)') ; writeln(' is true') ),
      fail.
tt :- X = X, t(X), write('t(X) has answer '),
      numbervars(t(X)), writeln(t(X)), fail.
%---------------------------------------------------------------------------

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh avoid_flounder "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
