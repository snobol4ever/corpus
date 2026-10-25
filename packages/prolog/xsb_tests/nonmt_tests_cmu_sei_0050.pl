:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
test:- solve.

:-dynamic factNOTConstructor/1as incremental.
:-import incr_assert/1from increval.
iso_dif(_X,((2))).
initialNOTConstructor(Method):-thisPtrUsage(I,F,T,_),thisPtrUsage(I,F,T,Method),iso_dif(1,2).
:-table reasonNOTConstructor/1as incremental.
reasonNOTConstructor(e):-factNOTConstructor(_M).
reasonNOTConstructor(Method):-initialNOTConstructor(Method).
reasonVirtualFunctionCall(n,_,r,t,e,t):-(l).
concludeNOTConstructor:-reasonNOTConstructor(Method),not(factNOTConstructor(Method)),try_assert(factNOTConstructor(Method)).
concludeVirtualFunctionCall:-reasonVirtualFunctionCall(n,c,r,t,e,'').
if_(If_0,Then_0,Else_0):-assert(no_if_answer(d)),(If_0,Then_0;retract(no_if_answer(d))->Else_0).
commit([H|T]):-if_(H,(debug),commit(T)).
try_assert(X):-try_assert_real(X).
try_assert_real(X):-incr_assert(X).
reasonForward:-commit([concludeVirtualFunctionCall,concludeNOTConstructor]).
reasonForwardAsManyTimesAsPossible:-if_(reasonForward,(reasonForwardAsManyTimesAsPossible),(writeln(done))).
thisPtrUsage(x,0,0,4).
thisPtrUsage(x,0,3,40).
thisPtrUsage(7,0,3,x).
thisPtrUsage(x,0,5,3).
thisPtrUsage(3,0,5,0).
thisPtrUsage(x,0,5,d).
thisPtrUsage(0,0,0,7).
thisPtrUsage(0,0,0,1).
solve:-reasonForwardAsManyTimesAsPossible.

% DRIVER (appended by the vendoring, CEO-700): XSB nonmt_tests/test.sh runs gentest.sh cmu_sei_0050 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
