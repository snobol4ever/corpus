color(red).
color(green).
color(blue).
:- initialization(main).
main :- color(C), write(C), nl, fail ; true.
