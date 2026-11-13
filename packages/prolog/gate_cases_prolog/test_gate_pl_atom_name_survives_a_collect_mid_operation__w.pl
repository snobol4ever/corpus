n_atom(N, A) :- number_codes(N, C), atom_codes(A0, C), atom_concat(nm_, A0, A).
churn(0) :- !.
churn(N) :- n_atom(N, A), atom_length(A, L), L > 0, N1 is N - 1, churn(N1).
:- dynamic held/2.
main :-
    churn($CHURN),
    n_atom(11, A), n_atom(22, B),
    functor(T, A, 3), churn($CHURN), functor(T, F, N), write(F/N), nl,
    atom_length(A, LA), churn($CHURN), write(LA), nl,
    atom_chars(B, Cs), churn($CHURN), write(Cs), nl,
    assertz(held(A, B)), churn($CHURN), held(X, Y), write(X-Y), nl,
    findall(Z, member(Z, [A,B,A]), Zs), churn($CHURN), write(Zs), nl,
    sort([B,A,B], Ss), churn($CHURN), write(Ss), nl,
    atom_concat(A, B, AB), churn($CHURN), write(AB), nl,
    T =.. [Hd|_], churn($CHURN), write(Hd), nl,
    ( A @< B -> write(lt) ; write(ge) ), nl,
    atom_codes(A, ACs), churn($CHURN), atom_codes(A2, ACs), write(A2), nl,
    write(A), nl, write(B), nl.
:- initialization(main).
