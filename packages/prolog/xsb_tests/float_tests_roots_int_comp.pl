:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%---------------------------------------------------------------
% Tests comparisons of numbers with integers.
%---------------------------------------------------------------

solve( X, Y, Z ) :- D is Y * Y - 4 * X * Z, findRoots( X, Y, Z, D ).

findRoots( X, Y, _, D ) :- D =:= 0, X1 is -Y / ( 2 * X ),
    write( 'x1 = x2 = ' ), write( X1 ).
findRoots( X, Y, _, D ) :- D > 0, X1 is ( -Y + sqrt(D) ) / ( 2 * X ),
    X2 is ( -Y - sqrt(D) ) / ( 2 * X ), write( 'x1 = ' ),
    write( X1 ), tab(5), write( 'x2 = ' ), write( X2 ).
findRoots( _, _, _, D ) :- D < 0, write( 'There are no real roots' ).

%----------------------------------------------------------------------

test :- data(A,B,C), solve(A,B,C), nl, fail.
test.

data(1,2,1).
data(1.0,2,1.0).
data(1.0,2.0,1.0).
data(9.3,2.5,2).
data(9,3,2).
data(9.0,9.0,2.0).


% DRIVER (appended by the vendoring, CEO-700): XSB float_tests/test.sh runs gentest.sh roots_int_comp "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
