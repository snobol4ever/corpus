:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

test :- evl1(1+2), evl2, evl3, fail.
test:- t1(X), writeln(t1(X)),fail.
test:- t2(X), writeln(t2(X)),fail.
test:- t3(X), writeln(t3(X)),fail.
test:- t4(X1,X2), writeln(t4(X1,X2)),fail.
test:- t5,writeln(t5_passed),fail.
test:- t6,writeln(t6_passed),fail.
test:- t7(X), writeln(t7(X)),fail.
test:- t8(X), writeln(t8(X)),fail.

evl1(N) :- M is N, number(M), writeln(evl1(M)).

evl2 :- N=1+3, M is N, number(M), writeln(evl2(M)).

evl3:- current_prolog_flag(min_integer,F), current_prolog_flag(max_integer,G),F < G,
	writeln(evl3_passed).

t1(X):- X is e + 2. % ok

t2(X):- X is pi / 2. %ok

t3(X):- X is pi.  % ok

t4(X1,X2):- generate(0.5,0.5,X1,X2).

generate(U1,U2,N1,N2):- 
    N1 is sqrt( -2*log(U1)) * cos(2*pi*U2),
    N2 is sqrt( -2*log(U2)) * cos(2*pi*U1).

t5:- pi + 1 > 2.  % ok

t6:- pi  > 2.  % ok

t7(X) :- Y = 100 + ceiling(655359983 / 1024), X is Y.

t8(X) :- Y = e + (7 - (- pi)), X is Y.


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh arith_op "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
