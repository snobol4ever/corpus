:- initialization(main).
t(N, G) :- catch(( G -> write(N-answered) ; write(N-failed) ), error(type_error(evaluable, F/A), _),
                 write(N-type_error(F/A))), nl.
main :- t(control, (_ is foo)), t(maxi, (_ is max_integer)), t(mini, (_ is min_integer)).
