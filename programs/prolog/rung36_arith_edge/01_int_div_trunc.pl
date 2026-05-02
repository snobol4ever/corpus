% ISO §8.4 — integer division truncates toward zero
% 7 // 2 = 3,  -7 // 2 = -3,  7 // -2 = -3,  -7 // -2 = 3
main :-
    A is 7 // 2,   write(A), nl,
    B is -7 // 2,  write(B), nl,
    C is 7 // -2,  write(C), nl,
    D is -7 // -2, write(D), nl.
