:- use_module(library(lists)).
:- initialization(main).
main :- X = "ab", ( string(X) -> write(string) ; is_list(X) -> write(codes) ; write(other) ), nl,
  current_prolog_flag(double_quotes, F), write(F), nl,
  display(f('A b', 1+2, -(x))), nl,
  string_concat(X, "c", Y), write(Y), nl, halt.
