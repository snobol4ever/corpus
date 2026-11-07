:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; R = caught(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
p(T) :- findall(P, evaluable_property(T, P), L), \+ \+ ( numbervars(T-L, 0, _), writeq(T), write(' => '), writeq(L), nl ).
main :-
    p(sin(_)), p(cos(_)), p(tan(_)), p(asin(_)), p(acos(_)), p(atan(_)), p(atan2(_, _)), p(sinh(_)), p(cosh(_)), p(tanh(_)), p(asinh(_)), p(acosh(_)), p(atanh(_)),
    p(exp(_)), p(log(_)), p(log(_, _)), p(log10(_)), p(sqrt(_)), p(abs(_)), p(sign(_)), p(min(_, _)), p(max(_, _)), p(gcd(_, _)),
    t(evaluable_property(truncate(_), iso)), t(evaluable_property(round(_), iso)), t(evaluable_property(ceiling(_), iso)), t(evaluable_property(floor(_), iso)), p(float(_)), p(float_integer_part(_)), p(float_fractional_part(_)),
    p(_ + _), p(_ - _), p(_ * _), p(_ / _), p(_ // _), p(_ ** _), p(_ ^ _), p(- _), p(+ _), p(_ mod _), p(_ rem _), p(_ div _),
    p(_ >> _), p(_ << _), p(_ /\ _), p(_ \/ _), p(\ _), p(xor(_, _)), p(msb(_)), p(lsb(_)), p(popcount(_)), p(pi), p(e), p(epsilon),
    t(evaluable_property(sin(_), iso)), t(evaluable_property(gcd(_, _), iso)), t(evaluable_property(pi, iso)), t(evaluable_property(e, iso)),
    t(evaluable_property(foo(_), _)), t(evaluable_property(1, _)), t(evaluable_property(sin(_), nosuch)),
    findall(F/A, (member(T, [sin(_), acosh(_), xor(_, _), msb(_), pi, e, tanh(_), gcd(_, _), log(_, _), truncate(_)]), evaluable_property(T, iso), functor(T, F, A)), LI), writeq(LI), nl,
    halt.
