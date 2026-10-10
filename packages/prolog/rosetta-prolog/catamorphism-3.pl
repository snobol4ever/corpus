% Computes "Out" as:
%
% starter value -->--f-->--f-->--f-->--f-->-- Out
%                    |     |     |     |
%                    a     b     c     d


foldl(Foldy,[Item|Items],Acc,Result) :-    % case of nonempty list
   !,                                      % GREEN CUT for determinism
   call(Foldy,Item,Acc,AccNext),           % call Foldy(Item,Acc,AccNext)
   foldl(Foldy,Items,AccNext,Result).      % then recurse (open to tail call optimization)

foldl(_,[],Acc,Result) :-                  % case of empty list
   Acc=Result.                             % unification not in head for clarity

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines foldl/4 and never calls it; the driver folds the sum of 1..5 with plus/3 and the list [a,b,c,d] with atom_concat/3, showing the left fold's order.
:- initialization((foldl(plus, [1, 2, 3, 4, 5], 0, S), format("~w~n", [S]), foldl(atom_concat, [a, b, c, d], '', A), format("~w~n", [A]))).
