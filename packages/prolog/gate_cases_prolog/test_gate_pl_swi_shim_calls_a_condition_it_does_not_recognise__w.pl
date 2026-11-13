:- begin_tests(cond).
test(neg_fail, [condition(\+ fail)]) :- true.
test(conj, [condition((X = 1, X > 0))]) :- true.
test(neg_true, [condition(\+ true)]) :- true.
test(raises, [condition(no_such_pred_xyz)]) :- true.
test(dup, [condition(fail)]) :- true.
test(dup, [condition(true)]) :- true.
:- end_tests(cond).
