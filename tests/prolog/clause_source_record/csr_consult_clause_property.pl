:- use_module(library(lists)).
:- initialization(main).

main :-
    consult('csr_consulted_lib.pl'),
    forall(clause(lib_rule(_, _), _, R),
           (   clause_property(R, file(F))
           ->  file_base_name(F, B),
               clause_property(R, line_count(L)),
               write(B-L), nl
           ;   write(nofile), nl
           )),
    forall(clause(lib_dcg(_, _, _), _, R2),
           (   clause_property(R2, line_count(L2))
           ->  write(dcg_line(L2)), nl
           ;   write(dcg_noline), nl
           )),
    listing(lib_rule/2),
    listing(lib_dcg//1).
