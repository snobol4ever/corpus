:- initialization(main).
main :- X = '\c ', write(empty(X)), nl,
        Y = 'x\c y', write(inline(Y)), nl,
        Z = 'a\c
             b', write(across_lines(Z)), nl,
        W = 'p\c	q', write(across_tab(W)), nl,
        V = "d\c q", atom_string(A, V), write(double_quoted(A)), nl.
