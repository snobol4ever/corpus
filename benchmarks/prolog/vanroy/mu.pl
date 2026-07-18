% mu — prove the MU-math theorem muiiu (Hofstadter GEB; van Roy suite).
% Bottleneck: depth-bounded search + list rewriting via the four MU rules.
% Source: SWI-Prolog/bench (mu). Prints ok if the theorem is proved.
:- initialization(main).
bench__main :- (mu -> write(ok) ; write(failed)), nl.
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
main :- l__(16384).
l__(N__) :- between(1, N__, _), bench__main, fail.
l__(_).
