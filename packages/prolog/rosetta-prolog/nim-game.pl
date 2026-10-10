nim :- next_turn(12), !.

next_turn(N) :-
   % Player Turn
   format('How many dots would you like to take? '),
   read_line_to_codes(user_input, Line),
   number_codes(PlayerGuess, Line),
   member(PlayerGuess,[1,2,3]),
   N1 is N - PlayerGuess,
   format('You take ~d dots~n~d dots remaining.~n~n', [PlayerGuess, N1]),

   % Computer Turn
   CompGuess is 4 - PlayerGuess,
   N2 is N1 - CompGuess,
   format('Computer takes ~d dots~n~d dots remaining.~n~n', [CompGuess, N2]),
   (
      N2 = 0
      -> format('Computer wins!')
      ; next_turn(N2)
   ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines nim/0 and never calls it; nim-game.in holds the player's three moves 1, 2 and 3, after which the computer has taken the last of the 12 dots.
:- initialization((nim, nl)).
