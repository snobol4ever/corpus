?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p1(a, 1, x).
p1(b, X, y) :- repeat(2).
p1(c, 3, Z).

p2(a, 1, x).
p2(X, 2, y) :- repeat(2).
p2(c, 3, Z).

p3(a, 1, x).
p3(b, X, y) :- repeat(2).
p3(X, 3, z).

%?- meta_data(p1(_, _, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p2(_, _, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p3(_, _, _), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- p1(X, Y, Z)
% X=a
% Y=1
% Z=x
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=c
% Y=3
% Z=UNINSTANTIATED VARIABLE

%?- p2(X, Y, Z)
% X=a
% Y=1
% Z=x
% X=UNINSTANTIATED VARIABLE
% Y=2
% Z=y
% X=UNINSTANTIATED VARIABLE
% Y=2
% Z=y
% X=c
% Y=3
% Z=UNINSTANTIATED VARIABLE

%?- p3(X, Y, Z)
% X=a
% Y=1
% Z=x
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=b
% Y=UNINSTANTIATED VARIABLE
% Z=y
% X=UNINSTANTIATED VARIABLE
% Y=3
% Z=z

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- meta_data(p1(_, _, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p1(_, _, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- meta_data(p2(_, _, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p2(_, _, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- meta_data(p3(_, _, _), X)'), nl, '$pj_reset', catch(( ( meta_data(p3(_, _, _), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p1(X, Y, Z)'), nl, '$pj_reset', catch(( ( p1(X, Y, Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p2(X, Y, Z)'), nl, '$pj_reset', catch(( ( p2(X, Y, Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p3(X, Y, Z)'), nl, '$pj_reset', catch(( ( p3(X, Y, Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
