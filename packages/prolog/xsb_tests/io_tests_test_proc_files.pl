:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import load_dsv/3,save_dsv/3 from proc_files.
:- import stat_set_flag/2 from machine.

test :- stat_set_flag(101,2), fail.  %set utf_8 file charset for all reading.
test:- 
     shell('rm -f pf_psv.psv'),
     load_dsv('pf_tsv.tsv',from_tsv(atom,atom),[separator("\t"),order=reverse]),
    load_dyn('pf_prolog'),
    fail.
test:- 
    from_tsv( A,B ) ,\+ from_P( A,B ),
    writeln('Prolog did not properly load'(from_P( A,B ))),
    fail.
test:- 
    from_P( A,B ) ,\+ from_tsv( A,B ),
    writeln('load_dsv did not properly load'(from_tsv( A,B ))),
    fail.
test:-
    writeln('load_finished'),fail.
test:-
    save_dsv('pf_psv.psv',from_P/2,[separator("|")]),
    fail.
test:-
    load_dsv('pf_psv.psv',from_psv(atom,atom),[separator("|")]),
    fail.
test:- 
    from_psv( A,B ) ,\+ from_P( A,B ),
    writeln('improper psv term'(from_psv( A,B ))),
    fail.
test:- 
    from_P( A,B ) ,\+ from_psv( A,B ),
    writeln('load_dsv did not properly load'(from_psv( A,B ))),
    fail.
test:-
    writeln(save_and_reload_finished).

% DRIVER (appended by the vendoring, CEO-700): XSB io_tests/test.sh runs gentest.sh test_proc_files "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
