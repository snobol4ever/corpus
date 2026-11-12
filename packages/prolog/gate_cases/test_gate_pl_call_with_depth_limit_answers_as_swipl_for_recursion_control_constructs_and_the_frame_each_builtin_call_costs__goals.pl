:- initialization(main).
:- dynamic dyn/1.
dyn(1).
fact(1).
fa :- findall(X, member(X, [a, b]), _).
fb :- findall(X, fact(X), _).
fc :- findall(x, true, _).
w(T, G) :- ( call_with_depth_limit(G, 30, R) -> write(T-R) ; write(T-failed) ), nl.
main :-
    w(true, true), w(fail, fail), w(findall_member, findall(X, member(X, [a, b]), _)), w(findall_true, findall(x, true, _)), w(findall_fact, findall(X, fact(X), _)), w(findall_empty, findall(X, member(X, []), _)),
    w(findall_in_clause, fa), w(findall_fact_in_clause, fb), w(findall_true_in_clause, fc), w(once, once(member(_, [a, b]))), w(not, \+ fail), w(catch, catch(true, _, true)), w(forall, forall(member(_, [a]), true)),
    w(nth0_0, nth0(0, [a, b, c], _)), w(nth0_1, nth0(1, [a, b, c], _)), w(nth0_long, (numlist(1, 50, L), nth0(40, L, _))), w(nth1_3, nth1(3, [a, b, c, d], _)), w(nth0_var, nth0(_, [a, b, c], c)), w(nth0_none, nth0(5, [a], _)),
    w(last_1, last([a], _)), w(last_3, last([a, b, c], _)), w(last_partial, last([a|_], _)),
    w(is, _ is 1 + 1), w(atom, atom(a)), w(eq, _ = a), w(sort, sort([b, a], _)), w(msort, msort([b, a], _)), w(atom_codes, atom_codes(abc, _)), w(assertz, assertz(zz(1))), w(nl, nl), w(between, between(1, 3, _)),
    w(call_atom, call(atom, a)), w(call_eq, call(=, _, a)), w(maplist, maplist(atom, [a, b])), w(exclude, exclude(atom, [a], _)), w(dyn, dyn(_)), w(member, member(_, [a, b, c])), w(append, append([a], [b], _)),
    halt.
