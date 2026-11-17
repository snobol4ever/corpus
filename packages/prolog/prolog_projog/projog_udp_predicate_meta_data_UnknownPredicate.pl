?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

%?- meta_data(p(_), X)
% X=factory_class : org.projog.core.predicate.UnknownPredicate
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.UnknownPredicate
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(a)

%TRUE assert(p(a)), assert(p(b)), assert(p(c))

%?- meta_data(p(_), X)
% X=factory_class : org.projog.core.predicate.udp.DynamicUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.DynamicUserDefinedPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%TRUE p(a)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- meta_data(p(_), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
