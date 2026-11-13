:- initialization(main).
main :- forall(member(A, [public, dynamic, discontiguous, initialization, module, multifile, meta_predicate, table, not]),
               ((X =.. [',', A, 4], Y =.. [-, A], writeq(X-Y)), nl)), halt.
