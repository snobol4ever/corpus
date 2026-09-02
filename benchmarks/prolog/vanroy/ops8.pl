:- initialization(main).
% ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
% Bracket encloses the WORK ONLY -- not startup, not the write. Multiples publish on work; startup/finish
% OVERHEAD is a separate per-engine number the harness derives as (external total - work).
% ⛔ Timestamps go to user_error so stdout stays BYTE-COMPARABLE and ops8.expected still verifies.
% ⭐ Both units: work_us is the real measurement (integer ms quantizes these kernels -- a 3 ms kernel is
% three ticks); work_ms is kept because the rival preludes are millisecond sources, so the cross-engine
% floor genuinely is 1 ms. Reporting both keeps a us numerator from being divided by a ms denominator
% silently. Per-engine precision floors are stated in the basis line, never papered over.
bench__main :-
    wall_us(T0), wall_ms(M0),
    ( top -> Res = ok ; Res = failed ),
    wall_us(T1), wall_ms(M1),
    write(Res), nl,
    W is T1 - T0, WM is M1 - M0,
    format(user_error, "BENCH kernel=ops8 work_us=~w work_ms=~w~n", [W, WM]).
% generated: 25 October 1989
% option(s):
%
%   (deriv) ops8
%
%   David H. D. Warren
%   Copyright: Public domain
%
%   symbolic derivative of (x+1)*((^(x,2)+2)*(^(x,3)+3))

top:-ops8.

ops8 :- d((x+1)*((^(x,2)+2)*(^(x,3)+3)),x,_).

d(U+V,X,DU+DV) :- !,
    d(U,X,DU),
    d(V,X,DV).
d(U-V,X,DU-DV) :- !,
    d(U,X,DU),
    d(V,X,DV).
d(U*V,X,DU*V+U*DV) :- !,
    d(U,X,DU),
    d(V,X,DV).
d(U/V,X,(DU*V-U*DV)/(^(V,2))) :- !,
    d(U,X,DU),
    d(V,X,DV).
d(^(U,N),X,DU*N*(^(U,N1))) :- !,
    integer(N),
    N1 is N-1,
    d(U,X,DU).
d(-U,X,-DU) :- !,
    d(U,X,DU).
d(exp(U),X,exp(U)*DU) :- !,
    d(U,X,DU).
d(log(U),X,DU/U) :- !,
    d(U,X,DU).
d(X,X,1) :- !.
d(_,_,0).
main :- l__(65536).
l__(N__) :- between(1, N__, _), bench__main, fail.
l__(_).
