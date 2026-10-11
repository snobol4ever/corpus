% Testing intern with dynamic and opaque.

test:- test_dyn,fail.
test:- test_opq,fail.
test.
%------------------------------

test_dyn:- path(a,X),writeln(p(a,X)),fail.

:- table path/2 as dyn,intern.

path(X,Y):- path(X,Z),edge(Z,Y).
path(X,Y):- edge(X,Y).

edge(a,a).
edge(a,b).
edge(b,c).

%------------------------------

:- import incr_assert/1 from increval.
:- import xsb_error_get_message/2,xsb_error_get_tag/2 from error_handler.

:- dynamic d/1 as incremental.

:- table r/1,r_i/1 as incremental.
:- table p/1 as intern,opaque.
:- table p_i/1 as incremental.

r(X):- p(X).
p(X):- d(X).
p(X):- p(X).

r_i(X):- p_i(X).
p_i(X):- d(X).
p_i(X):- p_i(X).

test_opq:- incr_assert(d(1)),fail.
test_opq:- r(X),writeln(r1(X)),fail.
test_opq:- r_i(X),writeln(r_i1(X)),fail.
test_opq:- incr_assert(d(2)),fail.
test_opq:- r(X),writeln(r2(X)),fail.
test_opq:- r_i(X),writeln(r_i2(X)),fail.
test_opq.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_intern_combo "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
