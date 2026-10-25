:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
%  Dynamically stratified program in which p is FALSE no matter what!
%  (even though it might require answer completion for its second clause).
%------------------------------------------------------------------------

:- auto_table.

p :- tnot(q).
p :- tnot(q), p.
p :- tnot(p), tnot(q).
p :- tnot(q), tnot(p).

q :- tnot(r).

r :- tnot(p), fail.

%------------------------------------------------------------------------

test :- p, fail.
test :- ( p ->  ( tnot(p) -> writeln('p is undefined')
                ; writeln('p is true') )
        ; writeln('p is false (OK)') ),
        ( q ->  ( tnot(q) -> writeln('q is undefined')
                ; writeln('q is true (OK)') )
        ; writeln('q is false') ),
        ( r ->  ( tnot(r) -> writeln('r is undefined')
                ; writeln('r is true') )
        ; writeln('r is false (OK)') ).


% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh dynstrat6 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
