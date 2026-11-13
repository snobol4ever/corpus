:- use_module(library(plunit)).
helper_deep :- undefined_deep(1).
helper_ok(X) :- X = 1.
:- begin_tests(uq).
p_a :- Goal = call(does_not_exist, a, b, c), Goal.
p_b :- Goal = call(call8:does_not_exist, a, b, c, d), Goal.
p_c :- this_should_not_be_defined(_).
p_d :- helper_deep.
p_e :- call(user:nonexistent_u).
p_g :- G = helper_ok(Y), G, format("W:~q~n", [Y]).
p_h :- Goal = undefined_in_g(1), Goal.
p_i :- Goal = (helper_ok(Z), write_unknown(Z)), Goal.
p_j :- Goal = helper_deep, Goal.
q(G) :- catch(G, error(existence_error(procedure, PI), _), format("W:~q~n", [PI])).
test(a) :- q(p_a).
test(b) :- q(p_b).
test(c) :- q(p_c).
test(d) :- q(p_d).
test(e) :- q(p_e).
test(g) :- q(p_g).
test(h) :- q(p_h).
test(i) :- q(p_i).
test(j) :- q(p_j).
:- end_tests(uq).
