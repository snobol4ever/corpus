:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/1 from num_vars.
:- compiler_options([spec_off]).

test:- restart,fail.
test:- show_model(1),fail.
test:- abolish_table_call(p(5,10,a)),fail.
test:- show_model(2),fail.

restart:- p(10,10,a),fail.
restart:- p(10,10,b),fail.
restart.

show_model(_):- writeln('------------------------'),fail.
show_model(N):- get_residual(p(A,B,a),R),numbervars((p(A,B,a),R)),write(N),write(' : '),write(p(A,B,a)),write(':-'),writeln(R),fail.
show_model(N):- get_residual(undefined,R),numbervars((R)),write(N),write(' : '),write(undefined),write(':-'),writeln(R),fail.
show_model(_):- writeln(---),fail.
show_model(N):- get_residual(p(A,B,b),R),numbervars((p(A,B,b),R)),write(N),write(' : '),write(p(A,B,b)),write(':-'),writeln(R),fail.
show_model(_).

%-------------

:- table p/3.
p(0,Lim,X):- tnot p(Lim,Lim,X).
p(0,_,_X):- tnot undefined.
p(N,Lim,X):- N > 0,N1 is N - 1,tnot p(N1,Lim,X).




% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh abolish_neg_cycle "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
