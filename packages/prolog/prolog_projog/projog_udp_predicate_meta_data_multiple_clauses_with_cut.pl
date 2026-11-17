?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a, 1, X) :- repeat.
p(a, 2, X) :- !, repeat.
p(a, 3, X) :- repeat, !.
p(a, 4, X).
p(b, 1, X) :- repeat.
p(b, 2, X) :- var(X), !.
p(b, 2, X). 
p(c, 3, x).
p(c, 3, y).
p(c, 3, z).
p(c, 4, x) :- repeat, !.
p(c, 4, y).
p(d, 1, X) :- !.
p(d, 2, X) :- repeat, !.
p(d, 2, X).
p(e, 1, X) :- repeat.
p(e, 2, X).
p(e, 2, X).
p(f, 1, x).
p(f, 2, y).
p(f, 3, z).
p(g, 1, x) :- !.
p(g, 2, y) :- !.
p(g, 3, z).

% SingleRetryableRulePredicateFactory retryable, no cut
%?- meta_data(p(a, 1, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

% SingleRetryableRulePredicateFactory retryable, has cut
%?- meta_data(p(a, 2, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

% SingleNonRetryableRulePredicateFactory - non retryable, has cut
%?- meta_data(p(a, 3, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

% SingleNonRetryableRulePredicateFactory - non retryable, no cut
%?- meta_data(p(a, 4, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

% IndexablePredicateFactory - retryable
%?- meta_data(p(f, Y, Z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE

% IndexablePredicateFactory not retryable
%?- meta_data(p(g, Y, Z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE

% SingleIndexPredicateFactory retryable
%?- meta_data(p(b, Y, Z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE

% SingleIndexPredicateFactory not retryable
%?- meta_data(p(d, Y, Z), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% Z=UNINSTANTIATED VARIABLE

% LinkedHashMapPredicateFactory retryable
%?- meta_data(p(c, 3, Y), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

% LinkedHashMapPredicateFactory not retryable
%?- meta_data(p(c, 4, Y), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

% NotIndexablePredicateFactory retryable
%?- meta_data(p(e, 2, Y), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

% NotIndexablePredicateFactory not retryable
%?- meta_data(p(b, 2, Y), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=factory_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=factory_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=actual_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=actual_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : false
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(a, 1, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 1, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- meta_data(p(a, 2, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 2, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a, 3, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 3, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- meta_data(p(a, 4, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 4, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- meta_data(p(f, Y, Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(f, Y, Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- meta_data(p(g, Y, Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(g, Y, Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p(b, Y, Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, Y, Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- meta_data(p(d, Y, Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(d, Y, Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p(c, 3, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c, 3, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- meta_data(p(c, 4, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c, 4, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- meta_data(p(e, 2, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(e, 2, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- meta_data(p(b, 2, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, 2, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_main' :- between(1, 12, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
