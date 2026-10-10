look_and_say(L) :-
  maplist(write, L), nl,
  encode(L, L1),
  look_and_say(L1).

% This code is almost identical to the code of "run-length-encoding"
encode(In, Out) :-
  packList(In, R1),
  append(R1,Out).


% use of library clpfd allows packList(?In, ?Out) to works
% in both ways In --> Out and In <-- Out.

:- use_module(library(clpfd)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ?- packList([a,a,a,b,c,c,c,d,d,e], L).
%  L = [[3,a],[1,b],[3,c],[2,d],[1,e]] .
% ?- packList(R,  [[3,a],[1,b],[3,c],[2,d],[1,e]]).
% R = [a,a,a,b,c,c,c,d,d,e] .
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
packList([],[]).

packList([X],[[1,X]]) :- !.


packList([X|Rest],[XRun|Packed]):-
    run(X,Rest, XRun,RRest),
    packList(RRest,Packed).


run(Var,[],[1,Var],[]).

run(Var,[Var|LRest],[N1, Var],RRest):-
    N #> 0,
    N1 #= N + 1,
    run(Var,LRest,[N, Var],RRest).


run(Var,[Other|RRest], [1,Var],[Other|RRest]):-
    dif(Var,Other).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): look_and_say/1 prints a term and recurses forever; the driver runs the same step, encode/2, from [1] and prints the first 10 terms in look_and_say/1's own format.
:- initialization((length(Ns, 10), foldl([_, L0, L1]>>(maplist(write, L0), nl, encode(L0, L1)), Ns, [1], _))).
