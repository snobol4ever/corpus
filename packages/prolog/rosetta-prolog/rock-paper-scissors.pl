play :-
  findall(P,beats(P,_),Prev),
  play(Prev).

play(Prev) :-
  write('your choice? '),
  read(P),
  random_member(C, Prev),
  format('The computer chose ~p~n', C),
  result(C,P,Prev,Next),
  !,
  play(Next).

result(C,P,R,[C|R]) :-
  beats(C,P),
  format('Computer wins.~n').
result(C,P,R,[B|R]) :-
  beats(P,C),
  beats(B,P),
  format('You win!~n').
result(C,C,R,[B|R]) :-
  beats(B,C),
  format('It is a draw~n').

beats(paper, rock).
beats(rock, scissors).
beats(scissors, paper).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): play/0 reads the player's moves and draws the computer's with random_member/2, which no ref can hold; the driver calls the judge beneath it, result/4, on all nine pairs of moves and prints its verdicts.
:- initialization(forall((member(C, [rock, paper, scissors]), member(P, [rock, paper, scissors])), (format("computer ~w, you ~w: ", [C, P]), result(C, P, [], _)))).
