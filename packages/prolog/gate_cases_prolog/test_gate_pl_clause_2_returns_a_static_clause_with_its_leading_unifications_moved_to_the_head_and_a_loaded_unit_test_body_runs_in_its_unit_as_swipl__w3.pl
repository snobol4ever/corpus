:- use_module(library(plunit)).
:- initialization(main).
main :- ( catch(run_tests, E, (print_message(silent, E), true)) -> true ; true ), halt.
:- begin_tests(u).
term_expansion(c2(H), [H]).
c2(p11(a)).
c2((p12(X) :- X = f(_))).
test(unqual) :- p11(a), format("T:unqual~n").
test(conj) :- true, p11(a), format("T:conj~n").
test(neg) :- \+ p11(b), format("T:neg~n").
test(once) :- once(p11(a)), format("T:once~n").
test(unif) :- p12(Y), Y = f(_), format("T:unif~n").
test(fails) :- p11(zzz), format("T:fails~n").
:- end_tests(u).
