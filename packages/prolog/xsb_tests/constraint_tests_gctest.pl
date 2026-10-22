:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- ensure_loaded(chr).
:- ensure_loaded(timeConstraints).
:- ensure_loaded(globalvar).
:- ensure_loaded(mutablevar).
:- ensure_loaded(allentable).
:- ensure_loaded(time).
:- ensure_loaded(constraintLib).

:- import arc/4 from timeConstraints.
:- import show_store/1 from chr_interp.

/* This test checks garbage collection when there are lots of
   attributed variables and pre-images on the trial.  */

test:-  make_chain(25),
	writeln('made the chain without seg faulting!').

make_chain(N):- 
	arc(_Var1,Var2,[before],i-i),
	make_chain(N,Var2).

make_chain(1,_Var1):- !.
make_chain(N,Var1):- 
	arc(Var1,Var2,[before],i-i),
	N1 is N - 1,
	make_chain(N1,Var2).


% DRIVER (appended by the vendoring, CEO-700): XSB constraint_tests/test.sh runs gentest.sh gctest "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
