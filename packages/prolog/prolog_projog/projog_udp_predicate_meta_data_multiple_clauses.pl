?- pj_add_predicate(meta_data/2, 'org.projog.core.predicate.udp.PredicateMetaData').

p1(a) :- write(a).
p1(b) :- write(b).
p1(c) :- write(c).

p2(d) :- write(d).
p2(e) :- write(e).
p2(f) :- write(f).

p3(g) :- write(g).
p3(h) :- write(h).
p3(i) :- write(i).

p4(x) :- p1(b), p2(d), p3(i).
p4(y) :- p1(a), p2(f), p3(h).
p4(z) :- p1(c), p2(e), p3(g).

p5(X) :- p4(X).

p6 :- p5(x).

%?- p5(X)
%OUTPUT bdi
% X=x
%OUTPUT afh
% X=y
%OUTPUT ceg
% X=z

%?- p5(x)
%OUTPUT bdi
%YES

%?- p5(y)
%OUTPUT afh
%YES

%?- p5(z)
%OUTPUT ceg
%YES

%FAIL p5(w)

%?- p6
%OUTPUT bdi
%YES

%?- meta_data(p4(q), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.NeverSucceedsPredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p4(x), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory$LinkedHashMapPredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleNonRetryableRulePredicateFactory
% X=processed_isRetryable : false
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p5(q), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p5(x), X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

%?- meta_data(p6, X)
% X=factory_class : org.projog.core.predicate.udp.StaticUserDefinedPredicateFactory
% X=factory_isRetryable : true
% X=factory_isAlwaysCutOnBacktrack : false
% X=actual_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=actual_isRetryable : true
% X=actual_isAlwaysCutOnBacktrack : false
% X=processed_class : org.projog.core.predicate.udp.SingleRetryableRulePredicateFactory
% X=processed_isRetryable : true
% X=processed_isAlwaysCutOnBacktrack : false

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p5(X)'), nl, '$pj_reset', catch(( ( p5(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p5(x)'), nl, '$pj_reset', catch(( ( p5(x) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p5(y)'), nl, '$pj_reset', catch(( ( p5(y) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p5(z)'), nl, '$pj_reset', catch(( ( p5(z) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p6'), nl, '$pj_reset', catch(( ( p6 ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- meta_data(p4(q), X)'), nl, '$pj_reset', catch(( ( meta_data(p4(q), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- meta_data(p4(x), X)'), nl, '$pj_reset', catch(( ( meta_data(p4(x), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- meta_data(p5(q), X)'), nl, '$pj_reset', catch(( ( meta_data(p5(q), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- meta_data(p5(x), X)'), nl, '$pj_reset', catch(( ( meta_data(p5(x), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- meta_data(p6, X)'), nl, '$pj_reset', catch(( ( meta_data(p6, X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_main' :- between(1, 10, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
