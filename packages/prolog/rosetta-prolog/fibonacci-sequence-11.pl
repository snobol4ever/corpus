% John Devou: 26-Nov-2021
% Efficient program to calculate n-th Fibonacci number.
% Works fast for n ≤ 1 000 000 000.

b(0,Bs,Bs).
b(N,Bs,Res):- N > 0, B is mod(N,2), M is div(N,2), b(M,[B|Bs],Res).

f([],A,_,_,A).
f([X|Xs],A,B,C,Res):- AA is A^2, BB is B^2, A_ is 2*BB-3*AA-C, B_ is AA+BB,
    (X =:= 1 -> T is A_+B_, f(Xs,B_,T,-2,Res); f(Xs,A_,B_,2,Res)).

fib(N,F):- b(N,[],Bs), f(Bs,0,1,2,F), !.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fib/2 and never calls it; the driver prints fib(0) .. fib(20) and fib(100).
:- initialization((findall(V, (between(0, 20, N), fib(N, V)), Vs), writeln(Vs), fib(100, F100), format("fib(100) = ~w~n", [F100]))).
