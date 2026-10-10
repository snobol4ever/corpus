% ===
% Main predicate
% ===

sort_disjoint_sublist(Values,Indexes,ValuesSorted) :-
   sort(Indexes,IndexesSorted),
   insert_fresh_vars_by_splintering(IndexesSorted,Values,FreshVars,ValsToSort,ValuesFreshened),
   msort(ValsToSort,ValsSorted),  % this is the "sorting of values"
   % The next two lines could be left out with suitable naming,
   % but they make explicit what happens:
   FreshVars = ValsSorted,         % fresh variables are unified with sorted variables
   ValuesSorted = ValuesFreshened. % ValuesFreshend is automatically the sought output

% ===
% Helpers
% ===

insert_fresh_vars_by_splintering([I|Is],Values,[Fresh|FreshVars],[ValAtI|ValsToSort],ValsFreshyFinal) :-
   splinter(Values,I,ValAtI,ValsFront,ValsBack),         % splinter  Values  --> ValsFront + ValAtI + ValsBack
   append([ValsFront,[Fresh],ValsBack],ValsFreshyNext),  % recompose ValsFront + Fresh + ValsBack --> ValuesFreshyNext
   insert_fresh_vars_by_splintering(Is,ValsFreshyNext,FreshVars,ValsToSort,ValsFreshyFinal).

insert_fresh_vars_by_splintering([],V,[],[],V).

% "splinter" a list into a frontlist, the element at position N and a backlist

splinter(List, N, Elem, Front, Back) :-
    length(Front, N),
    append(Front, [Elem|Back], List).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sort_disjoint_sublist/3 and never calls it; the driver runs the task's values and indices {6, 1, 7}.
:- initialization((sort_disjoint_sublist([7,6,5,4,3,2,1,0], [6,1,7], R), format("~w~n", [R]))).
