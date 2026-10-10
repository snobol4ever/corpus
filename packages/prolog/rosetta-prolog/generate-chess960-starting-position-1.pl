check(Row) :-
    nth1(King, Row, ♔),
    nth1(Rook1, Row, ♖),
    nth1(Rook2, Row, ♖),
    nth1(Bishop1, Row, ♗),
    nth1(Bishop2, Row, ♗),
    Rook1 < King, King < Rook2,
    (Bishop1 + Bishop2) mod 2 =:= 1.

generate(Row) :-
    random_permutation([♖,♘,♗,♕,♔,♗,♘,♖], Row),
    check(Row) ; generate(Row).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): generate/1 draws its row with random_permutation/2; the driver runs the rule beneath it, check/1, over every permutation of the eight pieces (the 960 legal rows) and on two fixed rows, printing ASCII only.
:- initialization((findall(R, (permutation([♖,♘,♗,♕,♔,♗,♘,♖], R), check(R)), Rs), sort(Rs, S), length(S, N), format("~w distinct starting positions pass check/1~n", [N]), (check([♖,♘,♗,♕,♔,♗,♘,♖]) -> writeln('the classic position passes') ; writeln('the classic position fails')), (check([♔,♖,♘,♗,♕,♗,♘,♖]) -> writeln('king outside the rooks passes') ; writeln('king outside the rooks fails')))).
