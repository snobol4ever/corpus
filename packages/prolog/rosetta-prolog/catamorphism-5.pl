:- use_module(library(clpfd)). % We are using #= instead of the raw "is".

foldy_len(_Item,ThreadIn,ThreadOut) :-
   succ(ThreadIn,ThreadOut).

foldy_add(Item,ThreadIn,ThreadOut) :-
   ThreadOut #= Item+ThreadIn.

foldy_mult(Item,ThreadIn,ThreadOut) :-
   ThreadOut #= Item*ThreadIn.

foldy_squadd(Item,ThreadIn,ThreadOut) :-
   ThreadOut #= Item+(ThreadIn^2).

% '[|]' is SWI-Prolog specific, replace by '.' as consbox constructor in other Prologs

foldy_build(Item,ThreadIn,ThreadOut) :-
   ThreadOut = '[|]'(Item,ThreadIn).

foldy_join(Item,ThreadIn,ThreadOut) :-
   (ThreadIn \= "")
   -> with_output_to(string(ThreadOut),format("~w,~w",[Item,ThreadIn]))
   ;  with_output_to(string(ThreadOut),format("~w",[Item])).

% '=..' ("univ") constructs a term from a list of functor and arguments

foldy_expr(Functor,Item,ThreadIn,ThreadOut) :-
   ThreadOut =.. [Functor,Item,ThreadIn].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the foldy_* step predicates and never calls them; the driver folds the task's [1,2,3,4,5] with each through foldl/4 (library(apply)), as catamorphism-6's foldl tests do.
:- initialization(forall(member(F-S, [foldy_len-0, foldy_add-0, foldy_mult-1, foldy_build-[], foldy_squadd-0, foldy_join-"", foldy_expr(*)-1]), (foldl(F, [1, 2, 3, 4, 5], S, R), format("~w: ~q~n", [F, R])))).
