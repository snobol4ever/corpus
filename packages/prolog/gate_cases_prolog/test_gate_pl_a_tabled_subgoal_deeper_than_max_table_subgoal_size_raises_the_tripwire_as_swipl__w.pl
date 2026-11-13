:- use_module(library(lists)).
:- table p/1, r/1, rr/1.
mk(0, 0) :- !.
mk(N, f(X)) :- N1 is N - 1, mk(N1, X).
rr(X) :- mk(30, X).
p(X) :- p(f(X)).
r(X) :- member(X, [a, f(a), f(f(a))]).
show(G) :- copy_term(G, G2), numbervars(G2, 0, _), writeq(G2).
t1 :- set_prolog_flag(max_table_subgoal_size, 4), set_prolog_flag(max_table_subgoal_size_action, error),
      catch(p(_), error(resource_error(tripwire(F, M:G)), _), (write(caught(F, M)), write(' '), show(G), nl)).
t2 :- abolish_all_tables, findall(X, r(X), L), msort(L, S), write(within(S)), nl.
t4 :- abolish_all_tables, set_prolog_flag(max_table_answer_size, 10), set_prolog_flag(max_table_answer_size_action, error),
      catch(rr(_), error(resource_error(tripwire(F, _)), _), (write(caught(F)), nl)).
t3 :- abolish_all_tables, set_prolog_flag(max_table_subgoal_size, infinite), findall(X, r(X), L), msort(L, S), write(unset(S)), nl.
:- initialization((t1, t2, t3, t4, halt)).
