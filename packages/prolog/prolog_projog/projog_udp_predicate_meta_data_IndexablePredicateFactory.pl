?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p(a, 1).
p(b, 2) :- repeat(2).
p(c, 2).
p(c, 3).
p(c, 3).
p(d, 4) :- repeat(2).
p(e(1), 5).
p(e(2), 6).
p(e(3), 7).
p(f, 8).

%?- meta_data(p(_, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X,Y)
% X=a
% Y=1
% X=b
% Y=2
% X=b
% Y=2
% X=c
% Y=2
% X=c
% Y=3
% X=c
% Y=3
% X=d
% Y=4
% X=d
% Y=4
% X=e(1)
% Y=5
% X=e(2)
% Y=6
% X=e(3)
% Y=7
% X=f
% Y=8

%?- meta_data(p(a, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(a, X)
% X=1

%?- meta_data(p(_, 1), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X, 1)
% X=a

%?- meta_data(p(b, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(b, X)
% X=2
% X=2

%?- meta_data(p(_, 4), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(X, 4)
% X=d
% X=d

%?- meta_data(p(c, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(c, _)
%YES
%YES
%YES

%?- meta_data(p(c, Y), X)
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
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$SingleIndexPredicateFactory
% Y=UNINSTANTIATED VARIABLE
% X=processed_isRetryable : true
% Y=UNINSTANTIATED VARIABLE
% X=processed_isAlwaysCutOnBacktrack : false
% Y=UNINSTANTIATED VARIABLE

%?- p(c, Y)
% Y=2
% Y=3
% Y=3

%?- meta_data(p(_, 2), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$NotIndexablePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(_, 2)
%YES
%YES
%YES

%?- meta_data(p(Y, 2), X)
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

%?- p(X, 2)
% X=b
% X=b
% X=c

%?- meta_data(p(z, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(z, X)

%?- meta_data(p(_, 9), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(X, 9)

%?- meta_data(p(a, 2), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%FAIL p(a, 2)

%?- meta_data(p(e(_), _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$IndexablePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p(e(_), _)
%YES
%YES
%YES

%?- meta_data(p(e(Y), Z), X)
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

%?- p(e(X), Y)
% X=1
% Y=5
% X=2
% Y=6
% X=3
% Y=7

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p(_, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X,Y)'), nl, '$pj_reset', catch(( ( p(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p(a, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(a, X)'), nl, '$pj_reset', catch(( ( p(a, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- meta_data(p(_, 1), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, 1), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(X, 1)'), nl, '$pj_reset', catch(( ( p(X, 1) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p(b, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(b, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- p(b, X)'), nl, '$pj_reset', catch(( ( p(b, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p(_, 4), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, 4), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- p(X, 4)'), nl, '$pj_reset', catch(( ( p(X, 4) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- meta_data(p(c, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- p(c, _)'), nl, '$pj_reset', catch(( ( p(c, _) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- meta_data(p(c, Y), X)'), nl, '$pj_reset', catch(( ( meta_data(p(c, Y), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- p(c, Y)'), nl, '$pj_reset', catch(( ( p(c, Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- meta_data(p(_, 2), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, 2), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- p(_, 2)'), nl, '$pj_reset', catch(( ( p(_, 2) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- meta_data(p(Y, 2), X)'), nl, '$pj_reset', catch(( ( meta_data(p(Y, 2), X) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- p(X, 2)'), nl, '$pj_reset', catch(( ( p(X, 2) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- meta_data(p(z, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(z, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- meta_data(p(_, 9), X)'), nl, '$pj_reset', catch(( ( meta_data(p(_, 9), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- meta_data(p(a, 2), X)'), nl, '$pj_reset', catch(( ( meta_data(p(a, 2), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- meta_data(p(e(_), _), X)'), nl, '$pj_reset', catch(( ( meta_data(p(e(_), _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- p(e(_), _)'), nl, '$pj_reset', catch(( ( p(e(_), _) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- meta_data(p(e(Y), Z), X)'), nl, '$pj_reset', catch(( ( meta_data(p(e(Y), Z), X) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_q'(25) :- write('?- p(e(X), Y)'), nl, '$pj_reset', catch(( ( p(e(X), Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(25).
'$pj_main' :- between(1, 25, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
