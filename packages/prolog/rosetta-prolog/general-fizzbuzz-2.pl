go :- maxNumber(M), factors(Fs), MLast is M+1, loop(1,MLast,Fs).

loop(B,B,_).
loop(A,B,Fs) :-
    A < B, fizzbuzz(A,Fs,S), ( (S = "", Res is A) ; Res = S ), writeln(Res),
    Next is A+1, loop(Next,B,Fs).

fizzbuzz(_,[],"").
fizzbuzz(N,[(F,S)|Fs],Res) :-
    fizzbuzz(N,Fs,OldRes),
    ( N mod F =:= 0, string_concat(S,OldRes,Res) ; Res = OldRes ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's go/0 is the entry and reads maxNumber/1 and factors/1, the input facts of general-fizzbuzz-1 (max 105; 3 Fizz, 5 Buzz, 7 Baxx), so the driver includes that block and calls go/0 once at load.
:- include('general-fizzbuzz-1.pl').
:- initialization(go).
