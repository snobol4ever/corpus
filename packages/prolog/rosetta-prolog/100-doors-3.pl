doors(Num, Passes) :-
    forall(( everyNth(1,Passes,1,Pass)
           , forall((everyNth(Pass,Num,Pass,Door), toggle(Door)))
           ))
  , show(Num)
  .


toggle(Door) :-
    Opened = opened(Door)
  , ( clause(Opened,_) -> retract(Opened)
                        ; asserta(Opened)
    ).


show(Num) :-
    forall(( between(1,Num,Door)
           , (opened(Door) -> State = opened ; State = closed)
           , write(Door), write(' '), write(State), nl
           )).


% utils
forall(X) :- findall(_, X, _).

everyNth(From,To,Step,X) :-
    From =< To
  , ( X = From ; From1 is From + Step, everyNth(From1,To,Step,X) )
  .

main :- doors(100,100), halt.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
