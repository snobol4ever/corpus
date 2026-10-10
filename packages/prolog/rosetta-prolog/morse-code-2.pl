text2morse("Hello World", Morse).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block is the page's example query text2morse("Hello World", Morse) written as a fact, and text2morse/2 is morse-code-1's, so the driver takes that block over (CEO-1613), asks the query and prints its first answer that binds Morse (the fact answers first, unbound).
:- include('morse-code-1.pl').
:- initialization((once((text2morse("Hello World", Morse), nonvar(Morse))), format("~w~n", [Morse]))).
