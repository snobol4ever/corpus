:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

test:- 
	(test(4.5),fail ; test(-6.5),fail ; fail).

test(X):- 
	Y is abs(X),
	writeln(p(1,Y)).
test(X):- 
	Y is round(X),
	writeln(p(2,Y)).
test(X):- 
	Y is ceiling(X),
	writeln(p(3,Y)).
test(X):- 
	Y is truncate(X),
	writeln(p(4,Y)).
test(X):- 
	Y is truncate(abs(ceiling(round(X)))),
	writeln(p(5,Y)).

test:- X is cos(1),writeln(cos(1,X)),fail.
test:- X is tan(1),writeln(tan(1,X)),fail.
test:- X is asin(1),writeln(asin(1,X)),fail.
test:- X is acos(1),writeln(acos(1,X)),fail.
test:- X is 3**4,writeln(exp(3,4,X)),fail.
test:- X is min(3,4),writeln(min(3,4,X)),fail.
test:- X is max(3,4),writeln(max(3,4,X)),fail.
test:- X is 8 >< 7,writeln('><'(8,7,X)),fail.
test:- catch(txor1(_X),error(E1,_E2),writeln(caught(E1))),fail.
test:- catch(txor2(_X),error(E1,_E2),writeln(caught(E1))),fail.
test:- texp.
test:- X is sign(-3),writeln(sign(-3,X)),fail.
test:- X is sign(3),writeln(sign(3,X)),fail.
test:- X is sign(0),writeln(sign(0,X)).

txor1(X):- Y = a, X is Y >< 7.
txor2(X):- p(Y),
	X is Y >< 7.

p(_).
q(X):- X is -1.4**3.2.
r(X):- X is -3 ** 3.2.

texp:- X is 3 ** 2,writeln(ii1(3,2,X)),fail.
texp:- X is -1**2,writeln(ii2(-1,2,X)),fail.

texp:- X is 3.0 ** 2.0,writeln(bfbf1(3.0,2.0,X)),fail.
texp:- catch(q(_X),error(E1,_),writeln(caught(bfbf2(-1.4,3.2,E1)))),fail.
texp:- X is 1.4**3.2,writeln(bfbf3(1.4,3.2,X)),fail.

texp:- X is 2**3.2,writeln(ibf(X)),fail.
texp:- catch(r(_X),error(E1,_),writeln(caught(ibf2(-2,3.2,E1)))),fail.

texp:- X is 3.2 ** 2,writeln(bfi(X)),fail.
texp:- X is -3.2 ** 2,writeln(bfi(X)),fail.

end_of_file.

texp3:- catch(X is -1.4 ** 3.2 , E1, writeln(caught(bfbf2(-1.4,3.2,E1)))),fail.
underflor X is 0 ** -2.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh conv_fun "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
