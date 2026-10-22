:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/1 from num_vars.
my_writeln(Term) :-
	(do_all
	 numbervars(Term),
	 writeln(Term)
	).

my_writeq(Term) :-
	(do_all
	 numbervars(Term),
	 writeq(Term)
	).


test :- write('Testing dynamic mod: '),my_writeln(modp_file:p(_,_)),fail.
test :- Mod = modp_file,findall(p(X,Y),Mod:p(X,Y),List), writeln(Mod:List), fail.

test :- write('Testing dynamic mod: '),my_writeln(modp>>modp_file:p(_,_)),fail.
test :- Mod = modp>>modp_file,findall(p(X,Y),Mod:p(X,Y),List), writeln(Mod:List), fail.

test :- write('Testing dynamic mod: '),my_writeln(modp_filec:p(_,_)),fail.
test :- Mod = modp_filec,findall(p(X,Y),Mod:p(X,Y),List), writeln(Mod:List), fail.

test :- write('Testing dynamic mod: '),my_writeln(modpc>>modp_filec:p(_,_)),fail.
test :- Mod = modpc>>modp_filec,findall(p(X,Y),Mod:p(X,Y),List), writeln(Mod:List), fail.


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_dynmod "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
