fruit(apple,1).
fruit(banana,2).
fruit(cherry,4).

write_fruit_name(N) :-
	fruit(Name,N),
	format('It is a ~p~n', Name).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the enumeration fruit/2 and write_fruit_name/1 and never calls them; the driver names every fruit by its value.
:- initialization(forall(fruit(_, N), write_fruit_name(N))).
