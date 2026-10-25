:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import xsb_error_get_tag/2 from error_handler.

% This test checks how coalesced choice points and the heap
% manipulation of incremental view consistency work together with TPC
% expansion and heap gc.

?- set_prolog_flag(max_memory,50000).

test:- catch((assert(debuggingEnabled),solve,reportResults,writeln(terminated)), 
	     E,(xsb_error_get_tag(E,T),writeln(T)) ).

possibleVFTableWrite(0,0,4,x).
possibleVFTableWrite(9,0,0,4).
:-dynamic factVFTable/1as incremental.
:-dynamic factNOTVFTableEntry/3as incremental.
:-import incr_assert/1,c from increval.
debug(_X):-true.
debugln(_X):-true.
possibleVFTable(VFTable):-possibleVFTableWrite(_,_C,_O,VFTable).
reasonRTTIInformation(_F,s,e):-possibleVFTableWrite(_I,_M,_O,_V).
:-table reasonNOTVFTableEntry/3 as incremental.
reasonNOTVFTableEntry(_V,t,d):-factNOTVFTableEntry(_T,t,d).
reasonNOTVFTableEntry(VFTable,_O,_M):-factVFTable(VFTable),reasonRTTIInformation(e,_C,e).
guessVFTable:-possibleVFTable(VFTable),not(factVFTable(VFTable)),(tryVFTable(VFTable);l).
tryVFTable(VFTable):-try_assert(factVFTable(VFTable)),assert((e)).
concludeNOTVFTableEntry:-
    reasonNOTVFTableEntry(VFTable,V,A),not(factNOTVFTableEntry(VFTable,t,s)),try_assert(factNOTVFTableEntry(VFTable,V,A)).
concludeVirtualFunctionCall:-(n,e)(l()).
concludeMergeClasses:-(M,2)(M).
([],d)(_X)(t).
if_(If_0,Then_0,Else_0):-assert(no_if_answer(d)),(If_0,Then_0;retract(no_if_answer(d))->Else_0).
commit([H|T]):-if_(H,(debug(''),debug()),commit(T)).
try_assert(X):-try_assert_real(X).
try_assert_real(X):-incr_assert(X).
reasonForward:-commit([concludeVirtualFunctionCall,concludeNOTVFTableEntry,concludeMergeClasses]).
reasonForwardAsManyTimesAsPossible:-if_(reasonForward,(reasonForwardAsManyTimesAsPossible),debugln('')).
reasoningLoop:-guess,reasonForwardAsManyTimesAsPossible,reasoningLoop.
guess:-guessVFTable;reasoningLoop;('').
solve:-reasoningLoop.

% DRIVER (appended by the vendoring, CEO-700): XSB nonmt_tests/test.sh runs gentest.sh cmu_sei_a46d "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
