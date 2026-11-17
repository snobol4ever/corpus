%?- X is 45345
% X=45345

%?- X is -876878
% X=-876878

%?- X is 2+1
% X=3

%?- X is 12-5
% X=7

%?- X is 6*7
% X=42

%?- X is 6/2
% X=3

%?- X is 6//2
% X=3

%?- X is 7/2
% X=3.5

%?- X is 7//2
% X=3

%?- X is 7 * 4 // 2
% X=14

%?- X is 5 mod 3
% X=2

%?- X is 2147483647 + 1
% X=2147483648

%?- X is -2147483648 - 1
% X=-2147483649

% The maximum integer value that can be represented is 9223372036854775807

%?- X is 9223372036854775807
% X=9223372036854775807

%?- X is 9223372036854775806 + 1
% X=9223372036854775807

%?- X is 9223372036854775806 + 2
% X=-9223372036854775808

% The minimum integer value that can be represented is -9223372036854775808

%?- X is -9223372036854775808
% X=-9223372036854775808

%?- X is -9223372036854775807 - 1
% X=-9223372036854775808

%?- X is -9223372036854775807 - 2
% X=9223372036854775807

% Prolog evaluates numerical expressions using the BODMAS rule to determine the order in which operations are performed.

%?- X is 1+2*3
% X=7

%?- X is 2*3+1
% X=7

%?- X is (1+2)*3
% X=9

%?- X is 2*(3+1)
% X=8

%?- X is -(4+6)
% X=-10

% Variables must be instantiated to numerical terms before they can be used in calculations.

%?- X is 1 + Y
%ERROR Cannot get Numeric for term: Y of type: VARIABLE

%?- Y = 4, X is 1 + Y
% Y=4
% X=5

%?- Y = 6-2, X is 1 + Y
% Y=6 - 2
% X=5

%?- Y = 2*4, X is -Y
% Y=2 * 4
% X=-8

% Examples of using decimal point numbers in calculations.

%?- X is 1.3 + 1.2
% X=2.5

%?- X is 1.3 + 1
% X=2.3

%?- X is 1 + 1.2
% X=2.2

%?- X is 3.5 - 1.25
% X=2.25

%?- X is 3.5 - 1
% X=2.5

%?- X is 3 - 1.25
% X=1.75

%?- X is -9.6
% X=-9.6

%?- Y = 9.6, X is -Y
% Y=9.6
% X=-9.6

%?- X is 6.3 * 2.75
% X=17.325

%?- X is 6.3 * 2
% X=12.6

%?- X is 6 * 2.75
% X=16.5

%?- X is 8.5 / 2.5
% X=3.4

%?- X is 8.5 / 2
% X=4.25

%?- X is 8 / 2.5
% X=3.2

%?- X is 5 mod 2
% X=1

%?- X is 5 mod -2
% X=-1

%?- X is -5 mod -2
% X=-1

%?- X is -5 mod 2
% X=1

%?- X is 5 rem 2
% X=1

%?- X is 5 rem -2
% X=1

%?- X is -5 rem -2
% X=-1

%?- X is -5 rem 2
% X=-1

%?- X is 2 mod -5
% X=-3

