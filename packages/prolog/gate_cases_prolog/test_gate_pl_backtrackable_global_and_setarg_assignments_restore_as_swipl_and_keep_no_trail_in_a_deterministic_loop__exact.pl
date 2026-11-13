sets(0, _, _) :- !.
sets(I, T, V) :- setarg(I, T, V), I1 is I - 1, sets(I1, T, V).
loop(0, _) :- !.
loop(R, T) :- nb_getval(k, _), b_setval(k, R), sets(300, T, R), R1 is R - 1, loop(R1, T).
w :- nb_setval(k, 0), functor(T, t, 300), ( true ; true ), '$gnu_os'(stack_used, trail_stack, U0), loop(1000, T), '$gnu_os'(stack_used, trail_stack, U1), D is U1 - U0 - 1000 * 300 * 32, ( D < 4096 -> writeln(ok) ; writeln(leak(D)) ).
:- w, halt.
