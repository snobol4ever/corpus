factors([(3, "Fizz"), (5, "Buzz")]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block is the alternative input factors([(3, "Fizz"), (5, "Buzz")]) for general-fizzbuzz-2's go/0, which reads maxNumber/1 and factors/1, the page's sample input facts of general-fizzbuzz-1 (maxNumber(105); factors 3 Fizz, 5 Buzz, 7 Baxx); the driver takes -2 over (CEO-1613), includes -1 and calls go/0, which takes this block's factors/1 (the first clause) with the page's maxNumber 105, then, after a blank line, runs go/0's own steps (loop/3 from 1 to maxNumber) on -1's factors/1, the page's main answer -2's driver printed.
:- include('general-fizzbuzz-1.pl').
:- include('general-fizzbuzz-2.pl').
:- initialization((go, nl, findall(Fs, factors(Fs), [_, Fs1]), maxNumber(M), MLast is M + 1, once(loop(1, MLast, Fs1)))).
