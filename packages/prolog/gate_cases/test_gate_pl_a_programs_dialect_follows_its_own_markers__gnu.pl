:- initialization(main).
main :- X = "ab", ( is_list(X) -> write(codes) ; write(other) ), nl,
  current_prolog_flag(double_quotes, F), write(F), nl,
  display(f('A b', 1+2, -(x))), nl, halt.
