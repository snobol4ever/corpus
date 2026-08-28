%----------------------------------------------------- 1 rung17_sort_msort_basic
main :-
    msort([c,a,b,a], S),
    S = [A,B,C,D],
    write(A), nl, write(B), nl, write(C), nl, write(D), nl.
main.
%----------------------------------------------------- 2 rung17_sort_msort_dupes
main :-
    msort([b,b,a,a,c], S),
    S = [X1,X2,X3,X4,X5],
    write(X1), nl, write(X2), nl, write(X3), nl, write(X4), nl, write(X5), nl.
main.
%--------------------------------------------- 3 rung17_sort_sort_already_sorted
main :-
    sort([apple,banana,cherry], S),
    S = [A,B,C],
    write(A), nl, write(B), nl, write(C), nl.
main.
%------------------------------------------------------ 4 rung17_sort_sort_basic
main :-
    sort([c,a,b,a], S),
    S = [A,B,C],
    write(A), nl, write(B), nl, write(C), nl.
main.
%------------------------------------------------------ 5 rung17_sort_sort_empty
main :-
    sort([], S),
    ( S = [] -> write(ok) ; write(fail) ), nl.
main.
