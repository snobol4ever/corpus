:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; R = caught(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :-
    t(current_evaluable(foo)), t(current_evaluable(foo/a)), t(current_evaluable(1/2)), t(current_evaluable(foo/(-1))), t(current_evaluable(1)),
    t(current_evaluable(sin/1)), t(current_evaluable(sin/2)), t(current_evaluable(foo/1)), t(current_evaluable(sin/_)), t(current_evaluable(log/_)),
    t(current_evaluable((+)/_)), t(current_evaluable(gcd/2)), t(current_evaluable(pi/0)), t(current_evaluable(pi/1)),
    findall(F, current_evaluable(F/0), L0), msort(L0, S0), writeq(S0), nl,
    findall(A, current_evaluable(float_integer_part/A), L1), msort(L1, S1), writeq(S1), nl,
    ( current_evaluable(_) -> write(some) ; write(none) ), nl,
    findall(F2/A2, (current_evaluable(F2/A2), member(F2/A2, [abs/1, sign/1, min/2, max/2, truncate/1, round/1, ceiling/1, floor/1, sqrt/1, exp/1, (**)/2, (^)/2, (mod)/2, (rem)/2, (div)/2, (//)/2, (>>)/2, (<<)/2, (/\)/2, (\/)/2, (\)/1, xor/2, msb/1, lsb/1, popcount/1, atan2/2, e/0, epsilon/0, zzz/1])), L2), msort(L2, S2), writeq(S2), nl,
    halt.
