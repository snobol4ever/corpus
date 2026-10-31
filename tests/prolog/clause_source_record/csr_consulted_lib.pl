% csr_consulted_lib.pl -- DATA for csr_consult_clause_property.pl, consulted at run time (not a witness).

:- dynamic lib_rule/2.

lib_rule(First, Second) :-
    Second = f(First, _Unused).

/* a block comment before the third clause moves its line */
lib_rule([Head|_Tail], Head).

lib_dcg(Who) --> [hello], [Who].
