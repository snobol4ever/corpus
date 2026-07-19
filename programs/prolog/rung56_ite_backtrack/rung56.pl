:- initialization(main).
main :-
    ( member(X,[1,2,-3]), \+ X>0, write(found(X)), nl, fail ; true ),
    ( member(A,[1,2,3,4]), (A mod 2 =:= 0 -> true ; fail), write(even(A)), nl, fail ; true ),
    ( between(1,4,N), \+ (N =:= 2), write(n(N)), nl, fail ; true ).
