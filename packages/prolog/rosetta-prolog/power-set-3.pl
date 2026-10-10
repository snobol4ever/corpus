:- use_module(library(chr)).

:- chr_constraint chr_power_set/2, chr_power_set/1, clean/0.

clean @ clean \ chr_power_set(_) <=> true.
clean @ clean <=> true.

only_one @ chr_power_set(A) \ chr_power_set(A) <=> true.


creation @ chr_power_set([H | T], A) <=>
           append(A, [H], B),
	   chr_power_set(T, A),
           chr_power_set(T, B),
	   chr_power_set(B).


empty_element @ chr_power_set([], _) <=> chr_power_set([]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the CHR constraint chr_power_set/2 and never posts it; the driver posts it for the task's {1,2,3,4}, collects the chr_power_set/1 subsets from the store and cleans it.
:- initialization((chr_power_set([1, 2, 3, 4], []), findall(L, find_chr_constraint(chr_power_set(L)), Ls), clean, format("~w~n", [Ls]))).
