:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/1 from num_vars.
:- [justify].
:- [actions].

test:- shell('rm -f ./actions_jxm.*'),fail.
test:- jxm(actions),fail.
test:- [actions_jxm],fail.
%
test:- just_true(dies(2,_,_,_),F),writeln(F),fail.
test:- just_false(dies(1,_,_,_),F),writeln(F),fail.
test:- just_true(p,F),writeln(F),fail.
test:- just_false(p,F),writeln(F),fail.
test:- just_false(b,F),writeln(F),fail.
test:- just_true(reach(1,3),F),numbervars(F),writeln(F),fail.
test:- just_false(reach(2,1),F),numbervars(F),writeln(F),fail.
test:- just_false(reach(3,1),F),numbervars(F),writeln(F),fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_just "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
