:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import incr_assert/1 from increval.
:- import xsb_error_get_message/2,xsb_error_get_tag/2 from error_handler.

:- dynamic d/1 as incremental.

:- table r/1,r_i/1 as incremental.
:- table p/1 as dyn,opaque.
:- table p_i/1 as incremental.

r(X):- p(X).
p(X):- d(X).
p(X):- p(X).

r_i(X):- p_i(X).
p_i(X):- d(X).
p_i(X):- p_i(X).

%---------

:- table r/0,r_i/0 as incremental.
:- table p/0 as dyn,opaque.
:- table p_i/0 as incremental.

r:- p.
p:- d(_X).
p:- p.

r_i:- p_i.
p_i:- d(_X).
p_i:- p_i.

%---------

:- table r_bad/1 as incremental.
:- table p_bad/1 as dyn.

r_bad(X):- p_bad(X).
p_bad(X):- d(X).
p_bad(X):- p_bad(X).

%---------

test:- incr_assert(d(1)),fail.
test:- r(X),writeln(r1(X)),fail.
test:- r_i(X),writeln(r_i1(X)),fail.
test:- incr_assert(d(2)),fail.
test:- r(X),writeln(r2(X)),fail.
test:- r_i(X),writeln(r_i2(X)),fail.
test:- r,writeln(r),fail.
test:- r_i,writeln(r_i),fail.
test:- catch(r_bad,E,(xsb_error_get_tag(E,M),writeln(M))),fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB nonmt_tests/test.sh runs gentest.sh test_dynopq "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
