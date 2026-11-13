main :- catch((current_prolog_flag(max_integer, A) -> (write(max_integer(A)), nl) ; (write(max_integer(failed)), nl)), E1, (E1 = error(R1, _), write(max_integer(caught(R1))), nl)),
        catch((current_prolog_flag(min_integer, B) -> (write(min_integer(B)), nl) ; (write(min_integer(failed)), nl)), E2, (E2 = error(R2, _), write(min_integer(caught(R2))), nl)),
        current_prolog_flag(bounded, C), write(bounded(C)), nl, current_prolog_flag(integer_rounding_function, D), write(rounding(D)), nl.
