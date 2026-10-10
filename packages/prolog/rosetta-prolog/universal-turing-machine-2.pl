incrementer_config(IS, FS, RS, B, S) :-
    IS = q0,      % initial state
    FS = [qf],    % halting states
    RS = [IS],    % running states
    B  = 0,       % blank symbol
    S  = [B, 1].  % valid symbols
incrementer(q0, 1, 1, right, q0).
incrementer(q0, b, 1, stay,  qf).

turing(incrementer_config, incrementer, [1, 1, 1], TapeOut).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: turing/4 is universal-turing-machine-1's, and this block and universal-turing-machine-3 each define a machine (the incrementer, the three-state busy beaver) and end in the page's query turing(.., TapeOut) written as a fact, so the driver takes -1 over (CEO-1613), includes -3 and asks both queries, printing the first answer that binds TapeOut (this block's fact answers first, unbound); the incrementer's blank is 0 while its rule reads b, so swipl answers false for it.
:- include('universal-turing-machine-1.pl').
:- include('universal-turing-machine-3.pl').
:- initialization(forall(member(C-R-I, [incrementer_config-incrementer-[1, 1, 1], busy_beaver_config-busy_beaver-[]]), (once((turing(C, R, I, T), nonvar(T))) -> format("turing(~w, ~w, ~w, TapeOut): TapeOut = ~w~n", [C, R, I, T]) ; format("turing(~w, ~w, ~w, TapeOut): false~n", [C, R, I])))).
