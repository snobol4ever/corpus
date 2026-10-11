
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

end_of_file.

_ Since c is won, lose(b) must be true, not undefined (the only
  move from b is to c.
* Since d is won, lose(l) must also be true.

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh wmay_winbug "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
