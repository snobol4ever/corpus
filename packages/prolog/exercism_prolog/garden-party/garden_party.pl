% garden_party.pl -- the exercism Prolog exercise garden-party, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/garden_party.example.pl, then its tests garden_party_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
solve(Solution) :-
    Solution=[[aisha,D1,B1],[emma,D2,B2],[mei,D3,B3],[winona,D4,B4]],
    member([aisha,tagine,_], Solution),
    member([emma,_,amasi], Solution),
    member([_,frybread,tonic], Solution),
    member([mei,_,lassi], Solution),
    member([winona,DWinona,_], Solution),
    member([_,DLassi,lassi], Solution),
    permutation([D1,D2,D3,D4], [pad_thai, frybread, tagine, biryani]),
    permutation([B1,B2,B3,B4], [tonic, lassi, kombucha, amasi]),
    DWinona \= pad_thai,
    DLassi \= biryani,
    !.

beverage(Chef, Beverage) :-
    solve(Solution),
    member([Chef,_,Beverage], Solution),
    !.

dish(Chef, Dish) :-
    solve(Solution),
    member([Chef,Dish,_], Solution),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(garden_party).

    test(aisha_beverage, condition(true)) :-
        beverage(aisha, Beverage),
        Beverage == kombucha.

    test(emma_dish, condition(pending)) :-
        dish(emma, Dish),
        Dish == biryani.

    test(mei_dish, condition(pending)) :-
        dish(mei, Dish),
        Dish == pad_thai.

    test(winona_dish, condition(pending)) :-
        dish(winona, Dish),
        Dish == frybread.

    test(winona_beverage, condition(pending)) :-
        beverage(winona, Beverage),
        Beverage == tonic.

:- end_tests(garden_party).
