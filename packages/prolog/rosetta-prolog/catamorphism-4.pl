% Computes "Out" as:
%
% Out --<--f--<--f--<--f--<--f--<-- starter value
%          |     |     |     |
%          a     b     c     d

foldr(Foldy,[Item|Items],Starter,AccUp) :-    % case of nonempty list
   !,                                         % GREEN CUT for determinism
   foldr(Foldy,Items,Starter,AccUpPrev),      % recurse (NOT open to tail-call optimization)
   call(Foldy,Item,AccUpPrev,AccUp).          % call Foldy(Item,AccupPrev,AccUp) as last action

foldr(_,[],Starter,AccUp) :-                  % empty list: bounce Starter "upwards" into AccUp
   AccUp=Starter.                             % unification not in head for clarity

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines foldr/4 and never calls it; the driver folds the sum of 1..5 with plus/3 and the list [a,b,c,d] with atom_concat/3, showing the right fold's order.
:- initialization((foldr(plus, [1, 2, 3, 4, 5], 0, S), format("~w~n", [S]), foldr(atom_concat, [a, b, c, d], '', A), format("~w~n", [A]))).
