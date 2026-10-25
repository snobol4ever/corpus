:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* test that cant overload an immutable module by an immutable module */
:- import shell/1 from shell.

test:- 
    shell('rm -f immut.P immut.xwam'),
    shell('cp immut_a.P immut.P'),
    [immut],
    p(A),writeln(first(p(A))),
    fail.
test:- 
    shell('rm -f immut.xwam'),
    shell('cp immut_b.P immut.P'),
    [immut],
    p(A),writeln(second(p(A))),
    fail.
test:- 
    shell('rm -f immut.xwam'),
    shell('cp nonimmut_b.P immut.P'),
    [immut],
    p(A),writeln(third(p(A))),
    fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_immutable "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
