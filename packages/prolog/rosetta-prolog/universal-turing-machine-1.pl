turing(Config, Rules, TapeIn, TapeOut) :-
    call(Config, IS, _, _, _, _),
    perform(Config, Rules, IS, {[], TapeIn}, {Ls, Rs}),
    reverse(Ls, Ls1),
    append(Ls1, Rs, TapeOut).

perform(Config, Rules, State, TapeIn, TapeOut) :-
    call(Config, _, FS, RS, B, Symbols),
    ( memberchk(State, FS) ->
        TapeOut = TapeIn
    ; memberchk(State, RS) ->
        {LeftIn, RightIn} = TapeIn,
        symbol(RightIn, Symbol, RightRem, B),
        memberchk(Symbol, Symbols),
        once(call(Rules, State, Symbol, NewSymbol, Action, NewState)),
        memberchk(NewSymbol, Symbols),
        action(Action, {LeftIn, [NewSymbol|RightRem]}, {LeftOut, RightOut}, B),
        perform(Config, Rules, NewState, {LeftOut, RightOut}, TapeOut) ).

symbol([],       B,   [], B).
symbol([Sym|Rs], Sym, Rs, _).

action(left,  {Lin, Rin},  {Lout, Rout}, B) :- left(Lin, Rin, Lout, Rout, B).
action(stay,  Tape,        Tape,         _).
action(right, {Lin, Rin},  {Lout, Rout}, B) :- right(Lin, Rin, Lout, Rout, B).

left([],     Rs, [], [B|Rs], B).
left([L|Ls], Rs, Ls, [L|Rs], _).

right(L, [],     [B|L], [], B).
right(L, [S|Rs], [S|L], Rs, _).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the machine turing/4 and never calls it; the driver asserts the task's simple incrementer and three-state busy beaver (as universal-turing-machine-2 and -3 write them) and prints each final tape.
:- initialization((forall(member(C, [inc_config(q0, [qf], [q0], b, [b, 1]), inc_rules(q0, 1, 1, right, q0), inc_rules(q0, b, 1, stay, qf), bb_config('A', ['HALT'], ['A', 'B', 'C'], 0, [0, 1]), bb_rules('A', 0, 1, right, 'B'), bb_rules('A', 1, 1, left, 'C'), bb_rules('B', 0, 1, left, 'A'), bb_rules('B', 1, 1, right, 'B'), bb_rules('C', 0, 1, left, 'B'), bb_rules('C', 1, 1, stay, 'HALT')]), assertz(C)), turing(inc_config, inc_rules, [1, 1, 1], T1), format("incrementer: ~w~n", [T1]), turing(bb_config, bb_rules, [], T2), format("three-state busy beaver: ~w~n", [T2]))).
