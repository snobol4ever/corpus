:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import qqq/3 from mf_file1.
:- import pp/2 from mf_file2.
:- [mf_file1].
:- [mf_file2].
:- load_dync(mf_file3).		% test load_dync/1
:- load_dyn(mf_file4).		% test load_dync/1

:- [mf_file5].			% test table directive
%:- load_dyn(mf_file6).		% mf_file5 = mf_file6 (transitive closure)

:- [mf_hilog1].			% test hilog term
:- [mf_hilog2].

test :- p(X,Y), writeln(p(X,Y)), fail.
test :- qqq(X,Y,Z), writeln(qqq(X,Y,Z)), fail.
test :- pp(X,Y), writeln(pp(X,Y)), fail.
test :- dyn_p(X,Y), writeln(dyn_p(X,Y)), fail.
test :- tc(X,Y), writeln(tc(X,Y)), fail.
test :- X(Y,Z), writeln(X(Y,Z)), fail.
test :- g(X,Y), writeln(g(X,Y)), fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh mf_test1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
