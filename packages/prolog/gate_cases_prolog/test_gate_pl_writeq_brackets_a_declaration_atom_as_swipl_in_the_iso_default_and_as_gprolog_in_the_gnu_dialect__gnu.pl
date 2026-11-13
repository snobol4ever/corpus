:- initialization(main).
main :- writeq([(public,4),(dynamic,1),(discontiguous,2),(initialization,3),(module,5),(multifile,6),(meta_predicate,7),(table,8),(not,9),- (table),- (dynamic)]), nl,
        ( current_op(P, T, public) -> writeq(P-T) ; write(no_op) ), nl, halt.
