%?- open('target/39test.pl', write, Z), set_output(Z), write('?- asserta(test).'), close(Z)
% Z=target/39test.pl_output_handle

%FAIL test

%?- consult('target/39test')
%ERROR Could not read prolog source from resource: target/39test

%TRUE consult('target/39test.pl')

%TRUE test

% test ensure_loaded adds ".pl" to resource if no file extension provided

%TRUE ensure_loaded('target/39test')

%?- test
%YES
%YES

%TRUE ensure_loaded('target/39test.pl')

%?- test
%YES
%YES

%?- ensure_loaded('target/doesntexist')
%ERROR Could not read prolog source from resource: target/doesntexist.pl

%?- ensure_loaded('target/39test.pro')
%ERROR Could not read prolog source from resource: target/39test.pro

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- open(\'target/39test.pl\', write, Z), set_output(Z), write(\'?- asserta(test).\'), close(Z)'), nl, '$pj_reset', catch(( ( open('target/39test.pl', write, Z), set_output(Z), write('?- asserta(test).'), close(Z) ), write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- consult(\'target/39test\')'), nl, '$pj_reset', catch(( ( consult('target/39test') ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test'), nl, '$pj_reset', catch(( ( test ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test'), nl, '$pj_reset', catch(( ( test ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- ensure_loaded(\'target/doesntexist\')'), nl, '$pj_reset', catch(( ( ensure_loaded('target/doesntexist') ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- ensure_loaded(\'target/39test.pro\')'), nl, '$pj_reset', catch(( ( ensure_loaded('target/39test.pro') ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
