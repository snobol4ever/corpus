:- initialization(main).
main :-
    format("~q~n", ['hello world']),
    format("~w|~q~n", ['it''s', 'it''s']),
    format("~e~n", [3.14159]),
    format("~2f~n", [3.14159]),
    format("~g~n", [3.14159]),
    format("~16r~n", [255]),
    format("~2r~n", [10]),
    format("~c~n", [65]),
    format("~3c~n", [42]),
    format("~s~n", [[104,105]]),
    format("~d~n", [42]).
