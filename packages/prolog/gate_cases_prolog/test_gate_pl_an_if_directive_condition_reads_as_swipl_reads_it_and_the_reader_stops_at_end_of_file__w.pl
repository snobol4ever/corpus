:- module(w, []).
:- initialization(main).
defd(1).
:- if(current_predicate(defd/1)).
a(defd_seen).
:- else.
a(defd_missing).
:- endif.
:- if(current_predicate(later/0)).
b(later_seen).
:- else.
b(later_not_yet).
:- endif.
later.
:- if(current_predicate(atom_length/2)).
c(builtin).
:- else.
c(no_builtin).
:- endif.
:- if(current_predicate(nosuch_pred_xyz/1)).
d(nosuch_seen).
:- elif(\+ current_predicate(nosuch_pred_xyz/1)).
d(nosuch_absent).
:- endif.
:- if(current_prolog_flag(dialect, yap)).
e(yap).
:- elif(current_prolog_flag(dialect, swi)).
e(swi).
:- else.
e(other).
:- endif.
:- if(current_prolog_flag(version_data, swi(_, _, _, _))).
f(swi_version).
:- else.
f(other_version).
:- endif.
:- if((current_prolog_flag(bounded, false), \+ current_prolog_flag(no_such_flag_xyz, _))).
g(conj).
:- else.
g(noconj).
:- endif.
:- if((current_prolog_flag(bounded, true) -> fail ; true)).
h(ite).
:- else.
h(noite).
:- endif.
:- if(exists_source(library(assoc))).
i(assoc).
:- else.
i(no_assoc).
:- endif.
:- if(current_predicate(random_property/1)).
j(prelude).
:- else.
j(no_prelude).
:- endif.
main :- forall(member(G, [a(_), b(_), c(_), d(_), e(_), f(_), g(_), h(_), i(_), j(_)]), ((call(G) -> writeq(G) ; writeq(none(G))), nl)),
        ( catch(after_eof, _, fail) -> writeq(read_past_end_of_file) ; writeq(stopped_at_end_of_file) ), nl, halt.
end_of_file.
after_eof.
