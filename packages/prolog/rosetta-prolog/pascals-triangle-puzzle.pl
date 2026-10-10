:- use_module(library(clpfd)).

puzzle(Ts, X, Y, Z) :-
    Ts =   [ [151],
            [_, _],
          [40, _, _],
         [_, _, _, _],
       [X, 11, Y, 4, Z]],
    Y #= X + Z, triangle(Ts), append(Ts, Vs), Vs ins 0..sup, label(Vs).

triangle([T|Ts]) :- ( Ts = [N|_] -> triangle_(T, N), triangle(Ts) ; true ).

triangle_([], _).
triangle_([T|Ts], [A,B|Rest]) :- T #= A + B, triangle_(Ts, [B|Rest]).

% ?- puzzle(_,X,Y,Z).
% X = 5,
% Y = 13,
% Z = 8 ;

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines puzzle/4 and never calls it; the driver prints the first solution of its comment's example, the solved rows and X, Y, Z.
:- initialization((once(puzzle(Ts, X, Y, Z)), forall(member(T, Ts), format("~w~n", [T])), format("X = ~w, Y = ~w, Z = ~w~n", [X, Y, Z]))).
