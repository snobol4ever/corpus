:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

test:-
    setup,fail.
test:- 
    sk_not(p(_)),!.
test:-
    writeln(failed_on_sk_not),
    p(_X),
    writeln(succeeded_on_pos_call).

setup:- 
    abolish_all_tables,
    table(p/1),
    assert(p(_)),
    catch(tnot(p(_)),_E,writeln(caught_tnot)).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_floundering_cleanup "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
