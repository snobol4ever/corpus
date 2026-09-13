% mu — prove the MU-math theorem muiiu (Hofstadter GEB; van Roy suite).
% Bottleneck: depth-bounded search + list rewriting via the four MU rules.
% Source: SWI-Prolog/bench (mu). Prints ok if the theorem is proved.
% *BENCH kernel=mu -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against mu.expected (oracle-cut).
:- initialization(main).
bench_work(Res) :-
    ( mu -> Res = ok ; Res = failed ).
main :- bench_work(Res), write(Res), nl.
mu :- theorem([m,u,i,i,u], 5, _), !.
theorem([m,i], _, [[a|[m,i]]]).
theorem(R, Depth, [[N|R]|P]) :- Depth > 0, D is Depth-1, theorem(S, D, P), rule(N, S, R).
rule(1, S, R) :- rule1(S, R).
rule(2, S, R) :- rule2(S, R).
rule(3, S, R) :- rule3(S, R).
rule(4, S, R) :- rule4(S, R).
rule1([i], [i,u]).
rule1([H|X], [H|Y]) :- rule1(X, Y).
rule2([m|X], [m|Y]) :- my_append(X, X, Y).
rule3([i,i,i|X], [u|X]).
rule3([H|X], [H|Y]) :- rule3(X, Y).
rule4([u,u|X], X).
rule4([H|X], [H|Y]) :- rule4(X, Y).
my_append([], X, X).
my_append([A|B], X, [A|B1]) :- my_append(B, X, B1).
