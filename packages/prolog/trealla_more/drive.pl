% drive.pl -- the driver of the suite trealla-more (ours; Trealla's files are read in place and never changed).
% Loaded after a sample. When the last argument of the run names a predicate of no arguments that the sample defines
% and never calls (Trealla's own way to run such a sample is tpl -g NAME FILE), it calls that predicate once and prints
% how the call ended, so a sample that only succeeds still has an answer. With no such argument it does nothing: the
% sample starts itself.
:- initialization(trealla_more_drive, main).
trealla_more_drive :-
    current_prolog_flag(argv, Argv),
    (   append(_, [Name], Argv), atom(Name), current_predicate(Name/0)
    ->  (   catch(call(Name), E, true)
        ->  (   var(E)
            ->  write(Name), write(' succeeded'), nl
            ;   write(Name), write(' raised '), write(E), nl
            )
        ;   write(Name), write(' failed'), nl
        )
    ;   true
    ).
