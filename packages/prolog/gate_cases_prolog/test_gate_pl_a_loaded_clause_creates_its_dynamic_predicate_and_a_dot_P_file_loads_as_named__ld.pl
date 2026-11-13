new_program :- cleanup, assert(query(p)), assert(query(q)), assertz(rule(p, [])).
cleanup :- retractall(query(_)), retractall(rule(_, _)).
