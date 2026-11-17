?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a).
p(b) :- repeat(2).
p(c).
p(d(1)).
p(d(2)).
p(d(3)).
p(e).

%?- meta_data(p(_), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X)
% X=a
% X=b
% X=b
% X=c
% X=d(1)
% X=d(2)
% X=d(3)
% X=e

%?- meta_data(p(a), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%TRUE p(a)

%?- meta_data(p(b), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(b)
%YES
%YES

%?- meta_data(p(z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(z)

%?- meta_data(p(d(_)), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(d(X))
% X=1
% X=2
% X=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X)'), nl, '$pj_reset', catch(( ( p(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- meta_data(p(b), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(b)'), nl, '$pj_reset', catch(( ( p(b) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- meta_data(p(z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(z), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p(d(_)), X)'), nl, '$pj_reset', catch(( ( meta_data(p(d(_)), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- p(d(X))'), nl, '$pj_reset', catch(( ( p(d(X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_main' :- between(1, 8, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
