:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

test:- win(X),writeln(win(X)),fail.
test:- lose(X),writeln(lose(X)),fail.
test.


:- auto_table.
pos(a). pos(b). pos(c). pos(d). pos(e). pos(f). pos(l).
win(X) :-  move(X,Y), tnot win(Y).
lose(X) :- pos(X), tnot win(X).
move(a,b).   move(a,f).
move(b,c).   
move(c,d).   move(c,l).
move(d,e).
move(e,a).
move(l,d).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh wmay_winbug "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
end_of_file.

_ Since c is won, lose(b) must be true, not undefined (the only
  move from b is to c.
* Since d is won, lose(l) must also be true.

