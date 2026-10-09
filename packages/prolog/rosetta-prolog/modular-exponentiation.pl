main:-
    A = 2988348162058574136915891421498819466320163312926952423791023078876139,
    B = 2351399303373464486466122544523690094744975233415544072992656881240319,
    M is 10 ** 40,
    P is powm(A, B, M),
    writeln(P).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
