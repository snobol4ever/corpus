:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

%% why is this necessary?
%:- xsb_configuration(compiler, CC), consult(xeddis, [cc(CC)]).

:- import min_ed_dis/3 from xeddis.

test :- get_distance(X,Y,Z), writeln(distance(X,Y,Z)), fail.
test.

get_distance(frog,dog,X) :- min_ed_dis(frog,dog,X).
get_distance(frog,antidisestablishmentarianism,X) :- 
	min_ed_dis(frog,antidisestablishmentarianism,X).

% DRIVER (appended by the vendoring, CEO-700): XSB foreign_tests/test.sh runs gentest.sh cinter1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
