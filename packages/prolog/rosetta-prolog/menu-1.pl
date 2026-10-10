rosetta_menu([], "") :- !.              %% Incase of an empty list.
rosetta_menu(Items, SelectedItem) :-
    repeat,                             %% Repeat until everything that follows is true.
        display_menu(Items),            %% IO
        get_choice(Choice),             %% IO
    number(Choice),                     %% True if Choice is a number.
    nth1(Choice, Items, SelectedItem),  %% True if SelectedItem is the 1-based nth member of Items, (fails if Choice is out of range)
    !.

display_menu(Items) :-
    nl,
    foreach( nth1(Index, Items, Item),
             format('~w) ~s~n', [Index, Item]) ).

get_choice(Choice) :-
    prompt1('Select a menu item by number:'),
    read(Choice).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rosetta_menu/2 and never calls it; the driver runs menu-2's example over the task's four items with the answers a, 10 and 3 (two rejected, then mirror mirror) in menu-1.in.
:- initialization((rosetta_menu(["fee fie", "huff and puff", "mirror mirror", "tick tock"], S), format("~s~n", [S]))).
