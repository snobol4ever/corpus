%---------------------------------------------------- 1 rung19_format_format1_nl
:- initialization(main).
main :- format("hello~n").
%----------------------------------------------------- 2 rung19_format_format2_a
:- initialization(main).
main :- format("hello ~a~n", [world]).
%----------------------------------------------------- 3 rung19_format_format2_d
:- initialization(main).
main :- format("count: ~d~n", [7]).
%----------------------------------------------------- 4 rung19_format_format2_i
:- initialization(main).
main :- format("skip~i ok~n", [ignored]).
%----------------------------------------------------- 5 rung19_format_format2_w
:- initialization(main).
main :- format("x = ~w~n", [42]).
