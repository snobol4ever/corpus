% drive.pl -- the driver of the suite prolog-sets (ours; the sets' files are read in place and never changed).
% Loaded after a program. When the last argument of the run names a predicate of no arguments that the program defines
% and never calls (its own comments name it as the query to ask), it calls that predicate once and prints
% how the call ended, so a program that only succeeds still has an answer. With no such argument it does nothing: the
% program starts itself.
:- initialization(prolog_sets_drive, main).
prolog_sets_drive :-
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
