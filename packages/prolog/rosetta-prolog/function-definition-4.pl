:- use_module(library(function_expansion)).

user:function_expansion(multiply(A, B), P, P is A * B).  % "function" definition

go :-
  format("The product is ~d.~n", [multiply(5, 2)]).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
