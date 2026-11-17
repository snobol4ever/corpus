:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- X in -1..1
% X=-1..1

%?- X in -1..1, X#\=-1
% X=0..1

%?- X in -1..1, X#\=0
% X={-1, 1}

%?- X in -1..1, X#\=1
% X=-1..0

%?- X in -1..1, X#>0
% X=1

%?- X in -1..1, X#<0
% X=-1



%?- X in 9223372036854775805..9223372036854775807
% X=9223372036854775805..9223372036854775807

%?- X in 9223372036854775805..9223372036854775807, X#\=9223372036854775805
% X=9223372036854775806..9223372036854775807

%?- X in 9223372036854775805..9223372036854775807, X#\=9223372036854775806
% X={9223372036854775805, 9223372036854775807}

%?- X in 9223372036854775805..9223372036854775807, X#\=9223372036854775807
% X=9223372036854775805..9223372036854775806

%?- X in 9223372036854775805..9223372036854775807, X#>9223372036854775806
% X=9223372036854775807

%?- X in 9223372036854775805..9223372036854775807, X#<9223372036854775806
% X=9223372036854775805



%?- X in -9223372036854775808..-9223372036854775806
% X=-9223372036854775808..-9223372036854775806

%?- X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775808
% X=-9223372036854775807..-9223372036854775806

%?- X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775807
% X={-9223372036854775808, -9223372036854775806}

%?- X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775806
% X=-9223372036854775808..-9223372036854775807

%?- X in -9223372036854775808..-9223372036854775806, X#>-9223372036854775807
% X=-9223372036854775806

%?- X in -9223372036854775808..-9223372036854775806, X#<-9223372036854775807
% X=-9223372036854775808

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X in -1..1'), nl, '$pj_reset', catch(( ( X in -1..1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in -1..1, X#\\=-1'), nl, '$pj_reset', catch(( ( X in -1..1, X#\=-1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in -1..1, X#\\=0'), nl, '$pj_reset', catch(( ( X in -1..1, X#\=0 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X in -1..1, X#\\=1'), nl, '$pj_reset', catch(( ( X in -1..1, X#\=1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X in -1..1, X#>0'), nl, '$pj_reset', catch(( ( X in -1..1, X#>0 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X in -1..1, X#<0'), nl, '$pj_reset', catch(( ( X in -1..1, X#<0 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X in 9223372036854775805..9223372036854775807'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X in 9223372036854775805..9223372036854775807, X#\\=9223372036854775805'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#\=9223372036854775805 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X in 9223372036854775805..9223372036854775807, X#\\=9223372036854775806'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#\=9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X in 9223372036854775805..9223372036854775807, X#\\=9223372036854775807'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#\=9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- X in 9223372036854775805..9223372036854775807, X#>9223372036854775806'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#>9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- X in 9223372036854775805..9223372036854775807, X#<9223372036854775806'), nl, '$pj_reset', catch(( ( X in 9223372036854775805..9223372036854775807, X#<9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- X in -9223372036854775808..-9223372036854775806'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- X in -9223372036854775808..-9223372036854775806, X#\\=-9223372036854775808'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775808 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- X in -9223372036854775808..-9223372036854775806, X#\\=-9223372036854775807'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- X in -9223372036854775808..-9223372036854775806, X#\\=-9223372036854775806'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#\=-9223372036854775806 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- X in -9223372036854775808..-9223372036854775806, X#>-9223372036854775807'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#>-9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- X in -9223372036854775808..-9223372036854775806, X#<-9223372036854775807'), nl, '$pj_reset', catch(( ( X in -9223372036854775808..-9223372036854775806, X#<-9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_main' :- between(1, 18, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
