brute_force_factors( N , Fs ) :-
  integer(N) ,
  N > 0 ,
  setof( F , ( between(1,N,F) , N mod F =:= 0 ) , Fs )
  .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines brute_force_factors/2 and never calls it; the driver factors 1, 12, 45, 53, 64 and 100.
:- initialization(forall(member(N, [1, 12, 45, 53, 64, 100]), (brute_force_factors(N, Fs), format("~w: ~w~n", [N, Fs])))).
