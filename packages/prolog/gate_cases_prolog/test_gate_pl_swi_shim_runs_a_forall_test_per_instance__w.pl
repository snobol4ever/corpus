:- begin_tests(fa).
gen(1). gen(2).
test(two, [forall(gen(X))]) :- X > 0.
test(none, [forall(fail)]) :- true.
test(after) :- true.
:- end_tests(fa).