%?- X is 2 rem -5
% X=2

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X is 45345'), nl, '$pj_reset', catch(( ( X is 45345 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X is -876878'), nl, '$pj_reset', catch(( ( X is -876878 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X is 2+1'), nl, '$pj_reset', catch(( ( X is 2+1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X is 12-5'), nl, '$pj_reset', catch(( ( X is 12-5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X is 6*7'), nl, '$pj_reset', catch(( ( X is 6*7 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X is 6/2'), nl, '$pj_reset', catch(( ( X is 6/2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X is 6//2'), nl, '$pj_reset', catch(( ( X is 6//2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X is 7/2'), nl, '$pj_reset', catch(( ( X is 7/2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X is 7//2'), nl, '$pj_reset', catch(( ( X is 7//2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X is 7 * 4 // 2'), nl, '$pj_reset', catch(( ( X is 7 * 4 // 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- X is 5 mod 3'), nl, '$pj_reset', catch(( ( X is 5 mod 3 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- X is 2147483647 + 1'), nl, '$pj_reset', catch(( ( X is 2147483647 + 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- X is -2147483648 - 1'), nl, '$pj_reset', catch(( ( X is -2147483648 - 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- X is 9223372036854775807'), nl, '$pj_reset', catch(( ( X is 9223372036854775807 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- X is 9223372036854775806 + 1'), nl, '$pj_reset', catch(( ( X is 9223372036854775806 + 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- X is 9223372036854775806 + 2'), nl, '$pj_reset', catch(( ( X is 9223372036854775806 + 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- X is -9223372036854775808'), nl, '$pj_reset', catch(( ( X is -9223372036854775808 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- X is -9223372036854775807 - 1'), nl, '$pj_reset', catch(( ( X is -9223372036854775807 - 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- X is -9223372036854775807 - 2'), nl, '$pj_reset', catch(( ( X is -9223372036854775807 - 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- X is 1+2*3'), nl, '$pj_reset', catch(( ( X is 1+2*3 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- X is 2*3+1'), nl, '$pj_reset', catch(( ( X is 2*3+1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- X is (1+2)*3'), nl, '$pj_reset', catch(( ( X is (1+2)*3 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- X is 2*(3+1)'), nl, '$pj_reset', catch(( ( X is 2*(3+1) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- X is -(4+6)'), nl, '$pj_reset', catch(( ( X is -(4+6) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_q'(25) :- write('?- X is 1 + Y'), nl, '$pj_reset', catch(( ( X is 1 + Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(25).
'$pj_q'(26) :- write('?- Y = 4, X is 1 + Y'), nl, '$pj_reset', catch(( ( Y = 4, X is 1 + Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(26).
'$pj_q'(27) :- write('?- Y = 6-2, X is 1 + Y'), nl, '$pj_reset', catch(( ( Y = 6-2, X is 1 + Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(27).
'$pj_q'(28) :- write('?- Y = 2*4, X is -Y'), nl, '$pj_reset', catch(( ( Y = 2*4, X is -Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(28).
'$pj_q'(29) :- write('?- X is 1.3 + 1.2'), nl, '$pj_reset', catch(( ( X is 1.3 + 1.2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(29).
'$pj_q'(30) :- write('?- X is 1.3 + 1'), nl, '$pj_reset', catch(( ( X is 1.3 + 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(30).
'$pj_q'(31) :- write('?- X is 1 + 1.2'), nl, '$pj_reset', catch(( ( X is 1 + 1.2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(31).
'$pj_q'(32) :- write('?- X is 3.5 - 1.25'), nl, '$pj_reset', catch(( ( X is 3.5 - 1.25 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(32).
'$pj_q'(33) :- write('?- X is 3.5 - 1'), nl, '$pj_reset', catch(( ( X is 3.5 - 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(33).
'$pj_q'(34) :- write('?- X is 3 - 1.25'), nl, '$pj_reset', catch(( ( X is 3 - 1.25 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(34).
'$pj_q'(35) :- write('?- X is -9.6'), nl, '$pj_reset', catch(( ( X is -9.6 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(35).
'$pj_q'(36) :- write('?- Y = 9.6, X is -Y'), nl, '$pj_reset', catch(( ( Y = 9.6, X is -Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(36).
'$pj_q'(37) :- write('?- X is 6.3 * 2.75'), nl, '$pj_reset', catch(( ( X is 6.3 * 2.75 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(37).
'$pj_q'(38) :- write('?- X is 6.3 * 2'), nl, '$pj_reset', catch(( ( X is 6.3 * 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(38).
'$pj_q'(39) :- write('?- X is 6 * 2.75'), nl, '$pj_reset', catch(( ( X is 6 * 2.75 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(39).
'$pj_q'(40) :- write('?- X is 8.5 / 2.5'), nl, '$pj_reset', catch(( ( X is 8.5 / 2.5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(40).
'$pj_q'(41) :- write('?- X is 8.5 / 2'), nl, '$pj_reset', catch(( ( X is 8.5 / 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(41).
'$pj_q'(42) :- write('?- X is 8 / 2.5'), nl, '$pj_reset', catch(( ( X is 8 / 2.5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(42).
'$pj_q'(43) :- write('?- X is 5 mod 2'), nl, '$pj_reset', catch(( ( X is 5 mod 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(43).
'$pj_q'(44) :- write('?- X is 5 mod -2'), nl, '$pj_reset', catch(( ( X is 5 mod -2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(44).
'$pj_q'(45) :- write('?- X is -5 mod -2'), nl, '$pj_reset', catch(( ( X is -5 mod -2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(45).
'$pj_q'(46) :- write('?- X is -5 mod 2'), nl, '$pj_reset', catch(( ( X is -5 mod 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(46).
'$pj_q'(47) :- write('?- X is 5 rem 2'), nl, '$pj_reset', catch(( ( X is 5 rem 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(47).
'$pj_q'(48) :- write('?- X is 5 rem -2'), nl, '$pj_reset', catch(( ( X is 5 rem -2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(48).
'$pj_q'(49) :- write('?- X is -5 rem -2'), nl, '$pj_reset', catch(( ( X is -5 rem -2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(49).
'$pj_q'(50) :- write('?- X is -5 rem 2'), nl, '$pj_reset', catch(( ( X is -5 rem 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(50).
'$pj_q'(51) :- write('?- X is 2 mod -5'), nl, '$pj_reset', catch(( ( X is 2 mod -5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(51).
'$pj_q'(52) :- write('?- X is 2 rem -5'), nl, '$pj_reset', catch(( ( X is 2 rem -5 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(52).
'$pj_main' :- between(1, 52, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
