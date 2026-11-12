:- begin_tests(ball).
test(real, [error(instantiation_error)]) :- atom_length(_, _).
test(ball, [error(instantiation_error)]) :- throw(b).
test(after) :- true.
test(exact, [error(type_error(integer, foo))]) :- atom_length(abc, foo).
test(pattern, [error(type_error(integer, _))]) :- atom_length(abc, foo).
test(wrong, [error(type_error(atom, foo))]) :- atom_length(abc, foo).
:- end_tests(ball).
