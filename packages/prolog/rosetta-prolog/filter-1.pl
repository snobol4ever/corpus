evens(D, Es) :- findall(E, (member(E, D), E mod 2 =:= 0), Es).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines evens/2 and never calls it; the driver filters the even numbers of 1..10.
:- initialization((evens([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], Es), writeln(Es))).
