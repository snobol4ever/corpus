%--------------------------------------------------------------- 1 dcg_reference
% Frozen copy of the translation core of the shared library/dcgs.pl, as
% it stood before that file was replaced. NEVER loaded by the system -
% it exists only as the differential oracle for the DCG tests, so that
% "does the native translator still agree with the reference?" stays an
% answerable question after the reference stops being the implementation.
%
% Deliberately stripped of everything that is not translation: no
% phrase/2..5, no seq//1 / seqq//1 / ...//0, and in particular no
% user:term_expansion/2 or user:goal_expansion/2. Loading those hooks
% would re-install the old expansion machinery over the native one and
% quietly make the tests measure the wrong thing.
%
% Do not "fix" anything here. Its whole value is being the unmodified
% reference; where the native implementation deliberately differs, the
% tests carry an explicit divergence entry (see #1102).

:- module(dcg_reference, [dcg_rule/2, dcg_body/4, dcg_constr/1]).

:- use_module(library(error)).
:- use_module(library(lists), [append/3]).
:- use_module(library(loader), [strip_module/3]).

% The same version of the below two dcg_rule clauses, but with module scoping.
dcg_rule(( M:NonTerminal, Terminals --> GRBody ), ( M:Head :- Body )) :-
    dcg_non_terminal(NonTerminal, S0, S, Head),
    dcg_body(GRBody, S0, S1, Goal1),
    dcg_terminals(Terminals, S, S1, Goal2),
    Body = ( Goal1, Goal2 ).
dcg_rule(( M:NonTerminal --> GRBody ), ( M:Head :- Body )) :-
    NonTerminal \= ( _, _ ),
    dcg_non_terminal(NonTerminal, S0, S, Head),
    dcg_body(GRBody, S0, S, Body).

% This program uses append/3 as defined in the Prolog prologue.
% Expands a DCG rule into a Prolog rule, when no error condition applies.
dcg_rule(( NonTerminal, Terminals --> GRBody ), ( Head :- Body )) :-
    dcg_non_terminal(NonTerminal, S0, S, Head),
    dcg_body(GRBody, S0, S1, Goal1),
    dcg_terminals(Terminals, S, S1, Goal2),
    Body = ( Goal1, Goal2 ).
dcg_rule(( NonTerminal --> GRBody ), ( Head :- Body )) :-
    NonTerminal \= ( _, _ ),
    dcg_non_terminal(NonTerminal, S0, S, Head),
    dcg_body(GRBody, S0, S, Body).

dcg_non_terminal(NonTerminal, S0, S, Goal) :-
    NonTerminal =.. NonTerminalUniv,
    append(NonTerminalUniv, [S0, S], GoalUniv),
    (  callable(NonTerminal) ->
       Goal =.. GoalUniv
    ;  Goal = NonTerminal % let call/N throw an error instead of throwing one here.
    ).

dcg_terminals(Terminals, S0, S, S0 = List) :-
    append(Terminals, S, List).

dcg_body(Var, S0, S, Body) :-
    var(Var),
    Body = phrase(Var, S0, S).
dcg_body(GRBody, S0, S, Body) :-
    nonvar(GRBody),
    dcg_constr(GRBody),
    dcg_cbody(GRBody, S0, S, Body).
dcg_body(NonTerminal, S0, S, Goal1) :-
    nonvar(NonTerminal),
    \+ dcg_constr(NonTerminal),
    loader:strip_module(NonTerminal, M, NonTerminal0),
    dcg_non_terminal(NonTerminal0, S0, S, Goal0),
    (  functor(NonTerminal, (:), 2) ->
       Goal1 = M:Goal0
    ;  Goal1 = Goal0
    ).

% The following constructs in a grammar rule body
% are defined in the corresponding subclauses.
dcg_constr([]). % 7.14.1
dcg_constr([_|_]). % 7.14.2 - terminal sequence
dcg_constr(( _, _ )). % 7.14.3 - concatenation
dcg_constr(( _ ; _ )). % 7.14.4 - alternative
dcg_constr(( _'|'_ )). % 7.14.6 - alternative
dcg_constr({_}). % 7.14.7
dcg_constr(call(_)). % 7.14.8
dcg_constr(phrase(_)). % 7.14.9
dcg_constr(phrase(_,_)). % extension of 7.14.9
dcg_constr(phrase(_,_,_)). % extension of 7.14.9
dcg_constr(!). % 7.14.10
dcg_constr(\+ G_0) :- % 7.14.11 - not (existence implementation def.)
    throw(error(representation_error(dcg_body), [culprit- (\+ G_0)])).
dcg_constr((If->Then)) :- % 7.14.12 - if-then (existence implementation def.)
    throw(error(representation_error(dcg_body), [culprit- (If->Then)])).

% The principal functor of the first argument indicates
% the construct to be expanded.
dcg_cbody([], S0, S, S0 = S).
dcg_cbody([T|Ts], S0, S, Goal) :-
    must_be(list, [T|Ts]),
    dcg_terminals([T|Ts], S0, S, Goal).
dcg_cbody(( GRFirst, GRSecond ), S0, S, ( First, Second )) :-
    dcg_body(GRFirst, S0, S1, First),
    dcg_body(GRSecond, S1, S, Second).
dcg_cbody(( GREither ; GROr ), S0, S, ( Either ; Or )) :-
    \+ subsumes_term(( _ -> _ ), GREither),
    dcg_body(GREither, S0, S, Either),
    dcg_body(GROr, S0, S, Or).
dcg_cbody(( GRCond ; GRElse ), S0, S, ( Cond ; Else )) :-
    subsumes_term(( _GRIf -> _GRThen ), GRCond),
    dcg_cbody(GRCond, S0, S, Cond),
    dcg_body(GRElse, S0, S, Else).
dcg_cbody(( GREither '|' GROr ), S0, S, ( Either ; Or )) :-
    dcg_body(GREither, S0, S, Either),
    dcg_body(GROr, S0, S, Or).
dcg_cbody({Goal}, S0, S, ( Goal, S0 = S )).
dcg_cbody(call(Cont), S0, S, call(Cont, S0, S)).
dcg_cbody(phrase(Body), S0, S, phrase(Body, S0, S)).
dcg_cbody(phrase(Body, Arg), S0, S, phrase(Body, Arg, S0, S)).
dcg_cbody(phrase(Body, Arg1, Arg2), S0, S, phrase(Body, Arg1, Arg2, S0, S)).
dcg_cbody(!, S0, S, ( !, S0 = S )).
% dcg_cbody(\+ GRBody, S0, S, ( \+ phrase(GRBody,S0,_), S0 = S )).
dcg_cbody(( GRIf -> GRThen ), S0, S, ( If -> Then )) :-
    dcg_body(GRIf, S0, S1, If),
    dcg_body(GRThen, S1, S, Then).

% then.
error_goal(error(instantiation_error, _Context), _).
error_goal(error(E, must_be/2), error(E, must_be/2)).
error_goal(error(E, (=..)/2), error(E, (=..)/2)).
error_goal(error(representation_error(dcg_body), Context),
           error(representation_error(dcg_body), Context)).
error_goal(E, _) :- throw(E).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this module (the DCG reference translation the sundry_dcg_ programs load) defines dcg_rule/2 and never calls it; the driver translates one rule.
:- initialization((dcg_rule((greeting --> [hello], name), R), portray_clause(R))).
%----------------------------------------------------------------- 2 fp_test0081
%
% Solving polynomial equations of degree 4
% See http://alain.colmerauer.free.fr/alcol/ArchivesPublications/Equation4/Equation4.pdf
%

:- initialization(main).

main :-
    racines([[1,0],[-10,0],[35,0],[-50,0], [24,0]], L1),
    write(L1), nl,
    racines([[1,0],[-9,-5],[14,33],[24,-44],[-26, 0]], L2),
    write(L2), nl.

% Liste des racines d'un polynome
racines(P, L) :-
    findall(Z, racine(P, Z), L).

% Racine d'un polynome
racine([A, B], Z) :-
    est(Z, moins(div(B, A))).
racine([A, B, C], Z) :-
    est(P, div(B, fois([2, 0], A))),
    est(Q, div(C, A)),
    est(Z, add(moins(P), fois(racarreeun, racine(2, moins(carre(P), Q))))).
racine([A, B, C, D], Zp) :-
    est(T, div(B, fois([-3, 0], A))),
    est(P, div(add(fois([3, 0], fois(A, carre(T))), add(fois([2, 0], fois(B, T)), C)), A)),
    est(Q, div(add(fois(A, cube(T)), add(fois(B, carre(T)), add(fois(C, T), D))), A)),
    solutionCardan(P, Q, Z),
    est(Zp, add(Z, T)).
racine([A, B, C, D, E], Zp) :-
    est(T, div(B, fois([-4, 0], A))),
    est(P, div(add(fois([6, 0], fois(A, carre(T))), add(fois([3, 0], fois(B, T)), C)), A)),
    est(Q, div(add(fois(fois([4, 0], A), cube(T)), add(fois(fois([3, 0], B), carre(T)), add(fois(fois([2, 0], C), T), D))), A)),
    est(R, div(add(fois(A, pquatre(T)), add(fois(B, cube(T)), add(fois(C, carre(T)), add(fois(D, T), E)))), A)),
    solutionLagrange(P, Q, R, Z),
    est(Zp, add(Z, T)).

% Polynome a partir de ses racines
polynome(L, P) :-
    polynome(L, [[1, 0]], P).

polynome([], P0, P0).
polynome([X|L], P0, P4) :-
    conc(P0, [[0, 0]], P1),
    est(Xp, moins(X)),
    foisl(Xp, P0, P2),
    addll(P1, [[0, 0]|P2], P3),
    polynome(L, P3, P4).

conc([], L, L).
conc([E|L], Lp, [E|Lpp]) :-
    conc(L, Lp, Lpp).

foisl(_, [], []).
foisl(X, [Y|L], [Z|Lp]) :-
    est(Z, fois(X, Y)),
    foisl(X, L, Lp).

addl(_, [], []).
addl(X, [Y|L], [Z|Lp]) :-
    est(Z, addl(X, Y)),
    addl(X, L, Lp).

addll([], [], []).
addll([X|L], [Y|Lp], [Z|Lpp]) :-
    est(Z, add(X, Y)),
    addll(L, Lp, Lpp).

% Solution de l'equation du troisieme degre selon Cardan
solutionCardan(P, Q, Z) :-
    nul(P),
    est(Z, fois(racubiqueun, racine(3, moins(Q)))).
solutionCardan(Pp, Qp, Z) :-
    nonnul(Pp),
    est(P, div(Pp, [3, 0])),
    est(Q, div(Qp, [2, 0])),
    est(Raccubique, fois(racubiqueun, racine(3, moins(racine(2, add(carre(Q), cube(P))), Q)))),
    est(Z, moins(Raccubique, div(P, Raccubique))).

% Solutions de l'equation du quatrieme degre selon Lagrange
solutionLagrange(P, Q, R, Z) :-
    est(A, [1, 0]),
    est(B, fois([2, 0], P)),
    est(C, moins(carre(P), fois([4, 0], R))),
    est(D, moins(carre(Q))),
    racines([A, B, C, D], [Y1, Y2, Y3]),
    est(Y1p, racine(2, Y1)),
    est(Y2p, racine(2, Y2)),
    est(Y3p, racine(2, Y3)),
    est(U1, div(add(Y1p, add(Y2p, Y3p)), [2, 0])),
    est(U2, div(moins(Y1p, add(Y2p, Y3p)), [2, 0])),
    est(U3, div(moins(Y3p, add(Y1p, Y2p)), [2, 0])),
    est(U4, div(moins(Y2p, add(Y1p, Y3p)), [2, 0])),
    est(V1, fois(U1, fois(U2, U3))),
    est(V2, fois(U1, fois(U2, U4))),
    est(V3, fois(U1, fois(U3, U4))),
    est(V4, fois(U2, fois(U3, U4))),
    epsilon(E, moins(add(V1, add(V2, add(V3, V4)))), Q),
    dans(U, [U1, U2, U3, U4]),
    est(Z, fois(E, U)).

epsilon([1, 0], _, Q) :-
    nul(Q).
epsilon(E, S, Q) :-
    nonnul(Q),
    est(E, div(S, Q)).

dans(U, [U|_]).
dans(U, [_|L]) :-
    dans(U, L).

% Valeurs de l'enchainement des operations sur les complexes
est(Z, Z) :-
    Z = [_, _].
est(Z, T) :-
    T =.. [F],
    atom(F),
    Tp =.. [F, Z],
    call(Tp).
est(Z, T) :-
    T =.. [F, X],
    est(Xp, X),
    Tp =.. [F, Xp, Z],
    call(Tp).
est(Z, T) :-
    T =.. [F, X, Y],
    F \== racine,
    F \== '.',
    est(Xp, X),
    est(Yp, Y),
    Tp =.. [F, Xp, Yp, Z],
    call(Tp).
est(Z, racine(N, X)) :-
    est(Xp, X),
    racine(N, Xp, Z).

% Operations sur les complexes
moins([X1, X2], [Y1, Y2]) :-
    Y1 is -X1,
    Y2 is -X2.

moins([X1, X2], [Y1, Y2], [Z1, Z2]) :-
    Z1 is X1-Y1,
    Z2 is X2-Y2.

add([X1, X2], [Y1, Y2], [Z1, Z2]) :-
    Z1 is X1+Y1,
    Z2 is X2+Y2.

fois([X1, X2], [Y1, Y2], [Z1, Z2]) :-
    Z1 is X1*Y1-X2*Y2,
    Z2 is X1*Y2+X2*Y1.

invers([X1, X2], [Y1, Y2]) :-
    Y1 is X1/(X1**2+X2**2),
    Y2 is -X2/(X1**2+X2**2).

div(X, Y, Z) :-
    invers(Y, Yp),
    fois(X, Yp, Z).

carre(X, Y) :-
    fois(X, X, Y).

cube(X, Y) :-
    carre(X, Xp),
    fois(X, Xp, Y).

pquatre(X, Y) :-
    carre(X, Xp),
    carre(Xp, Y).

racarreeun([1, 0]).
racarreeun([-1, 0]).

racubiqueun([1, 0]).
racubiqueun([X, Y]) :-
    X is -1/2,
    Y is sqrt(3)/2.
racubiqueun([X, Y]) :-
    X is -1/2,
    Y is -sqrt(3)/2.

racine(_, X, [0, 0]) :-
    nul(X).
racine(N, X, Y) :-
    nonnul(X),
    polaire(X, [R, T]),
    root(N, R, Rp),
    Tp is T/N,
    cartesien([Rp, Tp], Y).

root(N, X, Y) :-
    Y is exp(log(X)/N).

polaire([X, Y], [R, Tp]) :-
    R is sqrt(X**2+Y**2),
    T is acos(abs(X)/R),
    cadran(X, Y, T, Tp).

cadran(X, Y, T, Tp) :-
    X >= 0,
    Y >= 0,
    Tp = T.
cadran(X, Y, T, Tp) :-
    X < 0,
    Y >= 0,
    Tp is pi-T.
cadran(X, Y, T, Tp) :-
    X < 0,
    Y < 0,
    Tp is T+pi.
cadran(X, Y, T, Tp) :-
    X >= 0,
    Y < 0,
    Tp is 2*pi-T.

cartesien([R, T], [X1, X2]) :-
    X1 is R*cos(T),
    X2 is R*sin(T).

% Problemes de zero
nul([X, Y]) :-
    nulreel(X),
    nulreel(Y),
    !.

nonnul(Z) :-
    nul(Z),
    !,
    fail.
nonnul(_).

nulreel(0) :-
    !.
nulreel(0.0) :-
    !.
nulreel(-0.0).
%----------------------------------------------------------------- 3 fp_test0585
% Solving polynomial equations of degree 4
% See http://alain.colmerauer.free.fr/alcol/ArchivesPublications/Equation4/Equation4.pdf

% Liste des racines dun polynome
'https://josd.github.io/eye/ns#roots'(P,L) :-
    findall(Z,racine(P,Z),L).

% Racine dun polynome
racine([A,B],Z) :-
    est(Z,moins(div(B,A))).
racine([A,B,C],Z) :-
    est(P,div(B,fois([2,0],A))),
    est(Q,div(C,A)),
    est(Z,add(moins(P),fois(racarreeun,racine(2,moins(carre(P),Q))))).
racine([A,B,C,D],Zp) :-
    est(T,div(B,fois([-3,0],A))),
    est(P,div(add(fois([3,0],fois(A,carre(T))),add(fois([2,0],fois(B,T)),C)),A)),
    est(Q,div(add(fois(A,cube(T)),add(fois(B,carre(T)),add(fois(C,T),D))),A)),
    solutionCardan(P,Q,Z),
    est(Zp,add(Z,T)).
racine([A,B,C,D,E],Zp) :-
    est(T,div(B,fois([-4,0],A))),
    est(P,div(add(fois([6,0],fois(A,carre(T))),add(fois([3,0],fois(B,T)),C)),A)),
    est(Q,div(add(fois(fois([4,0],A),cube(T)),add(fois(fois([3,0],B),carre(T)),add(fois(fois([2,0],C),T),D))),A)),
    est(R,div(add(fois(A,pquatre(T)),add(fois(B,cube(T)),add(fois(C,carre(T)),add(fois(D,T),E)))),A)),
    solutionLagrange(P,Q,R,Z),
    est(Zp,add(Z,T)).

% Polynome a partir de ses racines
polynome(L,P) :-
    polynome(L,[[1,0]],P).

polynome([],P0,P0).
polynome([X|L],P0,P4) :-
    conc(P0,[[0,0]],P1),
    est(Xp,moins(X)),
    foisl(Xp,P0,P2),
    addll(P1,[[0,0]|P2],P3),
    polynome(L,P3,P4).

conc([],L,L).
conc([E|L],Lp,[E|Lpp]) :-
    conc(L,Lp,Lpp).

foisl(_,[],[]).
foisl(X,[Y|L],[Z|Lp]) :-
    est(Z,fois(X,Y)),
    foisl(X,L,Lp).

addl(_,[],[]).
addl(X,[Y|L],[Z|Lp]) :-
    est(Z,addl(X,Y)),
    addl(X,L,Lp).

addll([],[],[]).
addll([X|L],[Y|Lp],[Z|Lpp]) :-
    est(Z,add(X,Y)),
    addll(L,Lp,Lpp).

% Solution de lequation du troisieme degre selon Cardan
solutionCardan(P,Q,Z) :-
    nul(P),
    est(Z,fois(racubiqueun,racine(3,moins(Q)))).
solutionCardan(Pp,Qp,Z) :-
    nonnul(Pp),
    est(P,div(Pp,[3,0])),
    est(Q,div(Qp,[2,0])),
    est(Raccubique,fois(racubiqueun,racine(3,moins(racine(2,add(carre(Q),cube(P))),Q)))),
    est(Z,moins(Raccubique,div(P,Raccubique))).

% Solutions de lequation du quatrieme degre selon Lagrange
solutionLagrange(P,Q,R,Z) :-
    est(A,[1,0]),
    est(B,fois([2,0],P)),
    est(C,moins(carre(P),fois([4,0],R))),
    est(D,moins(carre(Q))),
    'https://josd.github.io/eye/ns#roots'([A,B,C,D],[Y1,Y2,Y3]),
    est(Y1p,racine(2,Y1)),
    est(Y2p,racine(2,Y2)),
    est(Y3p,racine(2,Y3)),
    est(U1,div(add(Y1p,add(Y2p,Y3p)),[2,0])),
    est(U2,div(moins(Y1p,add(Y2p,Y3p)),[2,0])),
    est(U3,div(moins(Y3p,add(Y1p,Y2p)),[2,0])),
    est(U4,div(moins(Y2p,add(Y1p,Y3p)),[2,0])),
    est(V1,fois(U1,fois(U2,U3))),
    est(V2,fois(U1,fois(U2,U4))),
    est(V3,fois(U1,fois(U3,U4))),
    est(V4,fois(U2,fois(U3,U4))),
    epsilon(E,moins(add(V1,add(V2,add(V3,V4)))),Q),
    dans(U,[U1,U2,U3,U4]),
    est(Z,fois(E,U)).

epsilon([1,0],_,Q) :-
    nul(Q).
epsilon(E,S,Q) :-
    nonnul(Q),
    est(E,div(S,Q)).

dans(U,[U|_]).
dans(U,[_|L]) :-
    dans(U,L).

% Valeurs de lenchainement des operations sur les complexes
est(Z,Z) :-
    Z = [_,_].
est(Z,T) :-
    T =.. [F],
    atom(F),
    Tp =.. [F,Z],
    Tp.
est(Z,T) :-
    T =.. [F,X],
    est(Xp,X),
    Tp =.. [F,Xp,Z],
    Tp.
est(Z,T) :-
    T =.. [F,X,Y],
    F \== racine,
    F \== .,
    est(Xp,X),
    est(Yp,Y),
    Tp =.. [F,Xp,Yp,Z],
    Tp.
est(Z,racine(N,X)) :-
    est(Xp,X),
    racine(N,Xp,Z).

% Operations sur les complexes
moins([X1,X2],[Y1,Y2]) :-
    Y1 is -X1,
    Y2 is -X2.

moins([X1,X2],[Y1,Y2],[Z1,Z2]) :-
    Z1 is X1-Y1,
    Z2 is X2-Y2.

add([X1,X2],[Y1,Y2],[Z1,Z2]) :-
    Z1 is X1+Y1,
    Z2 is X2+Y2.

fois([X1,X2],[Y1,Y2],[Z1,Z2]) :-
    Z1 is X1*Y1-X2*Y2,
    Z2 is X1*Y2+X2*Y1.

invers([X1,X2],[Y1,Y2]) :-
    Y1 is X1/(X1**2+X2**2),
    Y2 is -X2/(X1**2+X2**2).

div(X,Y,Z) :-
    invers(Y,Yp),
    fois(X,Yp,Z).

carre(X,Y) :-
    fois(X,X,Y).

cube(X,Y) :-
    carre(X,Xp),
    fois(X,Xp,Y).

pquatre(X,Y) :-
    carre(X,Xp),
    carre(Xp,Y).

racarreeun([1,0]).
racarreeun([-1,0]).

racubiqueun([1,0]).
racubiqueun([X,Y]) :-
    X is -1/2,
    Y is sqrt(3)/2.
racubiqueun([X,Y]) :-
    X is -1/2,
    Y is -sqrt(3)/2.

racine(_,X,[0,0]) :-
    nul(X).
racine(N,X,Y) :-
    nonnul(X),
    polaire(X,[R,T]),
    root(N,R,Rp),
    Tp is T/N,
    cartesien([Rp,Tp],Y).

root(N,X,Y) :-
    Y is exp(log(X)/N).

polaire([X,Y],[R,Tp]) :-
    R is sqrt(X**2+Y**2),
    T is acos(abs(X)/R),
    cadran(X,Y,T,Tp).

cadran(X,Y,T,Tp) :-
    X >= 0,
    Y >= 0,
    Tp = T.
cadran(X,Y,T,Tp) :-
    X < 0,
    Y >= 0,
    Tp is pi-T.
cadran(X,Y,T,Tp) :-
    X < 0,
    Y < 0,
    Tp is T+pi.
cadran(X,Y,T,Tp) :-
    X >= 0,
    Y < 0,
    Tp is 2*pi-T.

cartesien([R,T],[X1,X2]) :-
    X1 is R*cos(T),
    X2 is R*sin(T).

% Problemes de zero
nul([X,Y]) :-
    nulreel(X),
    nulreel(Y),
    !.

nonnul(Z) :-
    nul(Z),
    !,
    fail.
nonnul(_).

nulreel(0) :-
    !.
nulreel(0.0) :-
    !.
nulreel(-0.0).

% query
query('https://josd.github.io/eye/ns#roots'([[1,0],[-10,0],[35,0],[-50,0],[24,0]],_ANSWER)).
query('https://josd.github.io/eye/ns#roots'([[1,0],[-9,-5],[14,33],[24,-44],[-26,0]],_ANSWER)).

run :-
    query(Q),
    Q,
    writeq(Q),
    write('.\n'),
    fail;
    true.

:- initialization(run).
%------------------------------------------- 4 issues_occurs_check_error_restore
% unify_with_occurs_check/2 restored occurs_check(error) as true, so later cyclic unifications failed instead of throwing.

:- initialization(main).

cyclic(Name) :-
	catch((Y = f(Y) -> R = succeeded ; R = failed), error(E, _), R = threw(E)),
	write(Name:R), nl.

main :-
	set_prolog_flag(occurs_check, error),
	cyclic(before),
	(unify_with_occurs_check(_, _) -> true ; true),
	cyclic(after_success),
	set_prolog_flag(occurs_check, error),
	(unify_with_occurs_check(X, f(X)) -> R = succeeded ; R = failed),
	write(uwoc_cyclic:R), nl,
	cyclic(after_failure),
	set_prolog_flag(occurs_check, false).
%--------------------------------------------------------- 5 issues_old_test0008
:-initialization(main).

main :-
	Ls = "abc", write(Ls), nl.
%--------------------------------------------------------- 6 issues_old_test0009
:-initialization(main).

main :-
	format("~w~n", [hello]).
%--------------------------------------------------------- 7 issues_old_test0018
:- initialization(main).
:- use_module(library(dcgs)).

main :-
	phrase([], Ls), write(Ls), nl,
	phrase([a], Ls), write(Ls), nl,
	!.
main.
%--------------------------------------------------------- 8 issues_old_test0019
:-initialization(main).
:- use_module(library(dcgs)).

main :-
	phrase({true}, _), write(true), nl.
%--------------------------------------------------------- 9 issues_old_test0023
:-initialization(main).

main :-
	_X \== a,
	write(ok), nl,
	!.
main :-
	write(nok), nl.

%-------------------------------------------------------- 10 issues_old_test0025
:-initialization(main).

main :-
	write_canonical("abc"), nl.
%-------------------------------------------------------- 11 issues_old_test0027
:-initialization(main).

main :-
	[a,b] \== [a,c],
	f(X) \== f(Y),
	write(ok), nl,
	!.
main :-
	write(nok), nl.

%-------------------------------------------------------- 12 issues_old_test0029
:-initialization(main).

main :-
	catch((
		length(_, E),
		(E is 15 -> (write(ok), nl, throw(err(halt))) ; true),
		X is 2^E,
		write(X), nl,
		length(_Ls, X),
		fail),
		err(halt),
		fail).
main.
%-------------------------------------------------------- 13 issues_old_test0031
:-initialization(main).

main :-
	X = f(X), X == X,
	write_term(X,[max_depth(5)]), nl.
%-------------------------------------------------------- 14 issues_old_test0033
:- use_module(library(dcgs)).
:-initialization(main).

as --> [].
as --> [a], as.

main :-
	phrase(as, Ls),
	Ls = [a|_],
	writeq(Ls), nl.
%-------------------------------------------------------- 15 issues_old_test0035
:- initialization(main).
:- use_module(library(lists)).

main :-
	append([a,b,c], "def", Ls),
	writeq(Ls), nl.
%-------------------------------------------------------- 16 issues_old_test0042
:- use_module(library(dcgs)).
:-initialization(main).

as --> [].
as --> [a], as.

main :-
	length(_,E), writeq(E), nl,
	N is 2^E, length(Ls, N),
	phrase(as, Ls),
	E == 14,
	!.
%-------------------------------------------------------- 17 issues_old_test0044
:- initialization(main).
:- use_module(library(lists)).

main :-
	length(_, E), N is 2^E,
	writeq(E), nl,
	length(Ls, N),
	maplist(=(a), Ls),
	writeq(ok), nl.
%-------------------------------------------------------- 18 issues_old_test0046
:-initialization(main).

main :-
	1 =.. L1, write(L1), nl,
	aa =.. L2, write(L2), nl,
	[aa] =.. L3, write(L3), nl,
	[aa,bb] =.. L4, write(L4), nl,
	[aa,bb,cc] =.. L5, write(L5), nl.
%-------------------------------------------------------- 19 issues_old_test0048
:-initialization(main).

main :-
	assertz('<https://josd.github.io/retina#p>'('<https://josd.github.io/retina#s>', '<https://josd.github.io/retina#o>')),
	'<https://josd.github.io/retina#p>'(S, O),
	writeq(S), nl, writeq(O), nl,
	writeq(ok), nl.
%-------------------------------------------------------- 20 issues_old_test0049
:-initialization(main).

main :-
	setof(t, true, Ls),
	writeq(Ls), nl,
	setof(tt, true, Ls2),
	writeq(Ls2), nl.
%-------------------------------------------------------- 21 issues_old_test0050
:-initialization(main).

main :-
	(between(1, 1000, _),
		assertz(hello(there)), false) ;
		setof(X, hello(X), Ls),
		writeq(Ls), nl.
%-------------------------------------------------------- 22 issues_old_test0051
:-initialization(main).

main :-
	a(b,c) =.. [_],
	halt.
main :-
	writeq(false), nl,
	div([-10,0],fois([-4,0],[1,0])) =.. [F,X,Y],
	writeq(F), nl,
	writeq(X), nl,
	writeq(Y), nl,
	writeq(ok), nl.
%-------------------------------------------------------- 23 issues_old_test0053
:-initialization(main).

main :-
	X1 =.. [1],
	writeq(X1), nl,
	X2 =.. [1,2,3],
	writeq(X2), nl.
%-------------------------------------------------------- 24 issues_old_test0058
:-initialization(main).

main :-
	0 =:= 0 mod 10^0,
	writeq(ok), nl.
%-------------------------------------------------------- 25 issues_old_test0060
:- use_module(library(iso_ext)).
:- initialization(main).

fill(0, []).
fill(Len, [L|T]) :-
    succ(L, Len),
    !,
    fill(L, T).

main :-
    findall(p(A),
        (   between(1, 10, I),
            fill(I, A)
        ),
        C
    ),
    writeq(C), nl.
%-------------------------------------------------------- 26 issues_old_test0061
:- initialization(main).

:- use_module(library(lists)).

main :-
    maplist(col([[1,2],[3,4]]), [1,2], X1),
    writeq(X1), nl,
    maplist(col([[A,2],[3,A]]), [1,2], X2),
	write_term(X2, [variable_names(['A'=A])]), nl,
	maplist(length, M, [2,2]), M = [[M11,M12],[M21,M22]],
	write_term(M, [quoted(true),variable_names(['M11'=M11, 'M12'=M12, 'M21'=M21, 'M22'=M22])]), nl,
    maplist(col(M), [1,2], X),
	write_term(X, [quoted(true),variable_names(['M11'=M11, 'M12'=M12, 'M21'=M21, 'M22'=M22])]), nl.

col(Matrix, N, Column) :-
    maplist(nth1(N), Matrix, Column).
%-------------------------------------------------------- 27 issues_old_test0062
:- initialization(main).
:- use_module(library(lists)).

main :-
    colors(Places),
    writeq(Places), nl.

colors(Places) :-
    findall(Place-_, neighbours(Place, _), Places),
    places(Places).

places([]).
places([Place-Color|Tail]) :-
    places(Tail),
    neighbours(Place, Neighbours),
    member(Color, [c1, c2, c3, c4]),
    \+ (member(Neighbour-Color, Tail), member(Neighbour, Neighbours)).

neighbours(p1, [p2, p5, p4, p3]).
neighbours(p2, [p1, p4, p3]).
neighbours(p3, [p5, p1, p4, p2]).
neighbours(p4, [p1, p2, p3]).
neighbours(p5, [p1, p3]).
%-------------------------------------------------------- 28 issues_old_test0063
:- initialization(main).

main :-
	a(X) =.. [Y|Z],
	write_term(Y, [quoted(true),variable_names(['X'=X])]), nl,
	write_term(Z, [quoted(true),variable_names(['X'=X])]), nl.
%-------------------------------------------------------- 29 issues_old_test0065
:- initialization(main).

:- use_module(library(lists)).

main :-
	setof(I, member(I, [A,B,B,A]), Set), Set = [S1,S2], write_term(Set, [quoted(true),variable_names(['S1'=S1, 'S2'=S2])]), nl,
	bagof(I, member(I, [A,B,B,A]), Bag), Bag = [B1,B2,B3,B4], write_term(Bag, [quoted(true),variable_names(['B1'=B1, 'B2'=B2, 'B3'=B3, 'B4'=B4])]), nl.
%-------------------------------------------------------- 30 issues_old_test0066
% Fast Fourier Transform
% Code from the book "Clause and Effect" Chapter 10

:- initialization(main).

main :-
    fft([0,1,2,3,4,5,6,7], X),
    writeq(X), nl.

fft(A, L) :-
    eval(p(A, w^0), X0, 8),
    eval(p(A, w^1), X1, 8),
    eval(p(A, w^2), X2, 8),
    eval(p(A, w^3), X3, 8),
    eval(p(A, w^4), X4, 8),
    eval(p(A, w^5), X5, 8),
    eval(p(A, w^6), X6, 8),
    eval(p(A, w^7), X7, 8),
    gen((X0;X1;X2;X3;X4;X5;X6;X7), []-L, _).

eval(p([I], _), a(I), _).
eval(p(L, V^P), A1+V^P*A2, N) :-
    alternate(L, L1, L2),
    P1 is (P*2) mod N,
    eval(p(L1, V^P1), A1, N),
    eval(p(L2, V^P1), A2, N).

alternate([], [], []).
alternate([A, B|T], [A|T1], [B|T2]) :-
    alternate(T, T1, T2).

% gen(InTree, ListOutFront-ListOutBack, NodeIndex)
gen(X+Y, L0-L3, A) :-
    !,
    gen(X, L0-L1, A1),
    gen(Y, L1-L2, A2),
    node(n(A, op(+, A1, A2)), L2-L3).
gen(X*Y, L0-L3, A) :-
    !,
    gen(X, L0-L1, A1),
    gen(Y, L1-L2, A2),
    node(n(A, op(*, A1, A2)), L2-L3).
gen((X;Y), L0-L2, _) :-
    !,
    gen(X, L0-L1, _),
    gen(Y, L1-L2, _).
gen(X, L0-L1, A) :-
    node(n(A, X), L0-L1).

% node(TryNode, OutDiffList)
node(n(1, N), []-[n(1, N)]) :-
    !.
node(N, L-L) :-
    memberchk(N, L),
    !.
node(n(A1, N1), [n(A, N)|T]-[n(A1, N1), n(A, N)|T]) :-
    A1 is A+1.
%-------------------------------------------------------- 31 issues_old_test0067
:- initialization(main).
:- use_module(library(lists)).

main :-
	prepare(List, A, B),
	write_term(List, [quoted(true),variable_names(['A'=A, 'B'=B])]), nl,
    sort(List, ListSorted),
	write_term(ListSorted, [quoted(true),variable_names(['A'=A, 'B'=B])]), nl.

prepare(List, A, B) :-
    append([A,B], [B,A], List).
%-------------------------------------------------------- 32 issues_old_test0068
:- initialization(main).

main :-
	prepare(List, X, Y, Z),
	write_term(List, [quoted(true),variable_names(['X'=X, 'Y'=Y, 'Z'=Z])]), nl,
    sort(List, ListSorted),
	write_term(ListSorted, [variable_names(['X'=X, 'Y'=Y, 'Z'=Z])]), nl.

prepare([B,A], X, Y, Z) :-
    A =.. [pair,2,X],
    B =.. [trio,3,Y,Z].
%-------------------------------------------------------- 33 issues_old_test0070
:- initialization(main).
:- use_module(library(lists)).

main :-
    maplist(compute, [[1,0,1,0,0,1],[1,0,1,1,1,1],[1,1,1,1,1,1],[]], OutTapes),
    writeq(OutTapes), nl.

% interpreter for Univeral Turing Machine

compute([], OutTape) :-
    start(I),
    find(I, [], #, [ ], OutTape).
compute([Head|Tail], OutTape) :-
    start(I),
    find(I, [], Head, Tail, OutTape).

find(State, Left, Cell, Right, OutTape) :-
    t(State, Cell, Write, Move, Next),
    move(Move, Left, Write, Right, A, B, C),
    continue(Next, A, B, C, OutTape).

continue(halt, Left, Cell, Right, OutTape) :-
    reverse(Left, R),
    append(R, [Cell|Right], OutTape).
continue(State, Left, Cell, Right, OutTape) :-
    find(State, Left, Cell, Right, OutTape).

move(l, [], Cell, Right, [], #, [Cell|Right]).
move(l, [Head|Tail], Cell, Right, Tail, Head, [Cell|Right]).
move(s, Left, Cell, Right, Left, Cell, Right).
move(r, Left, Cell, [], [Cell|Left], #, [] ).
move(r, Left, Cell, [Head|Tail], [Cell|Left], Head, Tail).

% a Turing machine to add 1 to a binary number

start(0).

t(0, 0, 0, r, 0).
t(0, 1, 1, r, 0).
t(0, #, #, l, 1).
t(1, 0, 1, s, halt).
t(1, 1, 0, l, 1).
t(1, #, 1, s, halt).
%-------------------------------------------------------- 34 issues_old_test0074
% Explanation-based learning uses an explicitly represented domain theory
% to construct an explanation of a training example, usually a proof that
% the example logically follows from the theory. By generalizing from the
% explanation of the instance, rather than from the instance itself,
% explanation-based learning filters noise, selects relevant aspects of
% experience, and organizes training data into a coherent structure.

:- initialization(main).
:- discontiguous(cup/1).

:- dynamic(cup/1).
:- dynamic(holds_liquid/1).
:- dynamic(liftable/1).
:- dynamic(light/1).
:- dynamic(small/1).
:- dynamic(part/2).
:- dynamic(owns/2).
:- dynamic(points_up/1).
:- dynamic(concave/1).
:- dynamic(color/2).
:- dynamic(made_of/2).

main :-
	ebl(cup(obj1), cup(_), Rule),
	write(Rule), nl.

% domain theory
cup(X) :-
	liftable(X),
	holds_liquid(X).

holds_liquid(Z) :-
	part(Z, W),
	concave(W),
	points_up(W).

liftable(Y) :-
	light(Y),
	part(Y, handle).

light(A):-
	small(A).
light(A):-
	made_of(A, feathers).

% training example
cup(obj1).
small(obj1).

part(obj1, bottom).
part(obj1, bowl).
part(obj1, handle).

owns(bob, obj1).

points_up(bowl).

concave(bowl).

color(obj1, red).

made_of(obj2, feathers).

% operational criteria
operational(small(_)).
operational(part(_, _)).
operational(owns(_, _)).
operational(points_up(_)).
operational(concave(_)).

% explanation-based learning
ebl(Goal, Gen_goal, (Gen_goal :- Premise)) :-
	ebl(Goal, Gen_goal, _, Gen_proof),
	extract_support(Gen_proof, Premise).

ebl((A, B), (GenA, GenB), (AProof, BProof), (GenAProof, GenBProof)) :-
    !,
	ebl(A, GenA, AProof, GenAProof),
	ebl(B, GenB, BProof, GenBProof).
ebl(A, GenA, A, GenA) :-
	clause(A, true).
ebl(A, GenA, (A :- Proof), (GenA :- GenProof)) :-
	clause(GenA, GenB),
	write(clause(GenA, GenB)), nl,
	copy_term(GenA-GenB, A-B),
	B \= true,
	ebl(B, GenB, Proof, GenProof).

extract_support(Proof, Proof) :-
	operational(Proof).
extract_support((A :- _), A) :-
	operational(A).
extract_support((AProof, BProof), (A, B)) :-
	extract_support(AProof, A),
	extract_support(BProof, B).
extract_support((_ :- Proof), B) :-
	extract_support(Proof, B).
%-------------------------------------------------------- 35 issues_old_test0088
:- initialization(main).

:- op(600, xfy, ::).
:- op(600,  fy, ::).

a::b.

X::Y :-
	X = c,
	Y = d.

main :- X::Y, writeq(['X=',X,'Y=',Y]), nl, fail.
main.
%-------------------------------------------------------- 36 issues_old_test0091
:- initialization(main).

foo :-
	bar,
	fail.

foo.

bar.


'$l_foo' :-
	'$l_bar',
	fail.

'$l_foo'.

'$l_bar'.

main :-
	'$l_foo',
	writeq(ok), nl.
%-------------------------------------------------------- 37 issues_old_test0093
:- initialization(main).

:- multifile(foo/1).
:- multifile('$bar'/1).

main :-
	foo(abc).
main :-
	'$bar'(xyz).
main :-
	write(ok), nl.
%-------------------------------------------------------- 38 issues_old_test0094
:- initialization(main).

'$l_foo' :-
	'$l_bar',
	'$l_baz'.

'$l_bar'.

'$l_baz'.

main :-
	'$l_bar',
	'$l_baz',
	'$l_foo',
	writeq(ok), nl.
%-------------------------------------------------------- 39 issues_old_test0108
%  Program 23.1  A program for solving equations from "The Art of Prolog"

:- initialization(main).
:- use_module(library(lists)).

:- op(40,xfx,\).
:- op(50,xfx,^).

main :-
    solve_equation(2^(2*x)-5*2^(x+1)+16 = 0,x,_=Z),
    write(Z), nl,
    Y is Z,
    write(Y), nl,
    fail.
main.

%equation(1,x^2-3*x+2=0,x).
%equation(2,cos(x)*(1-2*sin(x))=0,x).
%equation(3,2^(2*x)-5*2^(x+1)+16 = 0,x).

/*
    solve_equation(Equation,Unknown,Solution) :-
    Solution is a solution to the equation Equation
    in the unknown Unknown.
*/
solve_equation(A*B=0,X,Solution) :-
    !,
    factorize(A*B,X,Factors\[]),
    remove_duplicates(Factors,Factors1),
    solve_factors(Factors1,X,Solution).
solve_equation(Equation,X,Solution) :-
    single_occurrence(X,Equation),
    !,
    position(X,Equation,[Side|Position]),
    maneuver_sides(Side,Equation,Equation1),
    isolate(Position,Equation1,Solution).
solve_equation(Lhs=Rhs,X,Solution) :-
    polynomial(Lhs,X),
    polynomial(Rhs,X),
    !,
    polynomial_normal_form(Lhs-Rhs,X,PolyForm),
    solve_polynomial_equation(PolyForm,X,Solution).
solve_equation(Equation,X,Solution) :-
    offenders(Equation,X,Offenders),
    multiple(Offenders),
    homogenize(Equation,X,Equation1,X1),
    solve_equation(Equation1,X1,Solution1),
    solve_equation(Solution1,X,Solution).

/*  The factorization method

    factorize(Expression,Subterm,Factors) :-
    Factors is a difference-list consisting of the factors of
    the multiplicative term Expression that contains the Subterm.
*/
factorize(A*B,X,Factors\Rest) :-
    !, factorize(A,X,Factors\Factors1), factorize(B,X,Factors1\Rest).
factorize(C,X,[C|Factors]\Factors) :-
    subterm(X,C),  !.
factorize(_,_,Factors\Factors).

/*   solve_factors(Factors,Unknown,Solution) :-
     Solution is a solution of the equation Factor=0 in
     the Unknown for some Factor in the list of Factors.
*/
solve_factors([Factor|_],X,Solution) :-
    solve_equation(Factor=0,X,Solution).
solve_factors([_|Factors],X,Solution) :-
    solve_factors(Factors,X,Solution).

/*  The isolation method  */

maneuver_sides(1,Lhs = Rhs,Lhs = Rhs) :- !.
maneuver_sides(2,Lhs = Rhs,Rhs = Lhs) :- !.

isolate([N|Position],Equation,IsolatedEquation) :-
    isolax(N,Equation,Equation1),
    isolate(Position,Equation1,IsolatedEquation).
isolate([],Equation,Equation).

/* Axioms for Isolation	*/

isolax(1,-Lhs = Rhs,Lhs = -Rhs). % Unary minus

isolax(1,Term1+Term2 = Rhs,Term1 = Rhs-Term2). % Addition
isolax(2,Term1+Term2 = Rhs,Term2 = Rhs-Term1). % Addition

isolax(1,Term1-Term2 = Rhs,Term1 = Rhs+Term2). % Subtraction
isolax(2,Term1-Term2 = Rhs,Term2 = Term1-Rhs). % Subtraction

isolax(1,Term1*Term2 = Rhs,Term1 = Rhs/Term2) :- % Multiplication
    Term2 \== 0.
isolax(2,Term1*Term2 = Rhs,Term2 = Rhs/Term1) :- % Multiplication
    Term1 \== 0.

isolax(1,Term1/Term2 = Rhs,Term1 = Rhs*Term2) :- % Division
    Term2 \== 0.
isolax(2,Term1/Term2 = Rhs,Term2 = Term1/Rhs) :- % Division
    Rhs \== 0.

isolax(1,Term1^Term2 = Rhs,Term1 = Rhs^(-Term2)).     % Exponentiation $$$ ^
isolax(2,Term1^Term2 = Rhs,Term2 = log(Rhs)/log(Term1)). % Exponentiation

isolax(1,sin(U) = V,U = asin(V)).       % Sine
isolax(1,sin(U) = V,U = 180 - asin(V)). % Sine
isolax(1,cos(U) = V,U = acos(V)).       % Cosine
isolax(1,cos(U) = V,U = -acos(V)).			% Cosine

/*  The polynomial method	*/

polynomial(X,X) :- !.
polynomial(Term,_) :-
    atomic(Term), !.
polynomial(Term1+Term2,X) :-
    !, polynomial(Term1,X), polynomial(Term2,X).
polynomial(Term1-Term2,X) :-
    !, polynomial(Term1,X), polynomial(Term2,X).
polynomial(Term1*Term2,X) :-
    !, polynomial(Term1,X), polynomial(Term2,X).
polynomial(Term1/Term2,X) :-
    !, polynomial(Term1,X), atomic(Term2).
polynomial(Term ^ N,X) :-
    !, integer(N), N >= 0, polynomial(Term,X).

/*
   polynomial_normal_form(Expression,Term,PolyNormalForm) :-
   PolyNormalForm  is the polynomial normal form of the
   Expression, which is a polynomial in Term.
*/
polynomial_normal_form(Polynomial,X,NormalForm) :-
    polynomial_form(Polynomial,X,PolyForm),
    remove_zero_terms(PolyForm,NormalForm), !.

polynomial_form(X,X,[(1,1)]).
polynomial_form(X^N,X,[(1,N)]).
polynomial_form(Term1+Term2,X,PolyForm) :-
    polynomial_form(Term1,X,PolyForm1),
    polynomial_form(Term2,X,PolyForm2),
    add_polynomials(PolyForm1,PolyForm2,PolyForm).
polynomial_form(Term1-Term2,X,PolyForm) :-
    polynomial_form(Term1,X,PolyForm1),
    polynomial_form(Term2,X,PolyForm2),
    subtract_polynomials(PolyForm1,PolyForm2,PolyForm).
polynomial_form(Term1*Term2,X,PolyForm) :-
    polynomial_form(Term1,X,PolyForm1),
    polynomial_form(Term2,X,PolyForm2),
    multiply_polynomials(PolyForm1,PolyForm2,PolyForm).
polynomial_form(Term^N,X,PolyForm) :- !,
    polynomial_form(Term,X,PolyForm1),
    binomial(PolyForm1,N,PolyForm).
polynomial_form(Term,X,[(Term,0)]) :-
    free_of(X,Term), !.

remove_zero_terms([(0,_)|Poly],Poly1) :-
    !, remove_zero_terms(Poly,Poly1).
remove_zero_terms([(C,N)|Poly],[(C,N)|Poly1]) :-
    C \== 0, !, remove_zero_terms(Poly,Poly1).
remove_zero_terms([],[]).

/*  Polynomial manipulation routines		*/

/*  add_polynomials(Poly1,Poly2,Poly) :-
    Poly is the sum of Poly1 and Poly2, where
    Poly1, Poly2 and Poly are all in polynomial form.
*/
add_polynomials([],Poly,Poly) :- !.
add_polynomials(Poly,[],Poly) :- !.
add_polynomials([(Ai,Ni)|Poly1],[(Aj,Nj)|Poly2],[(Ai,Ni)|Poly]) :-
    Ni > Nj, !, add_polynomials(Poly1,[(Aj,Nj)|Poly2],Poly).
add_polynomials([(Ai,Ni)|Poly1],[(Aj,Nj)|Poly2],[(A,Ni)|Poly]) :-
    Ni =:= Nj, !, A is Ai+Aj, add_polynomials(Poly1,Poly2,Poly).
add_polynomials([(Ai,Ni)|Poly1],[(Aj,Nj)|Poly2],[(Aj,Nj)|Poly]) :-
    Ni < Nj, !, add_polynomials([(Ai,Ni)|Poly1],Poly2,Poly).

/*  subtract_polynomials(Poly1,Poly2,Poly) :-
    Poly is the difference of Poly1 and Poly2, where
    Poly1, Poly2 and Poly are all in polynomial form.
*/
subtract_polynomials(Poly1,Poly2,Poly) :-
    multiply_single(Poly2,(-1,0),Poly3),
    add_polynomials(Poly1,Poly3,Poly), !.

/*  multiply_single(Poly1,Monomial,Poly) :-
    Poly is the product of Poly1 and Monomial, where
    Poly1, and Poly are in polynomial form, and Monomial
    has the form (C,N) denoting the monomial C*X^N.
*/

multiply_single([(C1,N1)|Poly1],(C,N),[(C2,N2)|Poly]) :-
    C2 is C1*C, N2 is N1+N, multiply_single(Poly1,(C,N),Poly).
multiply_single([],_,[]).

/*  multiply_polynomials(Poly1,Poly2,Poly) :-
    Poly  is the product of Poly1 and Poly2, where
    Poly1, Poly2 and Poly are all in polynomial form.
*/
multiply_polynomials([(C,N)|Poly1],Poly2,Poly) :-
    multiply_single(Poly2,(C,N),Poly3),
    multiply_polynomials(Poly1,Poly2,Poly4),
    add_polynomials(Poly3,Poly4,Poly).
multiply_polynomials([],_,[]).

binomial(Poly,1,Poly).

/*   solve_polynomial_equation(Equation,Unknown,Solution) :-
     Solution  is a solution to the polynomial Equation
     in the unknown Unknown.
*/

solve_polynomial_equation(PolyEquation,X,X = -B/A) :-
    linear(PolyEquation), !,
    pad(PolyEquation,[(A,1),(B,0)]).
solve_polynomial_equation(PolyEquation,X,Solution) :-
    quadratic(PolyEquation), !,
    pad(PolyEquation,[(A,2),(B,1),(C,0)]),
    discriminant(A,B,C,Discriminant),
    root(X,A,B,C,Discriminant,Solution).

discriminant(A,B,C,D) :- D is B*B - 4*A*C.

root(X,A,B,_,0,X= -B/(2*A)).
root(X,A,B,_,D,X= (-B+sqrt(D))/(2*A)) :- D > 0.
root(X,A,B,_,D,X= (-B-sqrt(D))/(2*A)) :- D > 0.

pad([(C,N)|Poly],[(C,N)|Poly1]) :-
    !, pad(Poly,Poly1).
pad(Poly,[(0,_)|Poly1]) :-
    pad(Poly,Poly1).
pad([],[]).

linear([(_,1)|_]).

quadratic([(_,2)|_]).

/*  The homogenization method

    homogenize(Equation,X,Equation1,X1) :-
    The Equation in X is transformed to the polynomial
    Equation1 in X1 where X1 contains X.
*/
homogenize(Equation,X,Equation1,X1) :-
    offenders(Equation,X,Offenders),
    reduced_term(X,Offenders,Type,X1),
    rewrite(Offenders,Type,X1,Substitutions),
    substitute(Equation,Substitutions,Equation1).

/*  offenders(Equation,Unknown,Offenders)
    Offenders is the set of offenders of the equation in the Unknown  */

offenders(Equation,X,Offenders) :-
    parse(Equation,X,Offenders1\[]),
    remove_duplicates(Offenders1,Offenders),
    multiple(Offenders).

reduced_term(X,Offenders,Type,X1) :-
    classify(Offenders,X,Type),
    candidate(Type,Offenders,X,X1).

/*  Heuristics for exponential equations	*/

classify(Offenders,X,exponential) :-
    exponential_offenders(Offenders,X).

exponential_offenders([A^B|Offs],X) :-
    free_of(X,A), subterm(X,B), exponential_offenders(Offs,X).
exponential_offenders([],_).

candidate(exponential,Offenders,X,A^X) :-
    base(Offenders,A), polynomial_exponents(Offenders,X).

base([A^_|Offs],A) :- base(Offs,A).
base([],_).

polynomial_exponents([_^B|Offs],X) :-
    polynomial(B,X), polynomial_exponents(Offs,X).
polynomial_exponents([],_).

/*   Parsing the equation and making substitutions     */

/*  parse(Expression,Term,Offenders)
    Expression is traversed to produce the set of Offenders in Term,
    that is the non-algebraic subterms of Expression containing Term  */

parse(A+B,X,L1\L2) :-
    !, parse(A,X,L1\L3), parse(B,X,L3\L2).
parse(A*B,X,L1\L2) :-
    !, parse(A,X,L1\L3), parse(B,X,L3\L2).
parse(A-B,X,L1\L2) :-
    !, parse(A,X,L1\L3), parse(B,X,L3\L2).
parse(A=B,X,L1\L2) :-
    !, parse(A,X,L1\L3), parse(B,X,L3\L2).
parse(A^B,X,L) :-
    integer(B), !, parse(A,X,L).
parse(A,X,L\L) :-
    free_of(X,A), !.
parse(A,X,[A|L]\L) :-
    subterm(X,A), !.

/*     substitute(Equation,Substitutions,Equation1) :-
       Equation1 is the result of applying the list of
       Substitutions to Equation.
*/
substitute(A+B,Subs,NewA+NewB) :-
    !, substitute(A,Subs,NewA), substitute(B,Subs,NewB).
substitute(A*B,Subs,NewA*NewB) :-
    !, substitute(A,Subs,NewA), substitute(B,Subs,NewB).
substitute(A-B,Subs,NewA-NewB) :-
    !, substitute(A,Subs,NewA), substitute(B,Subs,NewB).
substitute(A=B,Subs,NewA=NewB) :-
    !, substitute(A,Subs,NewA), substitute(B,Subs,NewB).
substitute(A^B,Subs,NewA^B) :-
    integer(B), !, substitute(A,Subs,NewA).
substitute(A,Subs,B) :-
    member(A=B,Subs), !.
substitute(A,_,A).

/*  Finding homogenization rewrite rules	*/

rewrite([Off|Offs],Type,X1,[Off=Term|Rewrites]) :-
    homogenize_axiom(Type,Off,X1,Term),
    rewrite(Offs,Type,X1,Rewrites).
rewrite([],_,_,[]).

/*  Homogenization axioms	*/

homogenize_axiom(exponential,A^(N*X),A^X,(A^X)^N).
homogenize_axiom(exponential,A^(-X),A^X,1/(A^X)).
homogenize_axiom(exponential,A^(X+B),A^X,A^B*A^X).

/*	Utilities	*/

subterm(Term,Term).
subterm(Sub,Term) :-
    compound1(Term), functor(Term,_,N), subterm(N,Sub,Term).

subterm(N,Sub,Term) :-
    arg(N,Term,Arg), subterm(Sub,Arg).
subterm(N,Sub,Term) :-
    N > 0,
    N1 is N - 1,
    subterm(N1,Sub,Term).

position(Term,Term,[]) :- !.
position(Sub,Term,Path) :-
    compound1(Term), functor(Term,_,N), position(N,Sub,Term,Path), !.

position(N,Sub,Term,[N|Path]) :-
    arg(N,Term,Arg), position(Sub,Arg,Path).
position(N,Sub,Term,Path) :-
    N > 1, N1 is N-1, position(N1,Sub,Term,Path).


free_of(Subterm,Term) :-
    occurrence(Subterm,Term,N), !, N=0.

single_occurrence(Subterm,Term) :-
    occurrence(Subterm,Term,N), !, N=1.

occurrence(Term,Term,1) :- !.
occurrence(Sub,Term,N) :-
    compound1(Term), !, functor(Term,_,M), occurrence(M,Sub,Term,0,N).
occurrence(Sub,Term,0) :- Term \== Sub.

occurrence(M,Sub,Term,N1,N2) :-
    M > 0, !, arg(M,Term,Arg), occurrence(Sub,Arg,N), N3 is N+N1,
    M1 is M-1, occurrence(M1,Sub,Term,N3,N2).
occurrence(0,_,_,N,N).

multiple([_,_|_]).

remove_duplicates(Xs,Ys) :- no_doubles(Xs,Ys).

no_doubles([X|Xs],Ys) :-
    member(X,Xs), no_doubles(Xs,Ys).
no_doubles([X|Xs],[X|Ys]) :-
    mynonmember(X,Xs), no_doubles(Xs,Ys).
no_doubles([],[]).

mynonmember(X,[Y|Ys]) :- X \== Y, mynonmember(X,Ys).
mynonmember(_,[]).

compound1(Term) :- functor(Term,_,N),N > 0,!.
%-------------------------------------------------------- 40 issues_old_test0116
:- initialization(main).

main :-
    exponentiation((e,0),(0,pi),(A,B)),
    add((A,B),(1,0),(C,D)),
    C < 2.220446049250313e-16,
    D < 2.220446049250313e-16,
    write('[] = "PASS".'),
    nl.

exponentiation((A,B),(C,D),(E,F)) :-
    polar((A,B),(R,T)),
    E is R^C*exp(-D*T)*cos(D*log(R)+C*T),
    F is R^C*exp(-D*T)*sin(D*log(R)+C*T).

polar((X,Y),(R,Tp)) :-
    R is sqrt(X**2+Y**2),
    T is acos(abs(X)/R),
    angular(X,Y,T,Tp).

angular(X,Y,T,Tp) :-
    X >= 0,
    Y >= 0,
    Tp = T.
angular(X,Y,T,Tp) :-
    X < 0,
    Y >= 0,
    Tp is pi-T.
angular(X,Y,T,Tp) :-
    X < 0,
    Y < 0,
    Tp is T+pi.
angular(X,Y,T,Tp) :-
    X >= 0,
    Y < 0,
    Tp is 2*pi-T.

minus((X1,X2),(Y1,Y2)) :-
    Y1 is -X1,
    Y2 is -X2.

minus((X1,X2),(Y1,Y2),(Z1,Z2)) :-
    Z1 is X1-Y1,
    Z2 is X2-Y2.

add((X1,X2),(Y1,Y2),(Z1,Z2)) :-
    Z1 is X1+Y1,
    Z2 is X2+Y2.

times((X1,X2),(Y1,Y2),(Z1,Z2)) :-
    Z1 is X1*Y1-X2*Y2,
    Z2 is X1*Y2+X2*Y1.

inverse((X1,X2),(Y1,Y2)) :-
    Y1 is X1/(X1**2+X2**2),
    Y2 is -X2/(X1**2+X2**2).

divide(X,Y,Z) :-
    inverse(Y,Yp),
    times(X,Yp,Z).
%-------------------------------------------------------- 41 issues_old_test0132
% Diamond Property Equality
% DP(r) -: DP(re), i.e. the diamond property is preserved under reflexive closure
% original version at http://www.ii.uib.no/~bezem/GL/dpe.in

:- initialization(main).

:- op(1150,xfx,'-:').

:- dynamic('-:'/2).
:- dynamic(brake/0).
:- dynamic(label/1).
:- dynamic(goal/0).
:- dynamic(dom/1).
:- dynamic(e/2).
:- dynamic(r/2).
:- dynamic(re/2).
:- dynamic(not_e/2).
:- dynamic(not_r/2).
:- dynamic(not_re/2).

main :-
    % assuming the negation of the query so that it can be discharged when the query succeeds
    assertz((re(b,X) -: not_re(c,X))),
    assertz((re(c,X) -: not_re(b,X))),
    % query
    assertz((re(b,X),re(c,X) -: goal)),
    retina,
    retract((re(b,X) -: not_re(c,X))),
    retract((re(c,X) -: not_re(b,X))),
    write('true.'),
    nl.

dom(a).
dom(b).
dom(c).

re(a,b).
re(a,c).

% equality axioms
dom(X) -: e(X,X).

e(X,Y) -: e(Y,X).
not_e(Y,X) -: not_e(X,Y).

e(X,Y),re(Y,Z) -: re(X,Z).
not_re(X,Z),re(Y,Z) -: not_e(X,Y).
e(X,Y),not_re(X,Z) -: not_e(Y,Z).

% basic facts on re
e(X,Y) -: re(X,Y).
not_re(X,Y) -: not_e(X,Y).

r(X,Y) -: re(X,Y).
not_re(X,Y) -: not_r(X,Y).

re(X,Y),not_e(X,Y) -: r(X,Y).
not_r(X,Y),not_e(X,Y) -: not_re(X,Y).
re(X,Y),not_r(X,Y) -: e(X,Y).

% DP
r(X,Y),r(X,Z) -: dom(U),r(Y,U),r(Z,U).


% Retina to support controlled chaining

retina :-
    (   (Prem -: Conc),
        call(Prem),
        \+call(Conc),
        labelvars(Conc),
        (   Conc = goal
        ->  true
        ;   astep(Conc),
            retract(brake),
            fail
        )
    ;   brake,
        !
    ;   assertz(brake),
        retina
    ).

labelvars(Term) :-
    (   label(Current)
    ->  true
    ;   Current = 0
    ),
    numbervars(Term,Current,Next),
    retractall(label(_)),
    assertz(label(Next)).

astep((A,B)) :-
    asserta(A),
    !,
    astep(B).
astep(A) :-
    asserta(A).
%-------------------------------------------------------- 42 issues_old_test0246
:-initialization(main).

main :-
	call_nth(between(1,100,_), M), M =:= 50, write(M), nl.
%-------------------------------------------------------- 43 issues_old_test0252
:-initialization(main).

main :-
	write_term(Ö-Œ = s-t, [quoted(true),variable_names(['O'=Ö, 'E'=Œ])]), nl,
	write_term(Ö-Œ = s-t, [quoted(true),variable_names(['O'=Ö, 'E'=Œ])]), nl,
	writeq(-'Ö'-'Œ'+(.)+'A'), nl.
%-------------------------------------------------------- 44 issues_old_test0271
a(1).
a(2).
a(_) :- throw(e).

from_generator(Goal, Value, Optional) :-
	catch(Goal, Error, true),
	(	var(Error) ->
		Optional = optional(Value)
	;	Optional = empty, !
	).
from_generator(_, _, oops).

:-initialization(main).

main :-
	findall(Optional, from_generator(a(X), X, Optional), Optionals),
	write(Optionals), nl.

%-------------------------------------------------------- 45 issues_old_test0297
main :-
	A=A-A,
	term_variables([A,_X,_Y,_Z], L),
	write_term(L, [variable_names(['X'=_X, 'Y'=_Y, 'Z'=_Z])]), nl.

:- initialization(main).
%-------------------------------------------------------- 46 issues_old_test0368
main :-
	writeq((1*2)/(3*4)), nl,
	writeq(-(-a)), nl,
	writeq(-(1)), nl,
	writeq(-(-1)), nl,
	writeq(-(-(-a))), nl,
	writeq(-(-(1))), nl,
	writeq(-(-1- -1)), nl,
	writeq(-(-1- +1)), nl,
	writeq(-(-1- 1)), nl,
	writeq(-(-(-a))), nl,
	writeq(+(+1)), nl,
	writeq(+(+)), nl,
	writeq(-(-)), nl,
	writeq(-(-1- +a)), nl,
	writeq(-(-1- -a)), nl,
	true.

:- initialization(main).
%-------------------------------------------------------- 47 issues_old_test0518
main :-
	V1=V1-X1, W1=V1, unify_with_occurs_check(V1,W1), write(ok1), nl, fail.
main :-
	V2=V2-X2, W2=W2-X2, unify_with_occurs_check(V2,W2), write(ok2), nl, fail.
main :-
	V3=V3-X3, W3=W3-Y3, unify_with_occurs_check(V3,W3), write(ok3), nl, fail.
main :-
	V4=V4-X4, W4=W4-s(X4), \+ unify_with_occurs_check(V4,W4), write(ok4), nl, fail.
main :-
	V5=V5-X5, unify_with_occurs_check(V5,W5), write(ok5), nl, fail.
main :-
	\B1=A1, C1=[B1|A1], acyclic_term([C1,C1]), write(ok6), nl, fail.
main :-
	\D2=A2, C2=[B2|A2], \+ unify_with_occurs_check(B2,[C2|A2]), write(ok7), nl, fail.
main.

:- initialization(main).
%-------------------------------------------------------- 48 issues_old_test0545
main :-
	X = (:- (:- x0)),
	write(ok), nl.

:- initialization(main).
%-------------------------------------------------------- 49 issues_old_test0547
a :- .. = .. .
b :- ::.. .

:- initialization(listing).
%-------------------------------------------------------- 50 issues_old_test0601
main :-
	L=['3'|L],
	Es=['0'|L],
	writeq(L), nl,
	writeq(Es), nl.

:- initialization(main).
%-------------------------------------------------------- 51 issues_old_test0605
main :-
	F=f(F),
	L1=[L1],
	write(L1), nl,
	L2=[1|L2],
	write(L2), nl,
	L3=[L3|1],
	write(L3), nl,
	L4=[L4|L4],
	write(L4), nl,
	true.

:- initialization(main).
%-------------------------------------------------------- 52 issues_old_test0617
:- use_module(library(charsio)).
:- op(300,xfx,\\).

main :-
	read_from_chars("arg(1,(\\) \\\\ '', Y).", X),
	read_from_chars("arg(1,\\ \\\\ '', Y).", X).

:- initialization(main).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 53 issues_test0066
:- initialization(main).
:- use_module(library(freeze)).

main :-
	freeze(X, (X > 3, X < 5)),
	findall(X, between(1, 20, X), Xs),
	write(Xs), nl.

%------------------------------------------------------------ 54 issues_test0078
:-initialization(main).

main :-
	X0 is 1 mod 3,
	write(X0), nl,
	X1 is -1 mod 3,
	write(X1), nl,
	X2 is -1 mod -3,
	write(X2), nl,
	X3 is 1 mod -3,
	write(X3), nl,

	X4 is -2 mod 3,
	write(X4), nl,
	X5 is -2 mod -3,
	write(X5), nl,
	X6 is 2 mod -3,
	write(X6), nl,

	X7 is (1 << 150) mod (3 << 150),
	write(X7), nl,
	X8 is -(1 << 150) mod (3 << 150),
	write(X8), nl,
	X9 is -(1 << 150) mod -(3 << 150),
	write(X9), nl,
	X10 is (1 << 150) mod -(3 << 150),
	write(X10), nl,

	X11 is -5 mod -3,
	write(X11), nl,

	true.

%------------------------------------------------------------ 55 issues_test0096
:-initialization(main).

main :-
	L1=[a|(b|c)],
	L2=[a|(b,c)],
	L3=[a|(b;c)],
	write([L1,L2,L3]), nl,
	true.

%------------------------------------------------------------ 56 issues_test0114
:-initialization(main).

main :-
	sort([],L1),
	write(L1), nl,
	sort("",L2),
	write(L2), nl,
	L1 = L2,
	sort([c,b,a,' ',a,b,c],L3),
	write(L3), nl,
	sort("cba abc",L4),
	write(L4), nl,
	true.

%------------------------------------------------------------ 57 issues_test0143
:-initialization(main).

main :-
	append([a],[b],L1) =.. L1,
	([_] = [_|L2]) =.. L2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 58 issues_test0145
:-initialization(main).

main :-
	Z = ([[a|Z],X]=[X,[Y|Z]]),
	Z,
	write(Z), nl.

%------------------------------------------------------------ 59 issues_test0147
:-initialization(main).

main :-
	Y=(Y,b), Z=(Y,c), compare(<,Y,Z).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 60 issues_test0148
:-initialization(main).

main :-
	[L|L] == [L|L],
	[L|L] = [L|L].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 61 issues_test0149
% Goal driven Parallel Sequences -- Jos De Roo
% See background paper https://arxiv.org/pdf/2010.12027.pdf

% find paths in the state space from initial state to goal state within limits
'https://josd.github.io/pop#findpath'(_SCOPE,[Goal,Path,Duration,Cost,Belief,Comfort,Limits]) :-
    findpaths([],Goal,[],0.0,0.0,1.0,1.0,Path,Duration,Cost,Belief,Comfort,Limits).

findpaths(_Maps,Goal,Path,Duration,Cost,Belief,Comfort,Path,Duration,Cost,Belief,Comfort,_Limits) :-
    Goal,
    !.
findpaths(Maps_s,Goal,Path_s,Duration_s,Cost_s,Belief_s,Comfort_s,Path,Duration,Cost,Belief,Comfort,Limits) :-
    Limits = [MaxDuration,MaxCost,MinBelief,MinComfort,MaxStagecount],
    clause('https://josd.github.io/pop#description'(Map,[From,Transition,To,Action,Duration_n,Cost_n,Belief_n,Comfort_n]),Where),
    From,
    Where,
    'https://josd.github.io/pop#description'(Map,[From,Transition,To,Action,Duration_n,Cost_n,Belief_n,Comfort_n]),
    append(Maps_s,[Map],Maps_t),
    stagecount(Maps_t,Stagecount),
    Stagecount =< MaxStagecount,
    Duration_t is Duration_s+Duration_n,
    Duration_t =< MaxDuration,
    Cost_t is Cost_s+Cost_n,
    Cost_t =< MaxCost,
    Belief_t is Belief_s*Belief_n,
    Belief_t >= MinBelief,
    Comfort_t is Comfort_s*Comfort_n,
    Comfort_t >= MinComfort,
    append(Path_s,[Action],Path_t),
    becomes(From,To),
    call_cleanup(findpaths(Maps_t,Goal,Path_t,Duration_t,Cost_t,Belief_t,Comfort_t,Path,Duration,Cost,Belief,Comfort,Limits),becomes(To,From)).

% counting the number of stages (a stage is a sequence of steps in the same map)
stagecount([],1).
stagecount([C,E|_],B) :-
    C \= E,
    !,
    stagecount(_,G),
    B is G+1.
stagecount([_|D],B) :-
    stagecount(D,B).

% linear implication
becomes(A,B) :-
    catch(A,_,fail),
    conj_list(A,C),
    forall(member(D,C),retract(D)),
    conj_list(B,E),
    forall(member(F,E),assertz(F)).

conj_list(true,[]).
conj_list(A,[A]) :-
    A \= (_,_),
    A \= false,
    !.
conj_list((A,B),[A|C]) :-
    conj_list(B,C).

% test data
:- dynamic('https://josd.github.io/pop#description'/2).
:- dynamic('https://josd.github.io/pop#location'/2).

% partial map of Belgium
'https://josd.github.io/pop#description'(
    'http://example.org/ns#map_be',
    [   'https://josd.github.io/pop#location'(S,'http://example.org/ns#gent'),
        true,
        'https://josd.github.io/pop#location'(S,'http://example.org/ns#brugge'),
        'http://example.org/ns#drive_gent_brugge',
        1500.0,
        0.006,
        0.96,
        0.99
    ]
).
'https://josd.github.io/pop#description'(
    'http://example.org/ns#map_be',
    [   'https://josd.github.io/pop#location'(S,'http://example.org/ns#gent'),
        true,
        'https://josd.github.io/pop#location'(S,'http://example.org/ns#kortrijk'),
        'http://example.org/ns#drive_gent_kortrijk',
        1600.0,
        0.007,
        0.96,
        0.99
    ]
).
'https://josd.github.io/pop#description'(
    'http://example.org/ns#map_be',
    [   'https://josd.github.io/pop#location'(S,'http://example.org/ns#kortrijk'),
        true,
        'https://josd.github.io/pop#location'(S,'http://example.org/ns#brugge'),
        'http://example.org/ns#drive_kortrijk_brugge',
        1600.0,
        0.007,
        0.96,
        0.99
    ]
).
'https://josd.github.io/pop#description'(
    'http://example.org/ns#map_be',
    [   'https://josd.github.io/pop#location'(S,'http://example.org/ns#brugge'),
        true,
        'https://josd.github.io/pop#location'(S,'http://example.org/ns#oostende'),
        'http://example.org/ns#drive_brugge_oostende',
        900.0,
        0.004,
        0.98,
        1.0
    ]
).

% current state
'https://josd.github.io/pop#location'('http://example.org/ns#i1','http://example.org/ns#gent').

% query
query('https://josd.github.io/pop#findpath'(
    'http://example.org/ns#map_be',
    [   'https://josd.github.io/pop#location'(_SUBJECT,'http://example.org/ns#oostende'),
        _PATH,
        _DURATION,
        _COST,
        _BELIEF,
        _COMFORT,
        [5000.0,5.0,0.2,0.4,1]
    ]
)).

run :-
    query(Q),
    Q,
    writeq(Q),
    write('.\n'),
    fail;
    true.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this program (Jos De Roo's goal-driven parallel sequences) defines run/0 and never calls it (Trealla's runner passes -g run); the driver calls it once at load.
:- initialization(run).
%------------------------------------------------------------ 62 issues_test0150
:-initialization(main).

main :-
	list_to_set([1,3,2,3],Y),
	write(Y), nl.
%------------------------------------------------------------ 63 issues_test0153
:-initialization(main).

main :-
	[1,1,2,1,1,2|L1]=L1, [1,1,2|R1]=R1, L1=R1,
	[1,1,2,1,1,2|L2]=L2, [1,1,2|R2]=R2, L2==R2,
	true.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 64 issues_test0156
:-initialization(main).

main :-
	?=(a,a), write(here3), nl,
	unifiable(a,a,X2), write(here2), nl,
	unifiable(a,A,X1), write(here1), nl,
	true.
%------------------------------------------------------------ 65 issues_test0160
:-initialization(main).
:- use_module(library(when)).

main :-
	main1, main2, main3.

main1 :-
	NV1=nv1,
	when((nonvar(NV1) ; nonvar(NV2)), (write(ok1), nl)),
	write(here11), nl,
	NV2=nv2,
	write(here12), nl.

main2 :-
	NV1=nv1,
	when((nonvar(NV1) , nonvar(NV2)), (write(ok2), nl)),
	write(here21), nl,
	NV2=nv2,
	write(here22), nl.

main3 :-
	NV=nv,
	when(nonvar(NV), (write(ok3), nl)),
	write(here3), nl.
%------------------------------------------------------------ 66 issues_test0161
:- initialization(main).
:- use_module(library(freeze)).

main :-
	freeze(X,integer(X)), X=1, write(X), nl.
%------------------------------------------------------------ 67 issues_test0162
:-initialization(main).

leak2 :-
    findall(_, inner, _).

leak3 :-
    findall(_, inner2, _).

% calling inner/0 from the toplevel is fine
inner :-
    do_something("abcdefg")
    ; do_something("fooobarbaz").

% calling inner2/0 from the toplevel seems to leak "qux" (but not the other strings)?
inner2 :-
    do_something_else("abcdefg")
    ; do_something_else("fooobarbaz").

do_something(_).

do_something_else(X) :- X \= "qux".

main :-
	leak2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 68 issues_test0178
:-initialization(main).

isl({L},N) :- L = (_ is _+N).

run(Lim) :-
       	testmem(Lim,M,M1),
        !,
	member(Q,M1), \+member(Q,M),
	findall([_,_,Q3], member([_,_,Q3],M),F),
        length(F,Lf), write(Lf), nl, fail.

testmem(Lim,M,M1) :-
       	findall(Z,(between(1,Lim,N), isl({X}, N),
                   X = (Y is B+_), findall(Y,(between(1,3,B),X),Z)),
                M),
         M1 = [[2,3,3],[3,4,4],[4,5,5],[5,6,6],[6,7,7],[7,8,8]].

testmem(Lim) :-
       	findall(Z,(between(1,Lim,N), isl({X}, N),
                   X = (Y is B+_), findall(Y,(between(1,3,B),X),Z)),
                M),
	M1 = [[2,3,3],[3,4,4],[4,5,5],[5,6,6],[6,7,7],[7,8,8]],
	!,
	member(Q,M1), \+member(Q,M),
	findall([_,_,Q3], member([_,_,Q3],M),F),
        length(F,Lf), write(Lf), nl, fail.

% EndOfTestFile (end-of-test-gnu-file-dot-pl)

main :-
	run(5000);true.
%------------------------------------------------------------ 69 issues_test0179
:-initialization(main).

main :-
	A = [A|A],
	B = [B|B],
	A = B,
	write(here1), nl,
	A=[A].				% expected to fail
main :-
	write(here2), nl.
%------------------------------------------------------------ 70 issues_test0180
:-initialization(main).

main :-
	[X|Y] = [a,b,X|X],
	write(X), nl,
	write(Y), nl.
%------------------------------------------------------------ 71 issues_test0200
:-initialization(main).

main :-
	call_residue_vars((A=[A|B],B=[A,B|B],A=B, false),_Vs).
main.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 72 issues_test0203
:-initialization(main).

main :-
	B = a([B]), A = [a([B])], A = [a(A)],
	B = a([B]), A = [a(A)], A = [a([B])].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 73 issues_test0204
:-initialization(main).

f(g(a)).
f(g(b)).

main :-
	f(g(X)), write(X), nl, fail.
main.

%------------------------------------------------------------ 74 issues_test0205
:-initialization(main).

main :-
	A=B*[], B=B*[]*[], A=B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 75 issues_test0206
:-initialization(main).

main :-
	A=B*A,B=B*A*B,A=B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 76 issues_test0209
:-initialization(main).

ti(G_0, (A_0,B_0,C_0)) :-
   G_0 = (C_0,A_0,B_0),
   C_0 = unify_with_occurs_check(_,_),
   skel(A_0),
   skel(B_0),
   f(G_0).

f((unify_with_occurs_check(A,B),unify_with_occurs_check(A,[]*C),unify_with_occurs_check(C,B*_D))).

skel(unify_with_occurs_check(_,_*_)).

main :-
	ti(G_0,_),G_0.

main :-
	ti(_,R_0),R_0.

main.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 77 issues_test0210
:- initialization(main).
:- use_module(library(dif)).

main :-
	\+ (dif(A,B),A=[A|A],B=[B|B]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 78 issues_test0214
:-initialization(main).

main :-
	C=[],A=[A|C],B=[A|A],A=B.
main :-
	C=[],A=[A|C],B=[A|A],A==B.
main.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 79 issues_test0225
:-initialization(main).

main :-
	write_term(T,[variable_names(['Bad'=T]),variable_names(['Good'=T])]), nl.
%------------------------------------------------------------ 80 issues_test0268
:-initialization(main).

main :-
	portray_clause(A*B),portray_clause(AA*BB).
%------------------------------------------------------------ 81 issues_test0278
:-initialization(main).

main :-
	C = + +1, B = +B,
	C @< B,
	\+ (B @< C),
	true.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 82 issues_test0282
:-initialization(main).

main :-
	findall(X, (between(1,3,X) *-> true ; true), L),
	write(L), nl.
%------------------------------------------------------------ 83 issues_test0289
:-initialization(main).

explode :-
    findall(A-B, something(A, B), Xs),
    write(Xs), nl.

something(a, b).


main :-
	explode.
%------------------------------------------------------------ 84 issues_test0302
:-initialization(main).

:- dynamic(foo/1).

test :-
    clause(foo(_), Body),
    call(Body).

foo(bar).

main :-
	test.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 85 issues_test0309
:-initialization(main).

main :-
	\+ (A + B + C = (C*2) + (A*2) + (C*1*2), A=B, write(oops), nl), write(ok), nl,
	\+ (A1=B1*1, B1=B1*A1*A1, A1=B1, write(oops1), nl), write(ok1), nl, fail.
main.

%------------------------------------------------------------ 86 issues_test0316
:-initialization(main).

main :- A=B,A=B*1,A=1*1*1.
main :- A=B,A+B=B*1+B*A*B.
main :- \+ (A+B=B*1+B*A*B).
main :- A+B=B*1+B*A*B,A=B.
main :- A=B,B=B*A*A,A=B*1,A=B.
main :- B=B*A*A,A=B*1,A=B.
main :- A=B*1,B=B*A*A,A=B.
main :- write(ok), nl.

%------------------------------------------------------------ 87 issues_test0319
:-initialization(main).

main :- A=B,B=B*A*A,A=B*1,A=B.
main :- B=B*A*A,A=B*1,A=B.
main :- write(ok), nl.

%------------------------------------------------------------ 88 issues_test0320
:-initialization(main).

main :- A=B,C=A*1,A=B*A,B=B*C*A,A=B.
main :- C=A*1,A=B*A,B=B*C*A,A=B, A == B.
main :- C=A*1,A=B*A,B=B*C*A, A = B.
main :- write(ok), nl.

%------------------------------------------------------------ 89 issues_test0321
:-initialization(main).

main :- \+ (B=_*(A*B),A=B*B,A=B, write(ok1), nl).
main :- \+ (B=B*(A*B),A=B*B,A=B, write(ok2), nl).
main :- \+ (B=B*(A*B),A=B*B,A=B,A == B, write(ok3), nl).
main :- \+ (B+A+A=_*(A*B)+B*B+B, write(ok4), nl).
main :- \+ (B=B*(A*B),A=B*B,A=B,A == B, write(ok5), nl).
main :- write(done), nl.

%------------------------------------------------------------ 90 issues_test0325
:-initialization(main).

main :- A=B,A=B*1,B=B*A*B,A=B.
main :- A=B*1,B=B*A*B,A=B.
main :- write(ok), nl.

%------------------------------------------------------------ 91 issues_test0326
:-initialization(main).

main :- A=B,A=B*1,B=B*A*B,A=B.
main :- A=B*1,B=B*A*B,A=B.
main :- write(ok), nl.

%------------------------------------------------------------ 92 issues_test0328
:-initialization(main).

main :- A=B,A=A*1,B=B*B.
main :- A=A*1,B=B*B,A=B.
main :- write(ok), nl.

%------------------------------------------------------------ 93 issues_test0338
:- use_module(library(clpb)).
:- use_module(library(iso_ext)).
:- initialization(main).

% Issue #338: sat(X*Y + X*Z), labeling([X,Y,Z]) must report all three
% solutions (previously the first was missing).

main :-
	forall((sat(X*Y + X*Z), labeling([X,Y,Z])),
	       format("~w~n", [[X,Y,Z]])).
%------------------------------------------------------------ 94 issues_test0369
:- use_module(library(clpb)).
:- initialization(main).

main :-
	( sat(A+B), A=B -> format("A=~w B=~w~n", [A,B]) ; write('unexpected failure'), nl ).
%------------------------------------------------------------ 95 issues_test0392
:- use_module(library(dcgs)).
:- use_module(library(format)).
:- use_module(library(lists)).

str --> "e".
str --> "a", str.

run :-
  length(S,66000),
  phrase(str,S),
  format("~s~n",[S]).

:- initialization(run).
%------------------------------------------------------------ 96 issues_test0393
:- initialization(main).
:- use_module(library(dif)).

main :-
	dif(A,B), A=C*B, C = c, B = b,
	!,
	write(ok), nl.
main :-
	write(nok), nl.
%------------------------------------------------------------ 97 issues_test0394
:- use_module(library(dif)).

:- initialization(main).

ti(G=Rs) :-
   ti(EsG, EsRG, 3),
   ( G = EsG ; G = EsRG ),
   findall(R,(call_residue_vars(G,Vs),length(Vs,R)),Rs).

ti(EsG,(A,B,EDif),N) :-
   N>0,
   EDif = dif(_,_),
   EsG = (EDif,A,B),
   f(EsG).

f((dif(A,B),B=[]*[],A=[]*_)).

main :-
	findall(G-Rs, ti(G=Rs), L),
	term_variables(L, [A,B,C,D,E,F]),
	write_term(L, [variable_names(['A'=A, 'B'=B, 'C'=C, 'D'=D, 'E'=E, 'F'=F])]), nl.
%------------------------------------------------------------ 98 issues_test0400
:- initialization(main).
:- use_module(library(dif)).

main :- A=A*B,B=C*C,B=C,dif(A,B), write(nok1), nl.
main :- dif(A,B),A=A*B,B=C*C,B=C, write(nok2), nl.
main :- write(done), nl.
%------------------------------------------------------------ 99 issues_test0402
:- initialization(main).
:- use_module(library(dif)).

main :- dif(A,B),A=B*[],B=B*[]*[], write(nok1), nl.
main :- write(done), nl.
%----------------------------------------------------------- 100 issues_test0403
:- initialization(main).
:- use_module(library(dif)).

main :- A=A*C,B=A*A,dif(A,B),C=1, write(ok), nl, !.
main :- write(nok), nl.
%----------------------------------------------------------- 101 issues_test0404
:- initialization(main).
:- use_module(library(dif)).

main :- dif([],A),A=A*_*A, write(ok), nl.
%----------------------------------------------------------- 102 issues_test0405
:-initialization(main).

main :-
	 A=A*[],B=A*a*[], A\==B,
	write(ok), nl.
%----------------------------------------------------------- 103 issues_test0406
:- use_module(library(dif)).
:- initialization(main).

main :-
	dif(A,B),A=A*B,B=C*A*C,
	write(ok), nl.
%----------------------------------------------------------- 104 issues_test0409
:- use_module(library(dif)).
:- initialization(main).

main :-
	\+ (A=[]*B,B=C*D,D=C*C,A=B),
	\+ (A=[]*B,B=C*C*C,A=B),
	write(ok), nl.
%----------------------------------------------------------- 105 issues_test0410
:- use_module(library(dif)).
:- initialization(main).

main :-
	A=A*[],B=C*[],C=C*a,dif(A,B),
	write(ok), nl.
%----------------------------------------------------------- 106 issues_test0419
:- use_module(library(dif)).
:- initialization(main).

main :-
	portray_clause(c:t((dif(A,B),A=[]*C,B=[[]|D]),(A=[]*C,B=[[]|D],dif(A,B)))).
%----------------------------------------------------------- 107 issues_test0440
:- initialization(main).

main :-
	Y =.. [x,[Head|Y]],
	write_term(Y, [variable_names(['Head'=Head, 'Y'=Y])]), nl.
%----------------------------------------------------------- 108 issues_test0446
:- initialization(main).

main :-
	([c|Y1],b,a) = (X1,Y1), write({X1,Y1}),nl,
	{["c"|Y2],"b,a"} = {X2,Y2}, write((X2,Y2)),nl.


%----------------------------------------------------------- 109 issues_test0447
:- initialization(main).

main :-
	[X,Y] = [x,[X|Y]],
	write([X,Y]), nl.

%----------------------------------------------------------- 110 issues_test0541
:- initialization(main).
:- op(0,yfx,-).
:- op(0,fy,--).

main :-
	X = -(---(_A),-_B),
	Y = -(- --(_A),-_B),
	write_term([X,Y], [variable_names(['A'=_A, 'B'=_B])]), nl.
%----------------------------------------------------------- 111 issues_test0553
main :-
	arg(2,"foo",V),
	writeq(V), nl.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this program defines main/0 and never calls it (Trealla's runner passes -g main); the driver calls it and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%----------------------------------------------------------- 112 issues_test0554
:-initialization(main).

:- use_module(library(freeze)).

foo(1).
foo(20).
foo(1337).
foo(5).

highest(X) :-
    foo(X),
    freeze(Higher, Higher > X),
    \+ foo(Higher).

main :- highest(X), !, write(X), nl.
%----------------------------------------------------------- 113 issues_test0556
:-initialization(main).

main :-
	X = (-𝒶𝒶 + 𝒶𝒶),
	writeq(X), nl.
%----------------------------------------------------------- 114 issues_test0571
:-initialization(main).

% Traversing graph paths

'https://josd.github.io/cigol#oneway'('http://example.org/#paris','http://example.org/#orleans').
'https://josd.github.io/cigol#oneway'('http://example.org/#paris','http://example.org/#chartres').
'https://josd.github.io/cigol#oneway'('http://example.org/#paris','http://example.org/#amiens').
'https://josd.github.io/cigol#oneway'('http://example.org/#orleans','http://example.org/#blois').
'https://josd.github.io/cigol#oneway'('http://example.org/#orleans','http://example.org/#bourges').
'https://josd.github.io/cigol#oneway'('http://example.org/#blois','http://example.org/#tours').
'https://josd.github.io/cigol#oneway'('http://example.org/#chartres','http://example.org/#lemans').
'https://josd.github.io/cigol#oneway'('http://example.org/#lemans','http://example.org/#angers').
'https://josd.github.io/cigol#oneway'('http://example.org/#lemans','http://example.org/#tours').
'https://josd.github.io/cigol#oneway'('http://example.org/#angers','http://example.org/#nantes').

'https://josd.github.io/cigol#path'(A,B) :-
    'https://josd.github.io/cigol#oneway'(A,B).
'https://josd.github.io/cigol#path'(A,C) :-
    'https://josd.github.io/cigol#oneway'(A,B),
    'https://josd.github.io/cigol#path'(B,C).

% query
query('https://josd.github.io/cigol#path'(_City,'http://example.org/#nantes')).

main :-
    query(Q),
    Q,
    writeq(Q),
    write('.\n'),
    fail;
    true.
%----------------------------------------------------------- 115 issues_test0602
:- initialization(main).

hello(a).
hello(b).
hello(c).
test(ok).

main :-
	hello(X), test(Y), write([X,Y]), nl, fail; true.
%----------------------------------------------------------- 116 issues_test0627
:- initialization(main).

main :-
	sub_atom('не смог бы', P, _, Q, ' '),
	write([P,Q]), nl.
%----------------------------------------------------------- 117 issues_test0650
:- initialization(main).

a(1).
a(2).

test :- a(X), (write(X)->nl,!;xyz), fail.
test :- write(oops), nl.

main :- test.
main.
%----------------------------------------------------------- 118 issues_test0651
:- initialization(main).

main :-
     member(X,[true,\+true]),
     (   X ->
         write(here1),
         X
     ; \+X ->
         write(here2),
         (\+X; write(here3))
     ),
     write({X}), fail.
main :- nl.
%----------------------------------------------------------- 119 issues_test0660
:- initialization(main).

main :-
     member(X,[true,false]),
     ( member(X,[false,true,false]) *->
         write(here1)
     ; write(here2)
     ),
     write({X}), fail.
main :- nl.
%----------------------------------------------------------- 120 issues_test0667
:- initialization(main).
:- op(9,yf,.>).

main :-
	write(a.> .>), nl.
%----------------------------------------------------------- 121 issues_test0754
:- initialization(main).

main :-
	(atom_concat(A,A,aaa); true),
	atom_concat(A,A,aaaa), A=aa, write(A), nl.

%----------------------------------------------------------- 122 issues_test0759
:- initialization(main).

main :-
	A=[A|B],A=[B|A],false.
main.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%----------------------------------------------------------- 123 issues_test0763
:- initialization(main).

main :-
	number_chars(N, "0'").

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%----------------------------------------------------------- 124 issues_test0765
:- initialization(main).

main :-
	number_chars(N,"0'\n").

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%----------------------------------------------------------- 125 issues_test0766
:- initialization(main).

main :-
	number_chars(N0,"0'''"),
	write(N0), nl,
	number_chars(N1,"0''").
%----------------------------------------------------------- 126 issues_test0769
:- initialization(main).

main :-
	A=[A|C],B=[C|B],A=B,false.
main.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%----------------------------------------------------------- 127 issues_test0779
:- initialization(main).

main :-
	number_chars(N,"0'𝄞"), write(N), nl.
%----------------------------------------------------------- 128 issues_test0786
:- initialization(main).

main :-
	number_chars(N,"0'\\"),
	write(N), nl.
%----------------------------------------------------------- 129 issues_test0789
:- initialization(main).

main :-
	number_chars(N,"+9").

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%----------------------------------------------------------- 130 issues_test0798
:- initialization(main).

main :-
	number_chars(X, "0''"), write(X), nl.
%----------------------------------------------------------- 131 issues_test0805
:- initialization(main).

main :-
	\+ unify_with_occurs_check(L,[_|L]),
	\+ unify_with_occurs_check([_|L],L),
	write(ok), nl.
%----------------------------------------------------------- 132 issues_test0810
:- initialization(main).

main :-
	catch(number_chars(N,"'-\\\n3"), Err1, writeln(err1)),
	catch(number_chars(N,"'\\\n-3"), Err1, writeln(err2)),
	writeln(done).

%----------------------------------------------------------- 133 issues_test0827
:- initialization(main).

main :-
	atom_concat(G,_,abcdefgh), atom_concat(A,A,G),
	writeq([A,G]), nl,
	fail; true.
%----------------------------------------------------------- 134 issues_test0837
:- initialization(main).
:- op(699,xf,>.).
:- op(9,yf,.>).

main :-
	writeq(a>. >b), nl,
	writeq((a>.) >.), nl,
	writeq((a.>) .>), nl.
%----------------------------------------------------------- 135 issues_test0850
main :-
	X = (write(Y),nl), Y=1, X.

:- initialization(main).
%----------------------------------------------------------- 136 issues_test0855
% Issue #855: unification was exponential in a shared DAG (blam/1).
% Pair-memoization keeps L = K near-linear in N.
% Before the fix, N=28 was ~3s; after it is microseconds.

:- initialization(main).

blam([]).
blam([L|L]) :- blam(L).

main :-
	length(L, 28),
	length(K, 28),
	blam(L),
	blam(K),
	statistics(cputime, T0),
	(	L = K
	->	statistics(cputime, T1),
		D is T1 - T0,
		(	D < 0.5
		->	write(ok), nl
		;	write(too_slow), write(' '), write(D), nl
		)
	;	write(fail_unify), nl
	).
%----------------------------------------------------------- 137 issues_test0879
:- initialization(main).

main :-
	Z=[Z|[a|b]],
	write(Z), nl.
%----------------------------------------------------------- 138 issues_test0897
:- initialization(main).

main :-
	S = s(s(A,s(B,A)),1), T = s(s(C,C),1), \+ unify_with_occurs_check(S,T).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%----------------------------------------------------------- 139 issues_test0898
:- initialization(main).

main :-
	catch(call((true->false,1)), E, true), !, write(E), nl.
main :-
	write(nok), nl.
%----------------------------------------------------------- 140 issues_test0903
:- initialization(main).

main :-
	catch((number_chars(_,"0_%0"),fail), _, write(ok1)), nl,
	catch((number_chars(_,"0x0_/*b"),fail), _, write(ok2)), nl,
	number_chars(N3,"0_\n3"), write(N3), nl,
	number_chars(N4,"0x0_\n4"), write(N4), nl,
	catch((number_chars(_,"0x0_\n%1"),fail), _, write(ok5)), nl,
	number_chars(N6,"0_%\n6"), write(N6), nl,
	number_chars(N7,"0_/**/\n7"), write(N7), nl.

%----------------------------------------------------------- 141 issues_test0905
:- initialization(main).

main :-
	read_from_chars("%",T),
	write(T), nl.
%----------------------------------------------------------- 142 issues_test0910
:- initialization(main).

main :-
	catch((read_from_chars("[1\n(2)].",_),fail),_,true),
	%catch((read_from_chars("{1\"\"||_}.",_),fail),_,true),
	catch((read_from_chars("{! (1)}.",_),fail),_,true),
	write(ok), nl.
%----------------------------------------------------------- 143 issues_test0918
:- initialization(main).

main :-
	N = -0'\1\ ,
	write(N), nl.
%----------------------------------------------------------- 144 issues_test0921
:- initialization(main).

main :-
	term_singletons(a(_A,_B,_A), L),
	length(L, 1),
	write(ok), nl.

%----------------------------------------------------------- 145 issues_test0922
:- use_module(library(freeze)).
:- initialization(main).

main :-
	freeze(V,writeln(here)),
	findall(V,L=[V],L),
	L=[V2],
	V2=1.
%----------------------------------------------------------- 146 issues_test0986
:- initialization(main).

main :-
	X = (A - =<(1,2) ),
	write_term(X, [variable_names(['A'=A])]), nl.
%----------------------------------------------------------- 147 issues_test0989
% Issue #989: findall/3 could not represent a cyclic term in its queue -
% the clone has no frame slots to hang a cycle from, so it emitted a
% fresh variable where the back-edge was - and the collected term quietly
% stopped being cyclic. bagof/3, which is built on findall/3, then
% reported answers that looked plausible and were wrong.
%
% Collecting a cyclic term is now refused, which is the position
% library(builtins) already takes for bagof/3 and setof/3 via their
% acyclic_term(G) check.
%
% The culprit term is never printed: write/1 has no cycle detection.

:- initialization(main).

throws(Goal, Label) :-
	(  catch(Goal, error(type_error(acyclic_term, _), _), (writeln(Label), fail))
	-> format("FAIL ~w: no error~n", [Label])
	;  true
	).

main :-
	% the cycle is created inside the goal
	throws(findall(X1, X1=p(X1), _), findall_inside),

	% and when it already existed beforehand. This one used to come back
	% intact, by accident of the reference outliving the copy; it is
	% refused too rather than have findall/3 depend on which frame the
	% cycle happens to sit in.
	Y = p(Y),
	throws(findall(V, member(V,[Y]), _), findall_existing),

	% a cyclic list spine
	throws(findall(X2, X2=[a|X2], _), findall_list),

	% findnsols/4 collects through the same queue
	throws(findnsols(5, X3, X3=p(X3), _), findnsols),

	% the issue's own cases, via bagof/3
	throws(bagof(X4, Y4^member(Y4-X4,[X4-p(Y4)]), _), bagof_case1),
	throws(bagof(X5, Y5^(Y5-X5=X5-p(Y5)), _), bagof_case2),
	throws(bagof(X6, Y6^(Y6-X6=X6-p(q(Y6))), _), bagof_case3),

	% acyclic collecting is untouched
	findall(N, member(N,[a,b,c]), Ns),
	(  Ns == [a,b,c] -> writeln(acyclic_findall) ; writeln('FAIL acyclic findall') ),
	findall(A-B, (member(A,[1,2]), B=f(A)), Ps),
	(  Ps == [1-f(1), 2-f(2)] -> writeln(acyclic_compound) ; writeln('FAIL acyclic compound') ),
	bagof(C, member(C,[x,y]), Cs),
	(  Cs == [x,y] -> writeln(acyclic_bagof) ; writeln('FAIL acyclic bagof') ),
	findnsols(5, D, member(D,[p,q]), Ds),
	(  Ds == [p,q] -> writeln(acyclic_findnsols) ; writeln('FAIL acyclic findnsols') ).
%----------------------------------------------------------- 148 issues_test0992
:- initialization(main).

main :-
	T=f(X),write_term(T,[quoted(true),variable_names(['X'=X])]), nl,
	true.
%----------------------------------------------------------- 149 issues_test0993
:- initialization(main).

main :-
	between(0,5,D),Y=f(X),X=f(Z),write_term(D:Y,[max_depth(D),variable_names(['Z'=Z])]),nl,false.
main :-
	true.
%----------------------------------------------------------- 150 issues_test1002
:- initialization(main).

% copy_term/2 of a cyclic term is a cyclic term with as many variables
% as the original, not an acyclic unrolling of it with an invented
% variable standing for the back-reference (issue #1002). The cycle of
% cyclic/1 below goes through the callee's variable, which is the same
% variable as the caller's without being the same cell.

cyclic(X) :- X = f(g(X,_),_).
cyclic_ground_list(L) :- L = [a|L].
cyclic_partial_list(L) :- L = [_|L].

wrap(X, Y) :- copy_term(X, Y).

% Sharing is not a cycle, however much it looks like one from inside the
% copier: every activation of dag/2 builds its term out of the same cells
% of the same clause, and only the context tells the depths apart.

dag(0, x) :- !.
dag(N, f(T,T)) :- N1 is N-1, dag(N1, T).

same_vars_cyclic(X, Y) :-
	term_variables(X, XVs), length(XVs, N),
	term_variables(Y, YVs), length(YVs, N),
	\+ acyclic_term(Y).

main :-
	cyclic(A), wrap(A, A2),
	( same_vars_cyclic(A, A2), variant(A, A2) -> write(wrap-ok) ; write(wrap-fail) ), nl,
	cyclic_ground_list(G), copy_term(G, G2),
	( same_vars_cyclic(G, G2) -> write(glist-ok) ; write(glist-fail) ), nl,
	cyclic_partial_list(P), copy_term(P, P2),
	( same_vars_cyclic(P, P2) -> write(plist-ok) ; write(plist-fail) ), nl,
	dag(3, D), copy_term(D, D2),
	( acyclic_term(D2), variant(D, D2) -> write(dag-ok) ; write(dag-fail) ), nl,
	X = f(X), copy_term(X, Y),
	( \+ acyclic_term(Y) -> write(fx-ok) ; write(fx-fail) ), nl,
	halt.
%----------------------------------------------------------- 151 issues_test1005
:- initialization(main).

:- dynamic(foo/0).
foo.
foo:-bar.

main :-
	clause(foo, _, R),
	clause(H, B, R),
	write([H,B]), nl,
	fail.
main.

%----------------------------------------------------------- 152 issues_test1014
:- initialization(main).

main :-
	format("~`*t NICE TABLE ~`*t~61|~n", []),
	format("*~t~d~20|~t~d~t~40|~d~t~40|~t*~61|~n", [123,45,678]),
	true.
%----------------------------------------------------------- 153 issues_test1015
:- initialization(main).

main :-
	% Exact example from issue #1015
	format('~w~t~w~t~w~t~w~t~w~15|', [a,b,c,d,e]), nl,
	% Same example bracketed so the column-15 boundary is visible
	format('[~w~t~w~t~w~t~w~t~w~15|]', [a,b,c,d,e]), nl,
	% Evenly divisible (no remainder) still works
	format('[~w~t~w~t~w~t~w~t~w~17|]', [a,b,c,d,e]), nl,
	% Single tab
	format('[~w~t~w~10|]', [a,b]), nl,
	% Two tabs with remainder 1
	format('[~w~t~w~t~w~6|]', [a,b,c]), nl,
	% Column directive with no tabs
	format('[~w~w~10|x]', [a,b]), nl,
	true.
%----------------------------------------------------------- 154 issues_test1032
:- use_module(library(dif)).
:- initialization(main).

xmaplist_dif(_, _).
xmaplist_dif(X, [Y|Ys]) :-
	dif(X, Y),
	xmaplist_dif(X, Ys).

main :-
	findall(ok,
		(dif(V, X), dif(V, Xs), length(Xs, 7), xmaplist_dif(X, Xs)),
		Solutions),
	length(Solutions, 8),
	write(ok), nl,
	halt.
%----------------------------------------------------------- 155 issues_test1071
:- initialization(main).

% A quad may be labelled with a ground term identifying the query, so
% '?-' is an infix operator as well as a prefix one. The label is not a
% clause head: nothing is added to the database, and the answer
% description that follows is not loaded as a clause either.

member_1 ?- member(X, [1,2]).
   X = 1
;  X = 2.

member_2 ?- member(X, [1,2]).
   X = 1
;  X = 99.

main :-
	forall(current_op(P, T, ?-), (write(op(P,T)), nl)),
	write('(?-)/2: '),
	(	catch(predicate_property('?-'(_,_), _), _, fail)
	->	write(defined)
	;	write(undefined)
	),
	nl,
	use_module(library(quads)),
	run_quads.
%----------------------------------------------------------- 156 issues_test1084
:- initialization(main).

% Issue #1084: outputs/1 per disjunctive answer. call_nth(N) re-runs
% earlier branches, so only the suffix beyond the previous answer's
% captured output is matched.

17 ?- put_char(a) ; put_char(b).
   outputs("a")
;  outputs("b").

% Prior answers without outputs/1 still contribute to the prefix.
?- put_char(x) ; put_char(y).
   true
;  outputs("y").

main :-
	use_module(library(quads)),
	run_quads.
%----------------------------------------------------------- 157 issues_test1091
:-initialization(main).

% Issue #1091 / ISO Cor.3: when several variable_names/1 elements
% apply to the same (aliased) variable, the leftmost is used.

main :-
	Z = Y, Y = X, T = (X, Y, Z),
	write_term(T, [quoted(true), variable_names(['X'=X, 'Y'=Y, 'Z'=Z])]), nl,
	write_term(T, [quoted(true), variable_names(['Z'=Z, 'Y'=Y, 'X'=X])]), nl,
	write_term(T, [quoted(true), variable_names(['Y'=Y, 'X'=X, 'Z'=Z])]), nl,
	halt.
%----------------------------------------------------------- 158 issues_test1105
% Issue #1105: between/3 should handle bigints rather than throwing
% domain_error(small_integer_range).
%
% https://github.com/trealla-prolog/trealla/issues/1105

:- initialization(main).

t(N, G) :-
	(  catch(G, E, (format("~w: ERROR ~w~n", [N,E]), fail))
	-> format("~w: ok~n", [N])
	;  format("~w: FAILED~n", [N])
	).

offs(Lo, Hi, Base, L) :-
	findall(D, (between(Lo,Hi,V), D is V-Base), L).

main :-
	X is 4^4^4,
	NX is -X,
	Hi is X+3,
	NXHi is NX+2,
	Big is 2^70,
	NB1 is -(2^63)-1,
	NB2 is NB1+3,

	% the reported case
	t(issue,          between(X,X,X)),

	% checking a bound value (no enumeration)
	t(low_gt_high,    \+ between(Hi,X,_)),
	t(check_in,       (M is X+1, between(X,Hi,M))),
	t(check_out_hi,   \+ between(X,Hi,0)),
	t(check_out_lo,   (Y is X-1, \+ between(X,Hi,Y))),
	t(big_p3_small,   \+ between(1,10,X)),

	% enumeration with bigint bounds
	t(enum_det,       (offs(X,X,X,L1), L1 == [0])),
	t(enum_4,         (offs(X,Hi,X,L2), L2 == [0,1,2,3])),
	t(enum_neg,       (offs(NX,NXHi,NX,L3), L3 == [0,1,2])),
	t(small_lo_big_hi,(once(between(1,Big,V1)), V1 == 1)),

	% values that start big and demote to smallint
	t(demote,         (findall(V,between(NB1,NB2,V),L4), length(L4,4),
	                   last(L4,Last), Last is NB1+3)),

	% smallint path must be unaffected
	t(small_enum,     (findall(V,between(1,5,V),L5), L5 == [1,2,3,4,5])),
	t(small_det,      (findall(V,between(3,3,V),L6), L6 == [3])),
	t(small_neg,      (findall(V,between(-2,1,V),L7), L7 == [-2,-1,0,1])),
	t(small_cross,    (offs(-3,2,0,L8), L8 == [-3,-2,-1,0,1,2])),

	% errors are unchanged
	t(err_var,        catch((between(_,3,_),fail), error(instantiation_error,_), true)),
	t(err_type1,      catch((between(a,3,_),fail), error(type_error(integer,a),_), true)),
	t(err_type3,      catch((between(1,3,a),fail), error(type_error(integer,a),_), true)),

	true.
%----------------------------------------------------------- 159 issues_test1109
:- initialization(main).

burn(0) :- !.
burn(N) :-
	N1 is N - 1,
	burn(N1).

main :-
	statistics(cputime, T0),
	burn(1000000),
	statistics(cputime, T1),
	(   T1 > T0
	->  writeln(cpu_time_advances)
	;   writeln(cpu_time_stalled)
	).
%----------------------------------------------------------- 160 issues_test1110
% Issue #1110: \+ (true;1) should raise type_error(callable,(true;1))
% per ISO (matching scryer-prolog's
% error(type_error(callable,(true;1)),(;)/2)), not silently fail.
%
% \+/1 was missing the eager callable check that call/1 and once/1
% already perform on conjunction/disjunction/if-then/soft-cut bodies,
% in two separate code paths:
%   - the interpreted path: bif_iso_negation_1 in src/bif_control.c
%   - the compiled clause-body path: the g_negation_s case of
%     compile_term in src/compile.c (used when \+ appears in a stored
%     predicate body rather than a directive/query)
%
% https://github.com/trealla-prolog/trealla/issues/1110

:- initialization(main).

t(N, G) :-
	(  catch(G, E, (format("~w: ERROR ~w~n", [N,E]), fail))
	-> format("~w: ok~n", [N])
	;  format("~w: FAILED~n", [N])
	).

% These bodies are compiled inline at load time (a separate code path
% from a directive's \+), so they exercise src/compile.c specifically.
c_true_1 :- \+ (true;1).
c_1_true :- \+ (1;true).
c_fail_1 :- \+ (fail,1).
c_fail   :- \+ fail.
c_true   :- \+ true.
c_ff     :- \+ (fail;fail).
c_tf     :- \+ (true,fail).
c_exist  :- \+ (foo(1);bar(2)).

cyclic(X) :- X = f(g(X,_),_).

main :-
	% The reported case, interpreted (top-level \+).
	t(neg_true_1, catch((\+ (true;1), fail), error(type_error(callable,(true;1)),_), true)),

	% Mirror case: the non-callable term is the first disjunct instead
	% of the second. This one already worked before the fix (disjunction
	% checks its first branch eagerly on its own) -- kept as a guard
	% against a regression in that pre-existing behaviour.
	t(neg_1_true, catch((\+ (1;true), fail), error(type_error(callable,(1;true)),_), true)),

	% Same two cases, but compiled into a stored predicate body.
	t(compiled_true_1, catch((c_true_1, fail), error(type_error(callable,(true;1)),_), true)),
	t(compiled_1_true, catch((c_1_true, fail), error(type_error(callable,(1;true)),_), true)),
	t(compiled_fail_1, catch((c_fail_1, fail), error(type_error(callable,(fail,1)),_), true)),

	% Ordinary \+ usage must be unaffected by the extra check.
	t(ok_fail,  c_fail),
	t(ok_true,  \+ c_true),
	t(ok_ff,    c_ff),
	t(ok_tf,    c_tf),
	t(ok_exist, catch((c_exist, fail), error(existence_error(procedure,foo/1),_), true)),
	t(ok_member_neg, \+ member(z,[a,b,c])),
	t(ok_member_pos, \+ \+ member(b,[a,b,c])),

	% Regression guard: the eager check must validate a disposable
	% clone of the goal, not the live term -- otherwise cyclic data
	% passed through \+ gets corrupted. variant/2 is defined as
	% "\+ \+ (...)" in library/iso_ext.pl, so it exercises this
	% directly and is a realistic, commonly-used case.
	cyclic(A), copy_term(A, A2),
	t(variant_of_cyclic_term, variant(A, A2)),

	true.
%----------------------------------------------------------- 161 issues_test1112
% Issue #1112: statistics/2 should raise a domain error for an invalid key
% rather than silently failing.
%
% https://github.com/trealla-prolog/trealla/issues/1112

:- initialization(main).

t(N, G) :-
	(  catch(G, E, (format("~w: ERROR ~w~n", [N,E]), fail))
	-> format("~w: ok~n", [N])
	;  format("~w: FAILED~n", [N])
	).

main :-
	t(invalid_key,
	  catch((statistics(nonsense, _), fail),
	        error(domain_error(statistics_key, nonsense), _), true)),
	t(valid_key, statistics(runtime, [_Total,_SinceLast])),
	true.
%----------------------------------------------------------- 162 issues_test1118
:- initialization(main).

% Issue #1118: a query that writes and then fails. Each attempt runs
% the query once, so the capture holds what that one run wrote; the
% outcome 'none' used to be reached by running the query a second
% time, which wrote its output twice over.

?- put_char(a), false.
   outputs("a"), false.

% the workaround the issue reports, which has to keep working

?- put_char(a), false ; true.
   outputs("a").

% every branch of a failing query writes, and each does so once

?- put_char(a), false ; put_char(b), false.
   outputs("ab"), false.

% the same for a query that writes and then throws

?- put_char(a), atom_length(_, _).
   outputs("a"), instantiation_error.

main :- use_module(library(quads)), run_quads.
%----------------------------------------------------------- 163 issues_test1121
% Issue #1121: dif/2 misbehaved on cyclic (rational) terms whose cycle
% passes through more than one variable - a tail chain reaching a slot
% whose own head also refers back to that same slot. reinforce_goals's
% copy_term_nat/2 probe silently corrupted such terms (a dangling fresh
% variable in place of the far side of the cycle), so dif/2 either
% reported a wrong `false` or oscillated forever re-deriving the goal.

:- use_module(library(dif)).
:- initialization(main).

main :-
	(   dif(A, B), C=[[]|C], A=[C|D], D=[D|A], B=[C|A]
	->  write(query2_ok)
	;   write('FAIL query2: dif wrongly failed')
	), nl,

	(   C2=[[]|C2], A2=[C2|D2], D2=[D2|A2], B2=[C2|A2], dif(A2, B2)
	->  write(query3_ok)
	;   write('FAIL query3: dif wrongly failed')
	), nl,

	% still correctly fails when the cyclic terms really are equal
	(   \+ (C3=[[]|C3], A3=[C3|D3], D3=[D3|A3], dif(A3, A3))
	->  write(equal_case_still_fails_ok)
	;   write('FAIL: dif(X,X) succeeded for a cyclic term')
	), nl,

	% plain, non-cyclic dif/2 is untouched
	(   \+ dif(a, a), dif(a, b)
	->  write(noncyclic_ok)
	;   write('FAIL: plain dif/2 regressed')
	), nl,

	halt.
%----------------------------------------------------------- 164 issues_test1122
% Issue #1122: printing the toplevel answer bindings for
%     C=[[]|C],A=[C|D],D=[D|A],B=[C|A].
% looped forever on B specifically. print_iso_list()'s spine walk only
% detected a cycle back to *this* iteration's start, or to a node still
% on the C call stack; a spine needing 2+ hops to return to an earlier
% node (B->A->D->A->D->...) was never caught, so it just cycled A,D,A,D
% forever. Fixed with the tortoise-and-hare walk (term_next/3) already
% used by skip_max_list/6.

:- initialization(main).

writes_ok(Term, Label) :-
	(   with_output_to(string(_), write(Term))
	->  write(Label), nl
	;   format("FAIL ~w: write failed~n", [Label])
	).

main :-
	C=[[]|C], A=[C|D], D=[D|A], B=[C|A],
	writes_ok(C, c_ok),
	writes_ok(A, a_ok),
	writes_ok(D, d_ok),
	writes_ok(B, b_ok),
	halt.
%----------------------------------------------------------- 165 issues_test1126
% Issue #1126: cyclic comparison used independent "seen on the left/right"
% flags. Two unrelated cycles could therefore stop the walk early and make
% \==/2 report equal terms, causing a valid dif/2 constraint to fail.

:- use_module(library(dif)).
:- initialization(main).

nest(0, X, X).
nest(N, X, f(T)) :-
	N > 0,
	N2 is N - 1,
	nest(N2, X, T).

main :-
	(   dif(A, B), C=[[]|C], A=[C|B], B=[C|D], D=[D|D]
	->  write(dif_first_ok)
	;   write('FAIL: dif-first rational terms reported equal')
	), nl,

	(   C2=[[]|C2], A2=[C2|B2], B2=[C2|D2], D2=[D2|D2], dif(A2, B2)
	->  write(dif_last_ok)
	;   write('FAIL: dif-last rational terms reported equal')
	), nl,

	(   X=f(X), Y=f(f(Y)), X == Y
	->  write(equivalent_cycles_ok)
	;   write('FAIL: equivalent rational terms reported different')
	), nl,

	(   X2=f(X2), Y2=f(g(Y2)), X2 \== Y2
	->  write(distinct_cycles_ok)
	;   write('FAIL: distinct rational terms reported equal')
	), nl,

	(   nest(64, a, NA), nest(64, b, NB), NA \== NB
	->  write(deep_terms_ok)
	;   write('FAIL: deep terms reported equal')
	), nl,

	halt.
%----------------------------------------------------------- 166 issues_test1132
% Issue #1132: max_arity is unbounded, but the actual procedure/database
% arity limit is exposed as max_procedure_arity. Exceeding it must throw
% representation_error(max_procedure_arity), not representation_error(max_arity).

:- initialization(main).

main :-
	check(max_arity_flag, current_prolog_flag(max_arity, unbounded)),
	check(max_procedure_arity_flag, (current_prolog_flag(max_procedure_arity, M), M == 255)),
	check(asserta_at_limit, at_limit_ok),
	check(asserta_over_limit, asserta_over_limit_error),
	check(assertz_over_limit, assertz_over_limit_error),
	check(abolish_over_limit, abolish_over_limit_error),
	halt.

at_limit_ok :-
	functor(T, f, 255),
	asserta(T),
	retract(T).

asserta_over_limit_error :-
	current_prolog_flag(max_procedure_arity, M),
	A is M + 1,
	functor(T, f, A),
	catch(asserta(T), error(representation_error(max_procedure_arity), asserta/1), true).

assertz_over_limit_error :-
	current_prolog_flag(max_procedure_arity, M),
	A is M + 1,
	functor(T, f, A),
	catch(assertz(T), error(representation_error(max_procedure_arity), assertz/1), true).

abolish_over_limit_error :-
	current_prolog_flag(max_procedure_arity, M),
	A is M + 1,
	catch(abolish(f/A), error(representation_error(max_procedure_arity), abolish/1), true).

check(Name, Goal) :-
	(   call(Goal)
	->  write(Name), write('_ok'), nl
	;   write('FAIL: '), write(Name), nl
	).
%----------------------------------------------------------- 167 issues_test1136
% Issue #1136: copying a variable to an atomic term bound the source
% variable instead of unifying a fresh copy with the destination.

:- initialization(main).

main :-
	check(copy_term_variable, (copy_term(X, 3), var(X))),
	check(copy_term_nat_variable, (copy_term_nat(X, 3), var(X))),
	check(duplicate_term_variable, (duplicate_term(X, 3), var(X))),
	check(compound_source, (copy_term(f(X), f(3)), var(X))),
	check(atomic_source, (copy_term(3, X), X == 3)),
	check(compound_atomic_mismatch, \+ copy_term(f(_), 3)),
	halt.

check(Name, Goal) :-
	(   call(Goal)
	->  write(Name), write('_ok'), nl
	;   write('FAIL: '), write(Name), nl
	).
%----------------------------------------------------------- 168 issues_test1137
% Issue #1137: write_term/2 with ignore_ops(true) went through the
% canonical writer, which also forced quoted(true).

:- initialization(main).

main :-
	show(write_term(., [ignore_ops(true)])),
	show(write_term('.', [ignore_ops(true)])),
	show(write_term('.', [ignore_ops(true), quoted(true)])),
	show(write_term('.', [ignore_ops(true), quoted(false)])),
	show(write_canonical(.)),
	show(write_term('a b', [ignore_ops(true)])),
	show(write_term('a b', [ignore_ops(true), quoted(true)])),
	show(write_term(1+2*3, [ignore_ops(true)])),
	show(write_term([a,b|c], [ignore_ops(true)])),
	show(write_term({a}, [ignore_ops(true)])).

show(Goal) :-
	call(Goal),
	nl.
%----------------------------------------------------------- 169 issues_test1139
% Issue #1139: writing a list whose chars-list tail follows a
% non-char element (a variable, an integer, ...) spliced the string
% suffix one element too late - eg. [a,b,c,D,e,f,g] printed as
% [a,b,c,D,e|"fg"] instead of [a,b,c,D|"efg"]. The tail-to-string
% check was gated on the *current* element being a char, when it
% should only depend on whether the remaining tail is a full chars
% list.

:- initialization(main).

show(T) :- write_term(T, [double_quotes(true)]), nl.

main :-
	show([a,b,c,D,e,f,g]),
	show([D2,e,f,g]),
	show([D3,D4,e,f]),
	show([a,b,c]),
	show([a,b,c,D5,e]),
	show([1,2,3,a,b,c]).
%----------------------------------------------------------- 170 issues_test1140
% Issue #1140: an overflowing float literal raised a syntax error.
%
% 9.9e999 is syntactically perfect prolog, so 8.16.7.3 e cannot apply.
% What it exceeds is an implementation defined limit, which 8.12.2 f
% covers as a representation error. stc#74 names it max_float.
%
% The parser sets error_type alongside error_desc (as the invalid-UTF8
% case from #1099 already did); read_term honoured error_type already,
% number_chars/2 and number_codes/2 hardcoded syntax_error.
%
% Which limit is breached depends on the sign, the same way min_integer
% and max_integer differ, so a negative literal gives min_float.
%
% https://github.com/trealla-prolog/trealla/issues/1140

:- initialization(main).

t(N, G) :-
	(  catch(G, E, (format("~w: ~q~n", [N,E]), fail))
	-> format("~w: no error~n", [N])
	;  true
	).

r(N, Text) :-
	t(N, (	read_term_from_atom(Text, T, []),
		format("~w: read ~q~n", [N,T])
	)).

main :-
	t(chars_pos,   number_chars(_, ['9','.','9','e','9','9','9'])),
	t(chars_neg,   number_chars(_, ['-','9','.','9','e','9','9','9'])),
	t(codes_pos,   number_codes(_, [0'9,0'.,0'9,0'e,0'9,0'9,0'9])),
	t(atom_number, atom_number('9.9e999', _)),
	r(read_term,   '9.9e999'),
	r(read_nested, 'f(9.9e999)'),
	r(read_neg,    '-9.9e999'),

	% 6.3.1.2 allows layout between the sign and the number token, so
	% '- 9.9e999' is a negative constant, not -(9.9e999). The plus is
	% not a sign though, so there the constant stays positive.

	r(read_spaced_neg, '- 9.9e999'),
	r(read_pos_sign,   '+9.9e999'),
	r(read_spaced_pos, '+ 9.9e999'),

	% Neighbouring cases that must keep their current answers.

	t(underflow,   (number_chars(N1, ['9','.','9','e','-','9','9','9']),
			format("underflow: ~w~n", [N1]))),
	t(in_range,    (number_chars(N2, ['1','.','5','e','3']),
			format("in_range: ~w~n", [N2]))),
	t(bad_syntax,  number_chars(_, ['9','.','9','e','e'])),
	t(not_a_num,   number_chars(_, [a,b,c])).
%----------------------------------------------------------- 171 issues_test1142
% Issue #1142: a --> rule produced by term_expansion/2 was asserted raw
% as a fact for '-->'/2 instead of being translated.
%
% tokenize() translates grammar rules ahead of the expansion hook, so a
% --> term coming back OUT of the hook had already sailed past that
% branch. It now gets translated on the re-parse of the hook's result,
% which is still ahead of assign_vars() - the order dcg_expand_clause()
% requires. SWI and Scryer both translate hook output.
%
% https://github.com/trealla-prolog/trealla/issues/1142

term_expansion(mk_scalar, (scalar(X) --> [X])).

term_expansion(mk_list, [ (digits([D|Ds]) --> digit(D), digits(Ds)),
                          (digits([D])    --> digit(D)),
                          (digit(D)       --> [D], { memberchk(D, [zero,one]) }),
                          plain_fact,
                          (plain_rule :- plain_fact) ]).

% the hook's output may itself call phrase/2, which goal expansion
% rewrites - the S0/S threading has to survive that
term_expansion(mk_ge, [ (inner --> [i]),
                        (drive(L) :- phrase(inner, L)) ]).

mk_scalar.
mk_list.
mk_ge.

% a hand-written rule must still work alongside
handwritten --> [h].

:- initialization(main).

main :-
	check(scalar, phrase(scalar(a), [a])),
	check(list_recursive, (phrase(digits(L), [one,zero,one]), L == [one,zero,one])),
	check(list_reject, \+ phrase(digits(_), [one,nine])),
	check(list_fact, plain_fact),
	check(list_rule, plain_rule),
	check(goal_expansion, drive([i])),
	check(handwritten, phrase(handwritten, [h])),
	% pre-fix this was asserted as a fact for '-->'/2, so the raw
	% call succeeded; it must not now
	check(no_dcg_fact, \+ catch('-->'(scalar(a), [a]), _, fail)).

check(Name, Goal) :-
	(   catch(Goal, E, (format("~w threw ~q~n", [Name,E]), fail))
	->  format("~w ok~n", [Name])
	;   format("~w FAILED~n", [Name])
	).
%----------------------------------------------------------- 172 issues_test1143
% Issue #1143: Name//Arity in a use_module/2 import list was ignored.
%
% module/2 export lists already translate a non-terminal indicator to
% Name/(Arity+2); import lists only matched '/', so p//1 found no
% predicate and use_module/2 silently imported nothing.
%
% https://github.com/trealla-prolog/trealla/issues/1143

:- module(t1143_gram, [p//1, plain/1]).

p(X) --> [X].

plain(ok).

:- module(t1143_use, []).

:- use_module(t1143_gram, [p//1]).
:- use_module(t1143_gram, [p//1 as q]).
:- use_module(t1143_gram, [p//1 as r//1]).
:- use_module(t1143_gram, [plain/1]).
:- use_module(t1143_gram, [plain/1 as plain2]).

:- initialization(main).

main :-
	check(dcg_import, current_predicate(p/3)),
	check(dcg_call, phrase(p(a), [a], [])),
	check(dcg_as_atom, (current_predicate(q/3), phrase(q(b), [b], []))),
	check(dcg_as_pi, (current_predicate(r/3), phrase(r(c), [c], []))),
	check(plain_import, (current_predicate(plain/1), plain(ok))),
	check(plain_as, (current_predicate(plain2/1), plain2(ok))).

check(Name, Goal) :-
	(   catch(Goal, E, (format("~w threw ~q~n", [Name,E]), fail))
	->  format("~w ok~n", [Name])
	;   format("~w FAILED~n", [Name])
	).
%----------------------------------------------------------- 173 issues_test1149
% Issue #1149: must_be(predicate_indicator, PI) accepted anything.
%
% predicate_indicator was not one of the types must_be/2 knows, and an
% unknown type simply succeeds - so a partial indicator and a negative
% arity both passed the check.
%
% https://github.com/trealla-prolog/trealla/issues/1149

:- initialization(main).

main :-
	check(must_be(predicate_indicator, _/_)),
	check(must_be(predicate_indicator, p/_)),
	check(must_be(predicate_indicator, _/3)),
	check(must_be(predicate_indicator, p/3)),
	check(must_be(predicate_indicator, p/0)),
	check(must_be(predicate_indicator, p/(-3))),
	check(must_be(predicate_indicator, p/a)),
	check(must_be(predicate_indicator, 1/3)),
	check(must_be(predicate_indicator, f(a)/3)),
	check(must_be(predicate_indicator, foo)),

	% a wrong part outranks a missing one

	check(must_be(predicate_indicator, _/(-3))),

	% can_be/2 accepts what a substitution could still complete

	check(can_be(predicate_indicator, _)),
	check(can_be(predicate_indicator, _/_)),
	check(can_be(predicate_indicator, p/3)),
	check(can_be(predicate_indicator, p/(-3))),
	check(can_be(predicate_indicator, foo)),

	% the four-argument forms name the caller in the error

	check(must_be(p/3, predicate_indicator, foo/1, _)),
	check(must_be(p/(-3), predicate_indicator, foo/1, _)),
	check(can_be(p/(-3), predicate_indicator, foo/1, _)).

check(Goal) :-
	(	catch(Goal, E, true)
	->	(	var(E)
		->	show(Goal, ok)
		;	show(Goal, threw(E))
		)
	;	show(Goal, failed)
	).

% The goal and its outcome are numbervar'd together, so the report says
% which variable is which without depending on the numbers this run
% happened to hand out.

show(Goal, Outcome) :-
	copy_term(Goal-Outcome, G-O),
	numbervars(G-O, 0, _),
	format("~q ~q~n", [G,O]).
%----------------------------------------------------------- 174 issues_test1150
% Issue #1150: must_be/2 and can_be/2 accepted any type.
%
% A type neither builtin knows fell through every check and succeeded,
% where it should be a type_error(type, Type).
%
% https://github.com/trealla-prolog/trealla/issues/1150

:- initialization(main).

main :-
	check(must_be(nontype, 0)),
	check(can_be(nontype, 0)),

	% the type is checked before the term

	check(must_be(nontype, _)),
	check(can_be(nontype, _)),

	check(must_be(1, 0)),
	check(can_be(1, 0)),
	check(must_be(integer(x), a)),
	check(can_be(integer(x), a)),
	check(must_be(list(nontype), [a])),
	check(must_be(_, 0)),
	check(can_be(_, 0)),
	check(must_be(list(_), [a])),

	% known types behave as before

	check(must_be(integer, 0)),
	check(must_be(integer, a)),
	check(can_be(integer, _)),
	check(must_be(list(integer), [1])),
	check(must_be(list(integer), [a])),
	check(must_be(list(list(integer)), [[1]])),
	check(can_be(list(integer), [1])),

	% assoc is a builtin type, as library(assoc) relies on it

	check(must_be(assoc, t)),
	check(must_be(assoc, t(k,v,<,t,t))),
	check(must_be(assoc, t(k,v))),
	check(must_be(assoc, foo)),
	check(must_be(assoc, 1)),
	check(can_be(assoc, _)),
	check(can_be(assoc, t)),
	check(can_be(assoc, foo)).

check(Goal) :-
	(	catch(Goal, E, true)
	->	(	var(E)
		->	show(Goal, ok)
		;	show(Goal, threw(E))
		)
	;	show(Goal, failed)
	).

show(Goal, Outcome) :-
	copy_term(Goal-Outcome, G-O),
	numbervars(G-O, 0, _),
	format("~q ~q~n", [G,O]).
%----------------------------------------------------------- 175 issues_test1151
% Issue #1151: check_pressure() shrank q->slots to fit only the current sp, ignoring choicepoints that still needed slots far above it.
%
% https://github.com/trealla-prolog/trealla-prolog/issues/1151

:- initialization(main).

deep3(0, G) :- !, G.
deep3(N, G) :- M is N - 1, catch(deep3(M, G), -, true).

main :-
	(   between(1, 3, _), deep3(100000, true), fail
	;   true
	),
	format("ok~n", []).
%----------------------------------------------------------- 176 issues_test1152
% Issue #1152: a throw/1 ball unwinding through many nested catch/3
% frames could be mistaken for the interpreter's own internal
% $abort/unwind control-throw, aborting the whole query instead of
% reaching the outer catcher.
%
% find_exception_handler() peeked at the cell right after the ball to
% check for those sentinels, a check only valid for the error(Sentinel,
% Context) shape throw_error3() itself produces. A bare user ball like
% throw(bar) has no such cell, so the peek read whatever heap memory
% happened to follow it - and deep enough recursion made that memory
% spell out "$abort" often enough to reproduce.
%
% https://github.com/trealla-prolog/trealla-prolog/issues/1152

:- initialization(main).

deep(0, G) :- !, call(G).
deep(N, G) :- M is N - 1, catch(deep(M, G), foo, true).

main :-
	(   catch(deep(5000, throw(bar)), Ball, true)
	->  format("caught ~q~n", [Ball])
	;   format("failed~n", [])
	).
%------------------------------------------------------- 177 misc_db_concurrency
% Concurrent database access across real threads.
%
% thread_create/3 shares the database, so two threads asserting and
% retracting the same dynamic predicate while a third walks it is an
% ordinary thing to write - and it segfaulted, reliably. Six runs in ten
% for the simple case, and it predated GUSTTO entirely.
%
% Three separate paths mutated a predicate's index skiplists, and no two
% of them excluded each other:
%
%   - assert/retract, under prolog_lock()
%   - the dirty-list purge in leave_predicate(), under module_lock() -
%     a different lock, so no mutual exclusion at all
%   - query_purge_dirty_list() at query teardown, which for a thread
%     means at join, under no lock
%
% There was also a check-then-act window that no amount of locking one
% side would close: leave_predicate() decremented the reader refcount,
% saw zero, and concluded it was safe to free - but a reader could take
% a fresh handle in that gap and start descending an index the purge was
% already tearing down. The refcount is atomic; the *conclusion drawn
% from it* was not, so enter and leave have to serialise against each
% other rather than merely count.
%
% Deliberately modest counts: enough to have caught the original in
% testing, not enough to dominate the suite. The assertion is only that
% it completes - what is being tested is that it does not crash.

:- initialization(main).

:- dynamic(shared/2).

writer(Tag) :-
	forall(between(1,800,I),
		(	assertz(shared(Tag,I)),
			(	0 is I mod 2
			->	( retract(shared(Tag,_)) -> true ; true )
			;	true
			),
			(	0 is I mod 7
			->	( retract(shared(_,_)) -> true ; true )
			;	true
			)
		)).

reader :-
	forall(between(1,800,_),
		( findall(X-Y, shared(X,Y), L), length(L,_) )).

main :-
	findall(T,
		(	member(G, [writer(a),writer(b),writer(c),reader,reader,writer(d)]),
			thread_create(G, T, [])
		), Ts),
	forall(member(T,Ts), thread_join(T,_)),
	format("db_concurrency: ok~n").
%------------------------------------------------------ 178 misc_db_purge_window
% The lock in leave_predicate() has to span the refcount decrement, not
% just the purge that follows it.
%
% leave_predicate() drops a reader's handle on a dynamic predicate, and
% when it takes the count to zero it reclaims whatever retract left on
% pr->dirty. The obvious optimisation is to do the decrement and the
% two cheap checks unlocked - the count is atomic and only one thread
% can take it to zero - and to lock only for the reclamation, which is
% rare. leave_predicate() is hot enough that this looked worth a few
% percent.
%
% It is wrong. Holding the lock from before the decrement is what makes
% "took the count to zero" and "reclaimed" one indivisible step against
% everything else contending for that lock; shrinking it to the purge
% lets another thread into the gap, and a thread then executes a clause
% whose memory has been reclaimed under it. It shows up as a BUS or
% SEGV at q->st.instr in the main loop, which is a long way from the
% cause.
%
% What this test needs in order to bite: a churner that builds a large
% dirty list and then drops the last handle, so the reclamation is long,
% and several threads entering and leaving the same predicate throughout
% so one of them lands in the window. Measured against a deliberately
% broken build it fails 20 times in 20; against a correct one it passes
% 40 in 40, in about 0.7s.
%
% Note this is NOT the test for the original database concurrency crash
% - see db_concurrency.pl for that one, which catches its bug 14 times
% in 15 and this one 0 times in 15. They cover different failures and
% neither substitutes for the other.

:- initialization(main).

:- dynamic(p/2).

% Build a big dirty list, then drop the last handle so the purge is long.

churner :-
	forall(between(1,200,_),
		(	forall(between(1,150,I), assertz(p(k,I))),
			forall(between(1,150,_), ( retract(p(k,_)) -> true ; true )),
			( p(k,_) -> true ; true )
		)).

% Enter and leave the same predicate as fast as possible, to land in the
% window while the churner is reclaiming.

hammer :-
	forall(between(1,200000,_), ( p(k,_) -> true ; true )).

main :-
	thread_create(churner, T1, []),
	findall(T, (between(1,4,_), thread_create(hammer, T, [])), Hs),
	forall(member(T, [T1|Hs]), thread_join(T, _)),
	format("db_purge_window: ok~n").
%-------------------------------------------------------------- 179 misc_filesex
% library(filesex). Builds a scratch tree under the working directory,
% exercises it, and removes it again.
%
% The path predicates are purely syntactic, so those checks use paths
% that never exist. Everything else runs against real files.

:- use_module(library(filesex)).
:- initialization(main).

:- dynamic(saw_failure/0).

t(L, G) :-
	(  catch(G, E, (R = err(E)))
	-> (var(R) -> R = ok ; true)
	;  R = failed
	),
	(  R == ok
	-> true
	;  format("FILESEX-FAIL ~w: ~q~n", [L, R]),
	   (  saw_failure -> true ; assertz(saw_failure) )
	).

base('tmp_filesex_test').

mkfile(Path, Text) :-
	open(Path, write, S),
	write(S, Text),
	nl(S),
	close(S).

main :-
	base(B),
	(  exists_directory(B) -> delete_directory_and_contents(B) ; true ),

	% --- path arithmetic, SWI's own documented examples
	t(rel_doc1, (relative_file_name('/home/janw/nice', '/home/janw/deep/dir/file', P1),
	             P1 == '../../nice')),
	t(rel_doc2, (relative_file_name(P2, '/home/janw/deep/dir/file', '../../nice'),
	             P2 == '/home/janw/nice')),
	t(rel_dir,  (relative_file_name('/home/janw/deep/dir/file', '/home/janw/', P3),
	             P3 == 'deep/dir/file')),
	t(rel_self, (relative_file_name('/a/b/c', '/a/b/c', P4), P4 == c)),
	t(dfp_join,  (directory_file_path('/a/b', 'c.txt', Q1), Q1 == '/a/b/c.txt')),
	t(dfp_slash, (directory_file_path('/a/b/', 'c.txt', Q2), Q2 == '/a/b/c.txt')),
	t(dfp_abs,   (directory_file_path('/a/b', '/x/y', Q3), Q3 == '/x/y')),
	t(dfp_split, (directory_file_path(D1, F1, '/a/b/c.txt'), D1 == '/a/b', F1 == 'c.txt')),
	t(dfp_root,  (directory_file_path(D2, F2, '/top'), D2 == '/', F2 == top)),

	% --- build a tree
	t(mkpath,    (make_directory_path('tmp_filesex_test/src/deep'), exists_directory(B))),
	t(ensure,    (ensure_directory('tmp_filesex_test/empty'),
	              exists_directory('tmp_filesex_test/empty'))),
	t(ensure_idem, ensure_directory('tmp_filesex_test/empty')),
	% ensure_directory creates at most one level, unlike make_directory_path
	t(ensure_one_level,
	              (catch(ensure_directory('tmp_filesex_test/no/deeper'), _, fail) -> fail ; true)),
	t(files,     (mkfile('tmp_filesex_test/a.txt', alpha),
	              mkfile('tmp_filesex_test/b.md', beta),
	              mkfile('tmp_filesex_test/src/c.txt', gamma),
	              mkfile('tmp_filesex_test/src/deep/d.txt', delta),
	              exists_file('tmp_filesex_test/a.txt'))),

	% --- links
	t(link_sym,  (link_file('tmp_filesex_test/a.txt', 'tmp_filesex_test/sym.txt', symbolic),
	              posix_file_type('tmp_filesex_test/sym.txt', T1), T1 == symlink)),
	t(link_hard, (link_file('tmp_filesex_test/a.txt', 'tmp_filesex_test/hard.txt', hard),
	              posix_file_type('tmp_filesex_test/hard.txt', T2), T2 == regular)),
	t(link_type_err, catch(link_file('tmp_filesex_test/a.txt', 'tmp_filesex_test/z', weird),
	              error(domain_error(link_type, weird), _), true)),

	% --- directory_member
	t(dm_flat,   (findall(N, (directory_member(B, M1, []),
	                          directory_file_path(_, N, M1)), L1),
	              msort(L1, S1), memberchk('a.txt', S1), \+ memberchk('c.txt', S1))),
	t(dm_glob,   (findall(N, (directory_member(B, M2, [matches('*.md')]),
	                          directory_file_path(_, N, M2)), L2),
	              L2 == ['b.md'])),
	t(dm_exclude,(findall(N, (directory_member(B, M3, [exclude('*.txt')]),
	                          directory_file_path(_, N, M3)), L3),
	              \+ memberchk('a.txt', L3))),
	t(dm_ext,    (findall(N, (directory_member(B, M4, [extensions(['.md'])]),
	                          directory_file_path(_, N, M4)), L4),
	              L4 == ['b.md'])),
	t(dm_type,   (findall(N, (directory_member(B, M5, [file_type(directory)]),
	                          directory_file_path(_, N, M5)), L5),
	              msort(L5, S5), memberchk(src, S5), \+ memberchk('a.txt', S5))),
	t(dm_rec,    (findall(N, (directory_member(B, M6, [recursive(true), matches('d.txt')]),
	                          directory_file_path(_, N, M6)), L6),
	              L6 == ['d.txt'])),
	t(dm_hidden, (mkfile('tmp_filesex_test/.dot', hidden),
	              findall(N, (directory_member(B, M7, []),
	                          directory_file_path(_, N, M7)), L7),
	              \+ memberchk('.dot', L7),
	              findall(N, (directory_member(B, M8, [hidden(true)]),
	                          directory_file_path(_, N, M8)), L8),
	              memberchk('.dot', L8))),
	t(dm_missing, catch(directory_member('tmp_filesex_test/nope', _, []),
	              error(existence_error(directory, _), _), true)),

	% A link back to an ancestor must not send the walk round in circles.
	t(dm_cycle,  (link_file('tmp_filesex_test', 'tmp_filesex_test/src/deep/loop', symbolic),
	              findall(M9, directory_member(B, M9, [recursive(true), follow_links(true)]), L9),
	              length(L9, N9), N9 < 100,
	              posix_unlink('tmp_filesex_test/src/deep/loop'))),

	% --- copy
	t(copy_dir,  (copy_directory('tmp_filesex_test/src', 'tmp_filesex_test/copy'),
	              exists_file('tmp_filesex_test/copy/c.txt'),
	              exists_file('tmp_filesex_test/copy/deep/d.txt'))),
	t(copy_link_kept, (copy_directory(B, 'tmp_filesex_test2'),
	              posix_file_type('tmp_filesex_test2/sym.txt', T3), T3 == symlink)),

	% --- modes
	t(chmod_int, (chmod('tmp_filesex_test/a.txt', 0o640),
	              posix_file_mode('tmp_filesex_test/a.txt', M10), M10 =:= 0o640)),
	t(chmod_sym, (chmod('tmp_filesex_test/a.txt', ugor),
	              posix_file_mode('tmp_filesex_test/a.txt', M11), M11 =:= 0o444)),
	t(chmod_add, (chmod('tmp_filesex_test/a.txt', 0o600),
	              chmod('tmp_filesex_test/a.txt', +(0o060)),
	              posix_file_mode('tmp_filesex_test/a.txt', M12), M12 =:= 0o660)),
	t(chmod_sub, (chmod('tmp_filesex_test/a.txt', -(0o060)),
	              posix_file_mode('tmp_filesex_test/a.txt', M13), M13 =:= 0o600)),
	t(chmod_bad, catch(chmod('tmp_filesex_test/a.txt', nonsense),
	              error(domain_error(file_mode, _), _), true)),

	% --- times
	t(set_time,  (set_time_file('tmp_filesex_test/a.txt', _, [modified(1234567.0)]),
	              set_time_file('tmp_filesex_test/a.txt', [modified(M14)], []),
	              M14 =:= 1234567.0)),
	t(read_times,(set_time_file('tmp_filesex_test/a.txt', [access(A1), modified(M15), changed(C1)], []),
	              float(A1), float(M15), float(C1))),
	t(time_now,  (set_time_file('tmp_filesex_test/a.txt', _, [modified(now)]),
	              set_time_file('tmp_filesex_test/a.txt', [modified(M16)], []),
	              M16 > 1234567.0)),
	t(time_changed_err, catch(set_time_file('tmp_filesex_test/a.txt', _, [changed(1.0)]),
	              error(permission_error(set, file_time, changed), _), true)),

	% --- delete. A dangling link is removed, not chased: delete_file/1
	% refuses one, so the recursive delete must unlink instead.
	t(delete_dangling, (make_directory('tmp_filesex_test/dang'),
	              link_file('no_such_target_at_all', 'tmp_filesex_test/dang/broken', symbolic),
	              delete_directory_and_contents('tmp_filesex_test/dang'),
	              \+ exists_directory('tmp_filesex_test/dang'))),
	t(del_contents, (delete_directory_contents('tmp_filesex_test/copy'),
	              exists_directory('tmp_filesex_test/copy'),
	              directory_files('tmp_filesex_test/copy', DF), msort(DF, ['.','..']))),
	t(del_all,   (delete_directory_and_contents(B), \+ exists_directory(B))),
	t(del_all2,  (delete_directory_and_contents('tmp_filesex_test2'),
	              \+ exists_directory('tmp_filesex_test2'))),
	t(del_missing, catch(delete_directory_and_contents('tmp_filesex_test'),
	              error(existence_error(directory, _), _), true)),

	(  saw_failure
	-> format("filesex: FAILURES above~n")
	;  format("filesex: all ok~n")
	).
%----------------------------------------------------------- 180 misc_http_bread
% Regression test for a self-inflicted bug found while fixing the
% get_char/getline family (see stream_timeout.pl, stream_buffered_read.pl):
% making every non-task socket non-blocking (bif_net.c) exposed
% '$bread'/3 (src/bif_streams.c, backs library(http)'s Content-Length and
% chunked body reads - see read_body/3, read_chunks/3 in library/http.pl)
% to the exact same EAGAIN-vs-EOF ambiguity, except its fixed-length read
% loop had no wait at all: a short, non-EOF tpl_read() on a non-task query
% just looped straight back to the top and reissued tpl_read() again,
% spinning at full CPU instead of waiting for more of the body to arrive.
%
% This sends the response headers and body in two separate writes with a
% real gap between them, so the client's '$bread'/3 call is guaranteed to
% see the body only partially (in fact not at all yet) on its first read
% attempt and must wait rather than immediately succeeding - unlike
% sending the whole response in one write, which would let a single
% tpl_read() satisfy the whole Content-Length without ever exercising the
% retry path.

:- use_module(library(socket)).
:- use_module(library(http)).
:- use_module(library(iso_ext)).
:- initialization(main).

drain_headers(S) :-
	getline(S, Line),
	(   (Line == "\r" ; Line == "" ; Line == '' ; Line == [])
	->  true
	;   drain_headers(S)
	).

run_server :-
	tcp_socket(Srv), tcp_bind(Srv, '127.0.0.1':3425), tcp_listen(Srv, 5),
	tcp_accept(Srv, Cl, _),
	tcp_open_socket(Cl, S),
	drain_headers(S),
	format(S, "HTTP/1.1 200 OK\r~nContent-Length: 20\r~n\r~n", []),
	flush_output(S),
	sleep(0.3),
	format(S, "~s", ["0123456789abcdefghij"]),
	flush_output(S),
	close(S),
	tcp_close_socket(Srv).

main :-
	thread_create(run_server, T, []),
	sleep(0.1),
	catch(
	    call_with_time_limit(10.0, http_get("http://127.0.0.1:3425/", Data, [])),
	    E,
	    (format("http_bread: UNEXPECTED TIMEOUT ~q~n", [E]), halt(1))
	),
	thread_join(T),
	(   Data == "0123456789abcdefghij"
	->  writeln('http_bread: all ok')
	;   format("http_bread: MISMATCH ~q~n", [Data])
	).
%--------------------------------------------------------- 181 misc_process_pipe
% process_create/3's pipe(Stream) and pipe(Stream, StreamOptions)
% sub-options, for stdin/stdout/stderr. Needs real subprocesses, so this
% test belongs in tests/misc.
%
% Issue #1153: none of the three pipe(Stream) cases closed the *other*
% end of the pipe in the child, and posix_spawn() inherits every
% non-CLOEXEC fd. A stdin(pipe(In)) child ended up holding its own
% leaked copy of the write end, so it never saw EOF - even after the
% parent closed its own copy of In - and any child that reads stdin to
% completion (`cat`, a filter, ...) hung forever. stdin_pipe_eof and
% stdin_stdout_roundtrip below are exactly that scenario.
%
% pipe/2's StreamOptions accepts type(+Type) and encoding(+Encoding),
% matching what SWI-Prolog documents for SICStus compatibility - verified
% directly against swipl while adding this. Both variants share the same
% underlying fd-wiring helper in src/bif_os.c, so pipe_2_roundtrip below
% re-covers the #1153 deadlock through the pipe/2 spelling too.
%
% Every variable below is numbered rather than reused across t/2
% calls: they all share the one main/0 clause, so a name reused across
% calls would be the same variable throughout - already bound by the
% earlier test - not a fresh one.

:- initialization(main).

:- dynamic(saw_failure/0).

t(L, G) :-
	(  catch(G, E, (R = err(E)))
	-> (var(R) -> R = ok ; true)
	;  R = failed
	),
	(  R == ok
	-> true
	;  format("PROCESS_PIPE-FAIL ~w: ~q~n", [L, R]),
	   (  saw_failure -> true ; assertz(saw_failure) )
	).

main :-
	% --- stdout(pipe(_)) alone: read what the child writes.
	t(stdout_pipe,
	  ( process_create(echo, ['hello from pipe'], [stdout(pipe(Out1)), process(Pid1)]),
	    read_line_to_string(Out1, Line1),
	    close(Out1),
	    process_wait(Pid1, exit(0)),
	    Line1 == "hello from pipe"
	  )),

	% --- stderr(pipe(_)) kept separate from stdout(pipe(_)).
	t(stderr_pipe,
	  ( process_create(sh, ['-c', 'echo out-line; echo err-line 1>&2'],
	                    [stdout(pipe(Out2)), stderr(pipe(Err2)), process(Pid2)]),
	    read_line_to_string(Out2, OutLine2),
	    read_line_to_string(Err2, ErrLine2),
	    close(Out2), close(Err2),
	    process_wait(Pid2, exit(0)),
	    OutLine2 == "out-line",
	    ErrLine2 == "err-line"
	  )),

	% --- stdin(pipe(_)) alone, feeding a filter that must see EOF to
	% finish. Under #1153 this hung forever: close(In3) closed only the
	% parent's copy of the write end, and `cat` held its own leaked one.
	t(stdin_pipe_eof,
	  ( process_create(cat, [], [stdin(pipe(In3)), stdout(null), process(Pid3)]),
	    write(In3, one), nl(In3),
	    write(In3, two), nl(In3),
	    close(In3),
	    process_wait(Pid3, exit(0))
	  )),

	% --- stdin(pipe(_)) and stdout(pipe(_)) together, round-tripping
	% data through a filter. Same deadlock as above, plus checks the
	% transformed output comes back correctly.
	t(stdin_stdout_roundtrip,
	  ( process_create(tr, ['a-z', 'A-Z'],
	                    [stdin(pipe(In4)), stdout(pipe(Out4)), process(Pid4)]),
	    write(In4, 'round trip via stdin pipe'), nl(In4),
	    close(In4),
	    read_line_to_string(Out4, Line4),
	    close(Out4),
	    process_wait(Pid4, exit(0)),
	    Line4 == "ROUND TRIP VIA STDIN PIPE"
	  )),

	% --- all three piped at once.
	t(stdin_stdout_stderr,
	  ( process_create(sh, ['-c', 'cat; echo done 1>&2'],
	                    [stdin(pipe(In5)), stdout(pipe(Out5)), stderr(pipe(Err5)), process(Pid5)]),
	    write(In5, 'via all three pipes'), nl(In5),
	    close(In5),
	    read_line_to_string(Out5, OutLine5),
	    read_line_to_string(Err5, ErrLine5),
	    close(Out5), close(Err5),
	    process_wait(Pid5, exit(0)),
	    OutLine5 == "via all three pipes",
	    ErrLine5 == "done"
	  )),

	% --- pipe(Stream, StreamOptions): type(text), the default made explicit.
	t(pipe_2_type_text,
	  ( process_create(echo, ['pipe2 text'], [stdout(pipe(Out6, [type(text)])), process(Pid6)]),
	    read_line_to_string(Out6, Line6),
	    close(Out6),
	    process_wait(Pid6, exit(0)),
	    Line6 == "pipe2 text"
	  )),

	% --- pipe(Stream, StreamOptions): type(binary) is accepted and still
	% round-trips plain data correctly.
	t(pipe_2_type_binary,
	  ( process_create(echo, ['pipe2 binary'], [stdout(pipe(Out7, [type(binary)])), process(Pid7)]),
	    read_line_to_string(Out7, Line7),
	    close(Out7),
	    process_wait(Pid7, exit(0)),
	    Line7 == "pipe2 binary"
	  )),

	% --- pipe(Stream, StreamOptions): encoding(_) is accepted (Trealla is
	% UTF-8 throughout, so it has no separate effect - see open/4's own
	% encoding option) rather than rejected as an unknown option.
	t(pipe_2_encoding,
	  ( process_create(echo, ['pipe2 encoding'], [stdout(pipe(Out8, [encoding(utf8)])), process(Pid8)]),
	    read_line_to_string(Out8, Line8),
	    close(Out8),
	    process_wait(Pid8, exit(0)),
	    Line8 == "pipe2 encoding"
	  )),

	% --- an unrecognised StreamOptions entry is a domain_error, not a
	% silently-ignored option or (as a prior version of this code did) a
	% swallowed error that let process_create carry on regardless.
	t(pipe_2_bad_option,
	  ( catch(process_create(echo, [x], [stdout(pipe(_Out9, [bogus(1)]))]),
	          error(domain_error(stream_option, bogus(1)), _),
	          true)
	  )),

	% --- likewise an unrecognised type(_) value.
	t(pipe_2_bad_type,
	  ( catch(process_create(echo, [x], [stdout(pipe(_Out10, [type(weird)]))]),
	          error(domain_error(stream_option, type(weird)), _),
	          true)
	  )),

	% --- stdin(pipe(_, _)) and stdout(pipe(_, _)) together via the
	% pipe/2 spelling: the same #1153 deadlock scenario as
	% stdin_stdout_roundtrip above, but exercising the arity-2 path on
	% both ends at once.
	t(pipe_2_roundtrip,
	  ( process_create(tr, ['a-z', 'A-Z'],
	                    [stdin(pipe(In11, [type(text)])), stdout(pipe(Out11, [type(text)])), process(Pid11)]),
	    write(In11, 'round trip via pipe2'), nl(In11),
	    close(In11),
	    read_line_to_string(Out11, Line11),
	    close(Out11),
	    process_wait(Pid11, exit(0)),
	    Line11 == "ROUND TRIP VIA PIPE2"
	  )),

	(  saw_failure
	-> format("process_pipe: FAILURES above~n")
	;  format("process_pipe: all ok~n")
	).
%--------------------------------------------------------------- 182 misc_socket
% library(socket) - the SWI-compatible interface. Phases 2 to 5 of
% docs/socket-swi-design.md: address conversion, the handle lifecycle,
% the TCP client and server paths, unix domain sockets, and UDP.
%
% The client is checked against library(sockets)'s server rather than
% against itself, so a bug in the handle layer cannot cancel out. The
% server path is then checked against this library's own client, which
% by then has been independently verified.
%
% Ports are fixed and in the 34xx range; if the suite ever runs
% concurrently with itself these will collide.

:- use_module(library(socket)).
:- use_module(library(sockets)).
:- initialization(main).

:- dynamic(saw_failure/0).

t(L, G) :-
	(  catch(G, E, (R = err(E)))
	-> (var(R) -> R = ok ; true)
	;  R = failed
	),
	(  R == ok
	-> true
	;  format("SOCKET-FAIL ~w: ~q~n", [L, R]),
	   (  saw_failure -> true ; assertz(saw_failure) )
	).

main :-
    % address conversion
    t(ip4_name,   (ip_name(ip(127,0,0,1), N1), N1 == '127.0.0.1')),
    t(name_to_ip, (ip_name(I2, '10.0.0.7'), I2 == ip(10,0,0,7))),
    t(gethostname,(gethostname(H), atom(H))),
    t(host_to_addr,(tcp_host_to_address(localhost, A), nonvar(A))),

    % handle lifecycle without any I/O
    t(socket_create, (tcp_socket(S1), S1 = '$socket'(_))),
    t(close_fresh,   (tcp_socket(S2), tcp_close_socket(S2))),
    t(open_fresh_err,(tcp_socket(S3), catch(tcp_open_socket(S3,_), error(permission_error(_,_,_),_), true))),
    t(bad_socket,    catch(tcp_open_socket(not_a_socket,_), error(type_error(socket,_),_), true)),
    t(setopt_ok,     (tcp_socket(S4), tcp_setopt(S4, reuseaddr), tcp_setopt(S4, nodelay), tcp_close_socket(S4))),
    t(setopt_refused,(tcp_socket(S5), catch(tcp_setopt(S5, broadcast), error(domain_error(socket_option,_),_), true), tcp_close_socket(S5))),

    % real connect to a sockets.pl server
    socket_server_open(3401, Srv, []),
    t(connect,   (tcp_socket(C), tcp_connect(C, '127.0.0.1':3401),
                  tcp_open_socket(C, Str), format(Str, "hi~n", []), flush_output(Str),
                  socket_server_accept(Srv, _Client, In, []),
                  getline(In, Line), Line == "hi",
                  tcp_getopt(C, file_no(FD)), integer(FD),
                  tcp_close_socket(C), close(In))),
    t(connect3,  (tcp_connect('127.0.0.1':3401, P, []),
                  format(P, "yo~n", []), flush_output(P),
                  socket_server_accept(Srv, _C2, In2, []),
                  getline(In2, L2), L2 == "yo", close(P), close(In2))),
    socket_server_close(Srv),

    % server path, this library on both ends
    t(roundtrip, (tcp_socket(Sv), tcp_bind(Sv, '127.0.0.1':3402), tcp_listen(Sv, 5),
                  tcp_socket(Cl), tcp_connect(Cl, '127.0.0.1':3402),
                  tcp_open_socket(Cl, CS), format(CS, "ping~n", []), flush_output(CS),
                  tcp_accept(Sv, Slave, Peer), Peer == ip(127,0,0,1),
                  tcp_open_socket(Slave, SS), getline(SS, L3), L3 == "ping",
                  format(SS, "pong~n", []), flush_output(SS),
                  getline(CS, L4), L4 == "pong",
                  tcp_close_socket(Slave), tcp_close_socket(Cl), tcp_close_socket(Sv))),

    % an unbound port is reported back by the bind, as SWI does
    t(ephemeral, (tcp_socket(Se), tcp_bind(Se, '127.0.0.1':Port),
                  integer(Port), Port > 0,
                  tcp_socket(Ce), tcp_connect(Ce, '127.0.0.1':Port),
                  tcp_accept(Se, Sl2, _), tcp_close_socket(Sl2),
                  tcp_close_socket(Ce), tcp_close_socket(Se))),

    % failures name their cause and surface at the right predicate
    t(bind_in_use, (tcp_socket(B1), tcp_bind(B1, '127.0.0.1':3403),
                    tcp_socket(B2),
                    catch(tcp_bind(B2, '127.0.0.1':3403),
                          error(socket_error(eaddrinuse,_), tcp_bind/2), true),
                    tcp_close_socket(B2), tcp_close_socket(B1))),
    t(connect_refused, (tcp_socket(R),
                    catch(tcp_connect(R, '127.0.0.1':3499),
                          error(socket_error(econnrefused,_), tcp_connect/2), true),
                    tcp_close_socket(R))),

    % the phase machine refuses out-of-order use
    t(listen_unbound, (tcp_socket(P1),
                    catch(tcp_listen(P1, 5), error(permission_error(listen,_,_),_), true),
                    tcp_close_socket(P1))),
    t(accept_unbound, (tcp_socket(P2),
                    catch(tcp_accept(P2,_,_), error(permission_error(accept,_,_),_), true),
                    tcp_close_socket(P2))),
    t(rebind, (tcp_socket(P3), tcp_bind(P3, '127.0.0.1':3404),
                    catch(tcp_bind(P3, '127.0.0.1':3405), error(permission_error(bind,_,_),_), true),
                    tcp_close_socket(P3))),

    % udp
    t(udp_roundtrip, (udp_socket(Dsv), tcp_bind(Dsv, '127.0.0.1':DP),
                  udp_socket(Dcl),
                  udp_send(Dcl, 'hello', '127.0.0.1':DP, []),
                  udp_receive(Dsv, DD, DFrom, []),
                  DD == "hello", DFrom = DIp:_, DIp == ip(127,0,0,1),
                  tcp_close_socket(Dcl), tcp_close_socket(Dsv))),

    udp_socket(Usv), tcp_bind(Usv, '127.0.0.1':3410), udp_socket(Ucl),
    t(udp_as_atom, (udp_send(Ucl, abc, '127.0.0.1':3410, []),
                  udp_receive(Usv, X1, _, [as(atom)]), X1 == abc)),
    t(udp_as_codes, (udp_send(Ucl, hi, '127.0.0.1':3410, []),
                  udp_receive(Usv, X2, _, [as(codes)]), X2 == [104,105])),
    t(udp_as_term, (udp_send(Ucl, foo(bar,[1,2]), '127.0.0.1':3410, [as(term)]),
                  udp_receive(Usv, X3, _, [as(term)]), X3 == foo(bar,[1,2]))),
    t(udp_number, (udp_send(Ucl, 42, '127.0.0.1':3410, []),
                  udp_receive(Usv, X4, _, [as(atom)]), X4 == '42')),
    t(udp_max_size, (udp_send(Ucl, abcdefgh, '127.0.0.1':3410, []),
                  udp_receive(Usv, X5, _, [max_message_size(3)]), X5 == "abc")),

    % byte-exact: the text path is UTF-8, so 255 and 128 would each go out
    % as two bytes without encoding(octet)
    t(udp_octet, (udp_send(Ucl, [0,255,128,7], '127.0.0.1':3410, [encoding(octet)]),
                  udp_receive(Usv, X6, _, [encoding(octet), as(codes)]),
                  X6 == [0,255,128,7])),

    % sending without an explicit bind materialises an ephemeral socket
    t(udp_unbound_send, (udp_socket(Uc2), udp_send(Uc2, x, '127.0.0.1':3410, []),
                  udp_receive(Usv, X7, _, []), X7 == "x", tcp_close_socket(Uc2))),

    t(udp_bad_as, catch(udp_receive(Usv, _, _, [as(bogus)]),
                  error(domain_error(udp_as, bogus), _), true)),
    t(udp_bad_encoding, catch(udp_receive(Usv, _, _, [encoding(iso_latin_1)]),
                  error(domain_error(encoding, _), _), true)),
    t(udp_on_tcp_socket, (tcp_socket(Ut),
                  catch(udp_send(Ut, x, '127.0.0.1':3410, []),
                        error(permission_error(udp, _, _), _), true),
                  tcp_close_socket(Ut))),
    tcp_close_socket(Ucl), tcp_close_socket(Usv),

    % unix domain sockets. The path is fixed, so as with the ports above a
    % concurrent run of this suite would collide.
    catch(delete_file('/tmp/trealla_socket_test.sock'), _, true),
    t(unix_roundtrip, (
        unix_domain_socket(Uv), tcp_bind(Uv, '/tmp/trealla_socket_test.sock'),
        tcp_listen(Uv, 5),
        unix_domain_socket(Uc), tcp_connect(Uc, '/tmp/trealla_socket_test.sock'),
        tcp_open_socket(Uc, UCS), format(UCS, "ping~n", []), flush_output(UCS),
        tcp_accept(Uv, USl, _),
        tcp_open_socket(USl, USS), getline(USS, U1), U1 == "ping",
        format(USS, "pong~n", []), flush_output(USS),
        getline(UCS, U2), U2 == "pong",
        tcp_close_socket(USl), tcp_close_socket(Uc), tcp_close_socket(Uv))),

    % it must be a real AF_UNIX socket, not a TCP one: the bind leaves a
    % socket inode behind. This is what regressed silently before - the
    % round-trip above passes either way.
    t(unix_is_real, (
        unix_domain_socket(Uf), tcp_bind(Uf, '/tmp/trealla_socket_test2.sock'),
        catch(delete_file('/tmp/trealla_socket_test2.sock'), _, fail),
        tcp_close_socket(Uf))),

    t(unix_missing, (unix_domain_socket(Un),
        catch(tcp_connect(Un, '/tmp/no_such_dir_xyzzy/x.sock'),
              error(socket_error(enoent,_), tcp_connect/2), true),
        tcp_close_socket(Un))),
    catch(delete_file('/tmp/trealla_socket_test.sock'), _, true),

    (  saw_failure
    -> format("socket: FAILURES above~n")
    ;  format("socket: all ok~n")
    ).
%------------------------------------------------- 183 misc_stream_buffered_read
% Regression test for a bug introduced by an earlier (reverted) attempt at
% the fix in stream_timeout.pl: polling the raw fd with poll() *before*
% every read() ignores that libc's stdio buffering can already hold the
% next byte in userspace after a single read() pulled a multi-byte burst
% off the wire. A socket stream with "abc\n" sitting in one TCP segment
% would get the first byte fine (the read that fills the buffer), then
% hang forever on the second, third and fourth get_char/2 calls: poll()
% sees the kernel socket buffer already drained and waits for more
% network traffic that is never coming, even though the bytes are already
% sitting in the stdio buffer waiting to be handed over. This broke a
% real downstream user - Logtalk's http_static_site example - the first
% time it shipped.
%
% The fix (see retry_getc()/tpl_getline() in bif_streams.c/network.c)
% always attempts the real read first and only waits on the fd after an
% actual EAGAIN, so already-buffered data is never second-guessed.

:- use_module(library(socket)).
:- use_module(library(iso_ext)).
:- initialization(main).

main :-
	tcp_socket(Srv), tcp_bind(Srv, '127.0.0.1':3421), tcp_listen(Srv, 5),
	tcp_socket(Cl), tcp_connect(Cl, '127.0.0.1':3421),
	tcp_accept(Srv, Sl, _),
	tcp_open_socket(Cl, C),
	tcp_open_socket(Sl, S),

	% One write, one TCP segment, four bytes - then the peer sends nothing
	% else. Reading them one get_char/2 at a time must not touch the
	% network after the first call.
	format(S, "abc~n", []), flush_output(S),

	catch(
	    call_with_time_limit(2.0, (
	        get_char(C, Ch1), get_char(C, Ch2), get_char(C, Ch3), get_char(C, Ch4)
	    )),
	    E,
	    (format("UNEXPECTED TIMEOUT: ~q~n", [E]), halt(1))
	),

	(   [Ch1,Ch2,Ch3,Ch4] == ['a','b','c','\n']
	->  writeln('stream_buffered_read: all ok')
	;   format("stream_buffered_read: MISMATCH ~q~n", [[Ch1,Ch2,Ch3,Ch4]])
	),

	close(C), close(S), tcp_close_socket(Srv).
%------------------------------------------------------------- 184 misc_test1130
% Issue #1130: advancing an engine past its final answer retried the plain
% bottom barrier. Its saved instruction pointer predated engine execution
% and was NULL, so start() dereferenced it instead of reporting exhaustion.
% Needs real threads, so this test belongs in tests/misc.

:- use_module(library(tabling)).
:- initialization(main).

:- table tabled/1.

tabled(X) :- between(1, 20, X).

exhaust(E) :-
	( engine_next(E, _) -> exhaust(E) ; true ).

main :-
	engine_create(x, true, E1),
	engine_next(E1, x),
	\+ engine_next(E1, _),
	engine_destroy(E1),
	write(engine_exhaustion_ok), nl,

	engine_create(Y, tabled(Y), E3),
	thread_create(exhaust(E3), T, []),
	thread_join(T, true),
	engine_destroy(E3),
	write(threaded_tabled_engine_ok), nl,
	halt.
%------------------------------------------------------- 185 misc_thread_mailbox
% The thread mailbox, queues, join and mutexes - pinned as they behave
% today, before phase 1 of GUSTTO rewrites the blocking underneath them.
%
% This lives in tests/misc because it needs real threads, and the WASI
% build in CI runs `make test` with NOTHREADS. Nothing here is otherwise
% platform-specific.
%
% Why this file matters more than it looks: phase 1 replaces the condvar
% wait inside do_match_message() with a task parking on the queue and
% being woken by the send. That is a rewrite of the mechanism underneath
% every property below, and these are the properties that must come out
% the other side unchanged.
%
% Two behaviours recorded here are worth arguing about rather than
% preserving blindly; both are marked at the point they are asserted.
%
% Every test is made deterministic by a join or by a queue handshake -
% nothing asserts an interleaving of threads running concurrently.

:- initialization(main).

:- dynamic(echoed/1).

report(Name, Got, Expect) :-
	(	Got == Expect
	->	format("~w: ok~n", [Name])
	;	format("~w: FAILED got ~q wanted ~q~n", [Name,Got,Expect])
	).

% Drain a queue without blocking, so a test can never hang on one.

qdrain(Q, L) :- qdrain_(Q, [], R), reverse(R, L).
qdrain_(Q, A, L) :-
	(	thread_get_message(Q, X, [timeout(0.05)])
	->	qdrain_(Q, [X|A], L)
	;	L = A
	).

% Messages come back in the order they were sent.

fifo_order :-
	message_queue_create(Q),
	forall(member(M,[a,b,c]), thread_send_message(Q,M)),
	qdrain(Q, L),
	report(fifo_order, L, [a,b,c]).

% Selective receive scans the queue without disturbing it: taking 3 out
% of 1,2,3,4 leaves 1,2,4 in that order.
%
% This is the property that makes this mailbox worth keeping and the
% task-side recv/1 not - given the same queue, recv/1 rotates the
% skipped messages to the back and leaves 4,1,2.

selective_receive_preserves_order :-
	message_queue_create(Q),
	forall(between(1,4,N), thread_send_message(Q,N)),
	thread_get_message(Q, 3),
	qdrain(Q, L),
	report(selective_receive_preserves_order, L, [1,2,4]).

% A message that matches nothing stays put rather than being consumed,
% and the receive still honours its deadline.
%
% This hung until the deadline check was added to the no-match path.
% thread_get_message/3 consulted its timeout only in the branch taken
% when the queue is *empty*, so with messages present but none matching
% the walk fell out of the inner loop, returned to the top of the outer
% one, found the queue still non-empty and walked it again forever -
% spinning, not even sleeping. Intermittent by nature: it needed the
% queue to be non-empty at the moment of the receive.

no_match_leaves_queue_intact :-
	message_queue_create(Q),
	forall(member(M,[x,y]), thread_send_message(Q,M)),
	(	thread_get_message(Q, zzz, [timeout(0.05)])
	->	R = matched_wrongly
	;	R = no_match
	),
	qdrain(Q, L),
	report(no_match_leaves_queue_intact, R-L, no_match-[x,y]).

% Peek does not consume, and fails on an empty queue rather than
% blocking.

peek_does_not_consume :-
	message_queue_create(Q),
	thread_send_message(Q, p),
	(	thread_peek_message(Q, p) -> P = peeked ; P = not_peeked ),
	qdrain(Q, L),
	report(peek_does_not_consume, P-L, peeked-[p]).

peek_empty_fails :-
	message_queue_create(Q),
	(	thread_peek_message(Q, _) -> R = unexpected ; R = fails ),
	report(peek_empty_fails, R, fails).

% The timeout form gives up rather than waiting forever.

timeout_expires :-
	message_queue_create(Q),
	(	thread_get_message(Q, _, [timeout(0.1)]) -> R = unexpected ; R = timed_out ),
	report(timeout_expires, R, timed_out).

% A real handshake across two threads. The join is what makes this
% deterministic: by the time it returns, the worker has run.

handshake :-
	retractall(echoed(_)),
	message_queue_create(Q),
	thread_create((thread_get_message(Q,X), assertz(echoed(X))), T, []),
	thread_send_message(Q, ping),
	thread_join(T, _),
	findall(E, echoed(E), L),
	report(handshake, L, [ping]).

% A message sent before anyone is waiting is not lost.

send_before_receive :-
	retractall(echoed(_)),
	message_queue_create(Q),
	thread_send_message(Q, early),
	thread_create((thread_get_message(Q,X), assertz(echoed(X))), T, []),
	thread_join(T, _),
	findall(E, echoed(E), L),
	report(send_before_receive, L, [early]).

% What join reports, in the same vocabulary as
% thread_property(_, status(S)).
%
% Until this test was written, a goal that failed and a goal that threw
% both came back as plain `true`: the thread recorded the ball but join
% never looked at it, and failure was not recorded at all. Fixed on the
% way in, so these are now the SWI values.

join_status :-
	thread_create(true, T1, []),            thread_join(T1, S1),
	thread_create(fail, T2, []),            thread_join(T2, S2),
	thread_create(throw(oops), T3, []),     thread_join(T3, S3),
	thread_create(thread_exit(bye), T4, []),thread_join(T4, S4),
	report(join_status_true,  S1, true),
	report(join_status_fail,  S2, false),
	report(join_status_throw, S3, exception(oops)),
	report(join_status_exit,  S4, exited(bye)).

% Mutexes are recursive: the holder may lock again without deadlocking,
% and must unlock as many times as it locked.

mutex_is_recursive :-
	mutex_create(M),
	mutex_lock(M), mutex_lock(M),
	mutex_unlock(M), mutex_unlock(M),
	report(mutex_is_recursive, ok, ok).

% mutex_trylock/1 succeeds for the holder and reports rather than blocks.

mutex_trylock_succeeds_for_holder :-
	mutex_create(M),
	mutex_lock(M),
	(	mutex_trylock(M) -> R = acquired, mutex_unlock(M) ; R = refused ),
	mutex_unlock(M),
	report(mutex_trylock_succeeds_for_holder, R, acquired).

% Properties of an object created without an alias.
%
% All three property predicates used to build an alias/1 term out of a
% null pointer, so make_cstring() ran strlen(NULL) and the process
% segfaulted. An object with no alias simply has no alias property; the
% others must still enumerate, which is the part a naive fix breaks.

unaliased_queue_properties :-
	message_queue_create(Q),
	findall(P, message_queue_property(Q,P), L),
	report(unaliased_queue_properties, L, [size(0)]).

unaliased_mutex_properties :-
	mutex_create(M),
	findall(P, mutex_property(M,P), L),
	report(unaliased_mutex_properties, L, [status(unlocked)]).

unaliased_thread_properties :-
	message_queue_create(Q),
	thread_create(thread_get_message(Q,_), T, []),
	findall(P, thread_property(T,P), L),
	thread_send_message(Q, go),
	thread_join(T, _),
	report(unaliased_thread_properties, L, [detached(false),status(running)]).

% An alias, where there is one, still shows up alongside the rest.

aliased_queue_properties :-
	message_queue_create(Q, [alias(a_queue)]),
	findall(P, message_queue_property(Q,P), L),
	report(aliased_queue_properties, L, [alias(a_queue),size(0)]).

% message_queue_property/2 with the property bound enumerated the
% *mutexes*: it filtered on is_mutex_only where its sibling with both
% arguments unbound filtered on is_queue_only. It threw an
% existence_error as soon as a mutex existed.

% Written against whatever else this file has left alive, so it asks
% the two questions that matter rather than for an exact list: the new
% queues are found, and the mutex is not.

queue_property_enumerates_queues :-
	message_queue_create(Q1),
	message_queue_create(Q2),
	mutex_create(M),
	findall(X, message_queue_property(X,size(_)), L),
	(	memberchk(Q1, L), memberchk(Q2, L)
	->	Found = queues_found
	;	Found = queues_missing
	),
	(	memberchk(M, L)
	->	Leaked = mutex_leaked_in
	;	Leaked = no_mutex
	),
	report(queue_property_enumerates_queues, Found-Leaked, queues_found-no_mutex).
% A receive inside a *task* must not hold the scheduler.
%
% This is the GUSTTO phase 1 property. A task waiting on a queue parks
% on the timer heap and its siblings run meanwhile; before phase 1 it
% sat on the condvar inside do_match_message and every sibling waited
% out the full timeout with it. The blocker is spawned first, so under
% the old behaviour the siblings could only appear after it finished.
%
% Timing is not asserted - only the order, which is what changed.

:- dynamic(ran/1).

blocker(Q) :- assertz(ran(blocked)),
	( thread_get_message(Q,_,[timeout(0.3)]) -> true ; true ),
	assertz(ran(woke)).

runner(N) :- assertz(ran(sib(N))).

task_receive_yields_to_siblings :-
	retractall(ran(_)),
	message_queue_create(Q),
	call_task(blocker, Q),
	call_task(runner, 1),
	call_task(runner, 2),
	wait,
	findall(X, ran(X), L),
	report(task_receive_yields_to_siblings, L, [blocked,sib(1),sib(2),woke]).

% ... and a parked task still receives, rather than only timing out.

waiter(Q) :- ( thread_get_message(Q,M,[timeout(2)]) -> assertz(ran(got(M))) ; assertz(ran(timed_out)) ).
poster(Q) :- sleep(0.05), thread_send_message(Q, delivered).

parked_task_still_receives :-
	retractall(ran(_)),
	message_queue_create(Q),
	call_task(waiter, Q),
	call_task(poster, Q),
	wait,
	findall(X, ran(X), L),
	report(parked_task_still_receives, L, [got(delivered)]).

% Two real threads each spawning tasks and draining them.
%
% Tasks are scheduled per thread object. GUSTTO phase 0 moved the
% scheduler off the query - correctly, since one that dies with its
% spawner cannot outlive it - but put it on the prolog instance, which
% went a step too far: two threads each calling wait/0 then drove one
% set of queues with nothing serialising them, and this crashed six runs
% in ten with SIGSEGV, SIGBUS or SIGABRT. A thread object owns its run
% queue now, so there is nothing shared to corrupt.
%
% The assertion is weak on purpose - what matters is that it completes
% at all, and does so every time rather than most times.

spawner(Tag) :-
	forall(between(1,40,I), call_task(noop, Tag-I)),
	wait.

noop(_).

concurrent_task_drain :-
	thread_create(spawner(a), T1, []),
	thread_create(spawner(b), T2, []),
	forall(between(1,40,I), call_task(noop, main-I)),
	wait,
	thread_join(T1, S1),
	thread_join(T2, S2),
	report(concurrent_task_drain, S1-S2, true-true).

main :-
	fifo_order,
	selective_receive_preserves_order,
	no_match_leaves_queue_intact,
	peek_does_not_consume,
	peek_empty_fails,
	timeout_expires,
	handshake,
	send_before_receive,
	join_status,
	mutex_is_recursive,
	mutex_trylock_succeeds_for_holder,
	unaliased_queue_properties,
	unaliased_mutex_properties,
	unaliased_thread_properties,
	aliased_queue_properties,
	queue_property_enumerates_queues,
	task_receive_yields_to_siblings,
	parked_task_still_receives,
	concurrent_task_drain.
%-------------------------------------------------------------- 186 misc_timeout
:- use_module(library(iso_ext)).

:- initialization((main2,main5,main6,main7)).

main2 :-
	writeln('main2...'),
	thread_create(catch(call_with_time_limit(1.0, run2(here1)), _, writeln(catch1)), T1, []),
	thread_create(catch(call_with_time_limit(2.0, run2(here2)), _, writeln(catch2)), T2, []),
	thread_join(T1),
	writeln('\tdone1'),
	thread_join(T2),
	writeln('\tdone2').

run2(Msg) :-
	repeat, sleep(0.25), fail.

run5(Secs,Msg) :-
	catch(
		call_with_time_limit(Secs, sleep(2.0)),
		_,
		writeln(Msg)
	).

main5 :-
	writeln('main5...'),
	thread_create(run5(0.5, alarm1),T1,[]),
	thread_create(run5(1.0, alarm2),T2,[]),
	thread_join(T1),
	thread_join(T2).

run6(Secs,Msg) :-
	catch(
		call_with_time_limit(Secs, (repeat,fail)),
		_,
		writeln(Msg)
	).

main6 :-
	writeln('main6...'),
	thread_create(run6(0.5, alarm1),T1,[]),
	thread_create(run6(1.0, alarm2),T2,[]),
	thread_join(T1),
	thread_join(T2).

run7(Secs,Msg) :-
	catch(
		call_with_time_limit(Secs, (repeat,fail)),
		_,
		writeln(Msg)
	).

main7 :-
	writeln('main7...'	),
	thread_create((run7(0.1, alarm1), run7(0.1, alarm2)),T,[]),
	thread_join(T).
%-------------------------------------------------------------- 187 misc_uri_lib
% library(uri), after SWI-Prolog's. Every case below was run against
% SWI as well; the output agrees with it everywhere except the one
% marked default-port case, where we additionally apply RFC-3986
% section 6.2.3 and SWI does not.

:- initialization(main).
:- use_module(library(uri)).


% Unbound components print as _ so the expected output does not depend
% on variable numbering.

canon(T, '_') :- var(T), !.
canon(T, T) :- atomic(T), !.
canon(T, C) :- T =.. [F|As], canon_list(As, Bs), C =.. [F|Bs].

canon_list([], []).
canon_list([H|T], [H2|T2]) :- canon(H, H2), canon_list(T, T2).

w(Fmt, Args) :- canon(Args, Args2), format(Fmt, Args2).

t(L,G) :- ( catch(G,E,(w("~w ERR ~q~n",[L,E]),true)) -> true ; w("~w FAIL~n",[L]) ).
c(U) :- t(c,(uri_components(U,C),w("comp ~q | ~q~n",[U,C]))).
b(C) :- t(b,(uri_components(U,C),w("bld ~q | ~q~n",[C,U]))).
f(F,U) :- t(f,(uri_components(U,C),(uri_data(F,C,V)->w("data ~w ~q | ~q~n",[F,U,V]);w("data ~w ~q | <fail>~n",[F,U])))).
qp(S) :- t(qp,(uri_query_components(S,Q),w("qparse ~q | ~q~n",[S,Q]))).
qb(L) :- t(qb,(uri_query_components(S,L),w("qbuild ~q | ~q~n",[L,S]))).
ac(A) :- t(ac,(uri_authority_components(A,C),w("auth ~q | ~q~n",[A,C]))).
ab(C) :- t(ab,(uri_authority_components(A,C),w("authb ~q | ~q~n",[C,A]))).
g(U) :- ( uri_is_global(U) -> w("global ~q | yes~n",[U]) ; w("global ~q | no~n",[U]) ).
fn(U) :- ( uri_file_name(U,F) -> w("u2f ~q | ~q~n",[U,F]) ; w("u2f ~q | <fail>~n",[U]) ).
nf(F) :- t(nf,(uri_file_name(U,F),w("f2u ~q | ~q~n",[F,U]))).
nz(U) :- t(nz,(uri_normalized(U,N),w("norm ~q | ~q~n",[U,N]))).
nz3(U,B) :- t(nz3,(uri_normalized(U,B,N),w("norm3 ~q ~q | ~q~n",[U,B,N]))).
iz(U) :- t(iz,(iri_normalized(U,N),w("inorm ~q | ~q~n",[U,N]))).
zi(U) :- t(zi,(uri_normalized_iri(U,N),w("normi ~q | ~q~n",[U,N]))).
rs(U,B) :- t(rs,(uri_resolve(U,B,N),w("res ~q ~q | ~q~n",[U,B,N]))).
ed(A,U) :- t(ed,(uri_edit(A,U,N),w("edit ~q ~q | ~q~n",[A,U,N]))).
en(C,V) :- t(en,(uri_encoded(C,V,E),w("enc ~w ~q | ~q~n",[C,V,E]))).
de(C,E) :- t(de,(uri_encoded(C,V,E),w("dec ~w ~q | ~q~n",[C,E,V]))).
ii(U) :- t(ii,(uri_iri(U,I),w("u2i ~q | ~q~n",[U,I]))).

main :-
    c('http://user:pw@host:8080/p/q?a=1#f'), c('urn:isbn:0451450523'),
    c('mailto:bob@x.com'), c('/rel/path'), c('file:///etc/hosts'), c('http://h'),
    b(uri_components(http,'h:80','/p','a=1',frag)),
    b(uri_components(http,h,_,_,_)),
    b(urn_components(urn,isbn,'0451',_,_)),
    forall(member(F,[scheme,authority,path,search,fragment,nid,nss]),
           f(F,'http://h/p?q#f')),
    forall(member(F,[scheme,authority,path,search,fragment,nid,nss]),
           f(F,'urn:isbn:0451')),
    qp('a=1&b=2'), qp('a&b=1'), qp(''), qp('a=1&a=2'), qp('a=b=c'), qp('=1'),
    qp('a='), qp('a=1&b=x+y&c=%26'),
    qb([a=1,b='x y',c='&=']), qb([a(1),b-2,c=3]), qb([]),
    ac('u:p@h:80'), ac('h'), ac('[::1]:8080'),
    ab(uri_authority(u,p,h,80)), ab(uri_authority(_,_,h,_)),
    g('http://x/'), g('/rel'), g('a:b'), g('c:/x'), g('urn:x:y'),
    fn('file:///etc/hosts'), fn('http://x/y'), fn('file:///a%20b/c'),
    nf('/etc/hosts'), nf('/a b/c'),
    nz('HTTP://X/a/../b'), nz('http://x:80/'), nz('http://X/%c3%a9/%7e/a/../b'),
    nz3(g,'http://a/b/c/d'),
    iz('HTTP://X/%c3%a9/%7e/a/../b'), zi('HTTP://X/%c3%a9/%7e/a/../b'),
    rs(g,'http://a/b/c/d;p?q'), rs('../x','http://a/b/c/d'), rs('http:g','http://a/b/c/d;p?q'),
    ed(path('/new'),'http://h/old?q'), ed([host(h2),port(99)],'http://h/p'),
    ed(path(rel),'http://h/a/b'), ed(fragment(_),'http://h/p#f'),
    ed(search([a=1]),'http://h/p'), ed(scheme(https),'http://h/p'),
    ed(user(bob),'http://h/p'),
    en(path,'a b'), en(query_value,'a&b'), de(path,'a%20b'), de(query_value,'a+b'),
    ii('http://x/%C3%A9').
%----------------------------------------------------------- 188 slow_index-race
:- dynamic(p/2).
:- initialization(main).

% Exercises the wildcard path through a predicate's clause index from
% several threads at once: a partially instantiated compound first
% argument, over a predicate well past the 500-clause index threshold.
% sl_find_key()/sl_next_key() carry per-traversal state, and a lookup
% that loses it drops a clause it should have matched. Run under a
% thread sanitizer to see the races themselves; this only counts short
% reads, and does not reliably provoke one on its own.

seed(N) :-
	between(1, N, I),
	assertz(p(k(I,a), I)),
	assertz(p(k(I,b), I)),
	fail.
seed(_).

scan(I, Hi, Acc, Acc) :- I > Hi, !.
scan(I, Hi, Acc, Short) :-
	findall(V, p(k(I,_), V), Vs),
	length(Vs, N),
	( N =:= 2 -> Acc1 = Acc ; Acc1 is Acc + 1 ),
	I1 is I + 1,
	scan(I1, Hi, Acc1, Short).

passes(0, _, Acc, Acc) :- !.
passes(P, Hi, Acc, Short) :-
	scan(1, Hi, Acc, Acc1),
	P1 is P - 1,
	passes(P1, Hi, Acc1, Short).

worker(Queue, Passes, Hi) :-
	passes(Passes, Hi, 0, Short),
	thread_send_message(Queue, done(Short)).

collect(0, _, Acc, Acc) :- !.
collect(N, Queue, Acc, Short) :-
	thread_get_message(Queue, done(S)),
	Acc1 is Acc + S,
	N1 is N - 1,
	collect(N1, Queue, Acc1, Short).

main :-
	Keys = 1000, Threads = 8, Passes = 1800,
	seed(Keys),
	message_queue_create(Queue, []),
	forall(between(1, Threads, _), thread_create(worker(Queue, Passes, Keys), _, [])),
	collect(Threads, Queue, 0, Short),
	format("short reads: ~w~n", [Short]).
%------------------------------------------------------------- 189 slow_test0360
:- use_module(library(lists)).
:- use_module(library(iso_ext)).
:- use_module(library(dcgs)).
:- use_module(library(clpb)).
:- initialization(main).

% Issue #360: reduced harness from Triska's CLP(B) consistency test.
% The original threw domain_error(clpb_variable, ...) due to broken
% variable aliasing. Full sizes are intractable (same in Scryer), so we
% check the tractable sizes N=0 and N=1: every generated pair of
% formulas must yield identical solution sets via both solving orders.

perm([], []).
perm(List, [First|Perm]) :- select(First, List, Rest), perm(Rest, Perm).

f(_)  --> [].
f(X*Y) --> [_], f(X), f(Y).
f(X+Y) --> [_], f(X), f(Y).
f(X#Y) --> [_], f(X), f(Y).
f(card([0,1],[X,Y])) --> [_], f(X), f(Y).

vs_eqs(Vs, Eqs) :- phrase(vs_eqs(Vs), Eqs).
vs_eqs([]) --> [].
vs_eqs([V|Vs]) --> vs_eqs_(Vs, V), vs_eqs(Vs).
vs_eqs_([], _) --> [].
vs_eqs_([V|Vs], X) --> vs_eqs_(Vs, X), ( [X=V] ; [] ).

consistent(N) :-
	forall(( length(Ls, N),
	         phrase(f(S1), Ls), phrase(f(S2), Ls),
	         term_variables(S1-S2, Vs0), perm(Vs0, Vs), vs_eqs(Vs, Eqs) ),
	       ( findall(Vs, (sat(S1), sat(S2), maplist(call, Eqs), labeling(Vs)), A),
	         findall(Vs, (labeling(Vs), maplist(call, Eqs), sat(S1*S2)), B),
	         sort(A, S), sort(B, S) )).

main :-
	consistent(0), write('N=0 consistent'), nl,
	consistent(1), write('N=1 consistent'), nl.
%----------------------------------------------- 190 sundry_attribute_goal_order
:- initialization(main).

% Goals returned by verify_attributes/3 must run in the order they were
% returned. modularize/4 in library/builtins.pl built its result with an
% accumulator it prepended to, so a module's goals ran back to front.
% Found while chasing issue #1127; the reversal was observable to any
% constraint library whose goals are order-sensitive.

:- use_module(library(atts)).
:- attribute ord/1.

verify_attributes(Var, _, Goals) :-
	(	get_atts(Var, +ord(N))
	->	goals_for(N, Goals)
	;	Goals = []
	).

goals_for(order, [w(1), w(2), w(3)]).
goals_for(veto, [w(a), w_fails(b), w(c)]).

w(X) :- write(X).

% A goal that fails vetoes the unification, so the goals after it must
% not run - the order matters for that too.
w_fails(X) :- write(X), fail.

main :-
	write('order: '),
	(	( put_atts(X, +ord(order)), X = bound )
	->	true
	;	write('*** unification unexpectedly failed')
	),
	nl,
	write('veto:  '),
	(	( put_atts(Y, +ord(veto)), Y = bound )
	->	write('*** unification unexpectedly succeeded')
	;	write(' vetoed')
	),
	nl.
%----------------------------------------------------- 191 sundry_compiled_catch
% A catch/3 in a clause body is compiled inline. On an exception the
% handler resumes at a landing just before Recovery, so Recovery's first
% goal runs exactly once however the ball was raised. Resuming at Recovery
% itself with noskip set ran that goal twice on paths that execute the
% instruction before stepping past it - a compiled if-then-else in it then
% found its choice var already bound (seen in Logtalk's call/1 tests).

:- initialization(main).

b(X) :- Y = (true, X), call(Y).

rec(R) :- ( true -> R = ok ; R = no ).
rec_e(E, R) :- ( var(E) -> R = unbound ; E = error(F, _), R = bound(F) ).
count(N) :- bb_get(cnt, C), N is C+1, bb_put(cnt, N).

cut_after(X) :- catch(member(X, [1,2,3]), _, true), !.
cut_after(9).

nondet_rec(X) :- catch(throw(a), a, member(X, [1,2,3])).

into_goal(R) :-
	catch((member(X, [1,2]), (X == 2 -> throw(in) ; true)), E, R = inner(E)),
	( var(R) -> R = x(X) ; true ).

t(var_goal_ite) :- catch(b(_), E, (E = error(F,_) -> write(F) ; write(other))).
t(var_goal_call) :- catch(b(_), _, rec(R)), write(R).
t(throw_call) :- catch(throw(x), _, rec(R)), write(R).
t(ball_arg) :- catch(b(_), E, rec_e(E, R)), write(R).
t(in_condition) :- ( catch(b(_), E, rec_e(E, R)) -> write(outer(R)) ; write(no) ).
t(count_var_goal) :- bb_put(cnt, 0), catch(b(_), _, count(_)), bb_get(cnt, N), write(N).
t(count_builtin) :- bb_put(cnt, 0), catch(atom_length(_, _), _, count(_)), bb_get(cnt, N), write(N).
t(count_call_var) :- bb_put(cnt, 0), catch(call(_), _, count(_)), bb_get(cnt, N), write(N).
t(cut_after_nondet) :- findall(X, cut_after(X), L), write(L).
t(nondet_recovery) :- findall(X, nondet_rec(X), L), write(L).
t(backtrack_into_goal) :- findall(R, into_goal(R), L), write(L).

main :-
	forall(
		member(Name, [var_goal_ite, var_goal_call, throw_call, ball_arg,
			in_condition, count_var_goal, count_builtin, count_call_var,
			cut_after_nondet, nondet_recovery, backtrack_into_goal]),
		(	write(Name), write(': '),
			(	catch(t(Name), E, (write(uncaught), write(' '), writeq(E)))
			->	true
			;	write(failed)
			),
			nl
		)
	).
%---------------------------------------------------------------- 192 sundry_csv
:- initialization(main).

% CSV: parse_csv_line/2,3 and write_csv_file/3.
%
% Each check states its own expected value, so csv.expected is just a
% list of "ok" lines and a regression shows up as "FAILED got ...".
% The two write checks additionally print the exact bytes written, so
% a quoting change is pinned in csv.expected rather than hidden behind
% a round-trip that might compensate for its own bug.

:- use_module(library(lists)).

% In the current directory, not /tmp: Windows and WASI have no such
% path, and the runner already works from the repo root. Deleted by
% cleanup/0 below.

tmpfile('tmp.csv_test.csv').

% --------------------------------------------------------------- util

% parse_csv_line yields each field as a char list (or a number under
% numbers(true)); normalise to atoms so the expectations read plainly.
norm(F, A) :- is_list(F), !, atom_chars(A, F).
norm(F, F).

fields(Text, Fs) :-
	atom_codes(Text, Cs),
	parse_csv_line(Cs, Raw),
	maplist(norm, Raw, Fs).

fields(Text, Opts, Fs) :-
	atom_codes(Text, Cs),
	parse_csv_line(Cs, Raw, Opts),
	maplist(norm, Raw, Fs).

chk(Name, Got, Want) :-
	(	Got == Want
	->	format("~w: ok~n", [Name])
	;	format("~w: FAILED got ~q want ~q~n", [Name, Got, Want])
	).

chk_err(Name, Goal, Want) :-
	catch((call(Goal), Got = no_error), error(E,_), Got = E),
	(	Got == Want
	->	format("~w: ok~n", [Name])
	;	format("~w: FAILED got ~q want ~q~n", [Name, Got, Want])
	).

str_atom(S, A) :- string_codes(S, Cs), atom_codes(A, Cs).

read_lines(S, Ls) :-
	read_line_to_string(S, L),
	(	L == end_of_file
	->	Ls = []
	;	Ls = [L|T], read_lines(S, T)
	).

file_lines(Lines) :-
	tmpfile(F), open(F, read, S, []), read_lines(S, Lines), close(S).

% ------------------------------------------------------------ parsing

test_plain :-
	fields('a,b,c', Fs),
	chk(plain, Fs, [a,b,c]).

test_empty_fields :-
	fields(',,', Fs),
	chk(empty_fields, Fs, ['','','']).

test_quoted_plain :-
	fields('"x","y","z"', Fs),
	chk(quoted_plain, Fs, [x,y,z]).

% A quoted field may contain the separator - that is the whole point of
% quoting, and getting it wrong silently splits one field into two.
test_quoted_sep :-
	fields('"a,b",c', Fs),
	chk(quoted_sep, Fs, ['a,b', c]).

test_quoted_sep_last :-
	fields('c,"a,b"', Fs),
	chk(quoted_sep_last, Fs, [c, 'a,b']).

% RFC 4180: "" inside a quoted field is a literal quote and the field
% STAYS quoted. Before this was fixed the parser left quoted state after
% the escaped quote, so the following separator was taken literally and
% `"a""b",c` came back as the single field `a"b,c`.
test_escaped_quote :-
	fields('"a""b",c', Fs),
	chk(escaped_quote, Fs, ['a"b', c]).

test_escaped_quote_only :-
	fields('""""', Fs),
	chk(escaped_quote_only, Fs, ['"']).

test_mixed_quoting :-
	fields('"a",b,"c,d",e', Fs),
	chk(mixed_quoting, Fs, [a, b, 'c,d', e]).

% ------------------------------------------------------------ options

test_opt_sep :-
	fields('a;"b;c";d', [sep(';')], Fs),
	chk(opt_sep, Fs, [a, 'b;c', d]).

test_opt_numbers :-
	fields('1,2,x', [numbers(true)], Fs),
	chk(opt_numbers, Fs, [1, 2, x]).

test_opt_trim :-
	fields('  a  ,  b  ', [trim(true)], Fs),
	chk(opt_trim, Fs, [a, b]).

test_opt_functor :-
	atom_codes('a,b', Cs),
	parse_csv_line(Cs, Row, [functor(row)]),
	Row =.. [F|Raw],
	maplist(norm, Raw, Fs),
	chk(opt_functor, F-Fs, row-[a,b]).

% arity/1 pins the expected column count; a mismatch must be reported
% rather than silently accepted.
test_opt_arity_ok :-
	atom_codes('a,b', Cs),
	parse_csv_line(Cs, Row, [functor(row), arity(2)]),
	functor(Row, F, N),
	chk(opt_arity_ok, F/N, row/2).

test_opt_arity_bad :-
	atom_codes('a,b,c', Cs),
	chk_err(opt_arity_bad,
		parse_csv_line(Cs, _, [functor(row), arity(2)]),
		domain_error(row_arity, 2)).

% ------------------------------------------------------------ writing

% The exact bytes matter: a field containing the separator or a quote
% must come back out quoted, with embedded quotes doubled. Printing the
% line pins that in csv.expected.
test_write_quoting :-
	tmpfile(F),
	write_csv_file(F, [[a,'b,c'],[d,'say "hi"']], []),
	file_lines(Lines),
	maplist(str_atom, Lines, As),
	chk(write_quoting, As, ['a,"b,c"', 'd,"say ""hi"""']).

test_write_plain :-
	tmpfile(F),
	write_csv_file(F, [[a,b],[1,2]], []),
	file_lines(Lines),
	maplist(str_atom, Lines, As),
	chk(write_plain, As, ['a,b', '1,2']).

% ---------------------------------------------------------- round trip

roundtrip(Rows) :-
	tmpfile(F),
	write_csv_file(F, Rows, []),
	file_lines(Lines),
	maplist(line_fields, Lines, Back),
	Back = Rows.

line_fields(Line, Fs) :-
	string_codes(Line, Cs),
	parse_csv_line(Cs, Raw),
	maplist(norm, Raw, Fs).

test_roundtrip :-
	Cases = [ [[a,b],[c,d]],
	          [[a,'b,c'],[d,e]],
	          [[a,'say "hi"'],[b,c]],
	          [['x,y','a"b']],
	          [[a,'',b]],
	          [['"']],
	          [[',']] ],
	(	forall(member(Rows, Cases), roundtrip(Rows))
	->	format("roundtrip: ok~n")
	;	member(Bad, Cases), \+ roundtrip(Bad),
		format("roundtrip: FAILED on ~q~n", [Bad])
	).

% -------------------------------------------------------------- errors

test_err_write_bad_row :-
	tmpfile(F),
	chk_err(err_write_bad_row,
		write_csv_file(F, [notalist], []),
		type_error(list, notalist)).

% ------------------------------------------------------------------ go

cleanup :- tmpfile(F), ( catch(delete_file(F), _, true) -> true ; true ).

% Each check runs independently: a failing or throwing test must not
% stop the ones after it, or the first regression hides every later
% one. (Seen for real - on a pre-fix build this file used to abort at
% escaped_quote and never reached the write or round-trip checks.)

run(T) :-
	(	catch(T, E, (format("~w: EXCEPTION ~q~n", [T, E]), true))
	->	true
	;	format("~w: FAILED (goal failed)~n", [T])
	).

main :-
	forall(member(T, [test_plain,
	                  test_empty_fields,
	                  test_quoted_plain,
	                  test_quoted_sep,
	                  test_quoted_sep_last,
	                  test_escaped_quote,
	                  test_escaped_quote_only,
	                  test_mixed_quoting,
	                  test_opt_sep,
	                  test_opt_numbers,
	                  test_opt_trim,
	                  test_opt_functor,
	                  test_opt_arity_ok,
	                  test_opt_arity_bad,
	                  test_write_quoting,
	                  test_write_plain,
	                  test_roundtrip,
	                  test_err_write_bad_row]),
	       run(T)),
	cleanup.
%----------------------------------------------------- 193 sundry_cut_after_call
% A compiled call/1, call/N, *-> or if/3 whose goal leaves choices keeps
% its barrier for them, but a cut later in the clause must still reach
% the clause's own alternatives. drop_barrier() used to leave the frame
% in the barrier's cut generation, so these kept the clause's last
% alternative (9, 8) or, for if/3, fell into its else branch.

:- initialization(main).

p01(X) :- call(member(X,[1,2,3])), !.
p01(9).
p02(X) :- call(member, X, [1,2,3]), !.
p02(9).
p03(X) :- (member(X,[1,2,3]) *-> true), !.
p03(9).
p04(X) :- (member(X,[1,2,3]) *-> true ; true), !.
p04(9).
p05(X) :- if(member(X,[1,2,3]), true, true), !.
p05(9).
p06(X) :- call(lists:member(X,[1,2,3])), !.
p06(9).
p07(X) :- call(member(X,[1,2,3])), X >= 2, !.
p07(9).
p08(X) :- call(call(member(X,[1,2]))), !.
p08(9).
p09(X) :- call(member(X,[1,2,3])), !, X > 5.
p09(9).
p10(X) :- (member(X,[1,2,3]) *-> ! ; true).
p10(9).
p11(X) :- G = member(X,[1,2,3]), call(G), !.
p11(9).
p12(X-Y) :- call(member(X,[1,2])), call(member(Y,[a,b])), !.
p12(9-9).
p13(X) :- if(member(X,[1,2,3]), X > 1, true), !.
p13(9).
p14(X) :- call(member(X,[1,2,3])), !.
p14(X) :- X = 8.
p14(9).

% The goal's own choices and cuts are untouched.

q01(X) :- call(member(X,[1,2,3])), X > 1.
q02(X) :- ( call((member(X,[1,2,3]), !)) ; X = 4 ).
q03(X) :- call(member(Y,[1,2,3])), q03a(Y, X).
q03(9).
q03a(Y, X) :- call(member(X,[Y,Y])), !.

% An if/3 or *-> condition whose last choice fails, not just runs out.

r01(X) :- if((member(X,[1,2]) ; fail), true, X = none).
r02(X) :- ((member(X,[1,2]) ; fail) *-> true ; X = none).
r03(X) :- if(fail, true, X = none).

main :-
	forall(
		member(P, [p01,p02,p03,p04,p05,p06,p07,p08,p09,p10,p11,p12,p13,p14,q01,q02,q03,r01,r02,r03]),
		(	G =.. [P, X],
			findall(X, G, L),
			write(P), write(': '), writeq(L), nl
		)
	).
%------------------------------------------------- 194 sundry_cyclic_print_depth
% Printing a cyclic term under a max_depth cutoff reaches for the name
% of the variable it elides, in the parser's variable table. Only the
% query that parsed the goal has one: an engine (or a thread) has a NULL
% q->top, and the lookup crashed. It is reached from throw_error() too,
% which clamps depth to 10, so any error whose culprit was cyclic took
% the process down.

:- initialization(main).

check(Name, Goal) :-
	(	catch(call(Goal), E, (write(Name), write(' THREW '), writeq(E), nl, fail))
	->	write(Name), write(' ok'), nl
	;	write(Name), write(' FAILED'), nl
	).

% write_term/2 with an explicit cutoff, inside an engine

in_engine(Goal) :-
	engine_create(done, Goal, E),
	engine_next(E, done),
	engine_destroy(E).

written :-
	in_engine((X = f(X), write_term(X, [max_depth(5)]), nl)).

% and the same term as an error culprit, where the cutoff comes from
% throw_error() rather than from write options

thrown :-
	in_engine((X = f(X), catch(atom_length(X, _), error(type_error(atom, _), _), true))).

% a cyclic list takes a different path through the printer

list :-
	in_engine((L = [a|L], write_term(L, [max_depth(5)]), nl)).

main :-
	check(written, written),
	check(thrown, thrown),
	check(list, list).
%-------------------------------------------------------- 195 sundry_dcg_consult
% Differential test for the CONSULT path.
%
% dcg_differential.pl and dcg_corpus.pl both drive '$dcg_rule'/2 - the
% RUNTIME path. Phase 1 moved consult-time translation into C as a
% separate path: same xlate_rule(), but different variable creation
% (named, registered by assign_vars) and different cell copying (plain
% dup_cells rather than by-ref). All 829 corpus rules can agree while
% consult is visibly broken, and during phase 1 that is exactly what
% happened - every regression surfaced through unrelated tests instead.
%
% This closes that. The rules below are consulted for real when this file
% loads, so they go through parser.c's hook, assign_vars, process_clause
% and term_to_body. Each is then read back with clause/2 and compared
% against the reference translation of the same rule.
%
% Each rule needs `:- dynamic` so clause/2 can see it, and a matching
% src/2 fact carrying the source term. The duplication is deliberate: the
% rule has to be a real clause for the consult path to translate it, and
% a term for the reference to translate.

:- initialization(main).
:- use_module(library(dcgs)).
:- ensure_loaded('tests/dcg_reference').
:- use_module(library(lists)).

:- dynamic(c01/2).
c01 --> [].
src(c01, (c01 --> [])).

:- dynamic(c02/2).
c02 --> b.
src(c02, (c02 --> b)).

:- dynamic(c03/2).
c03 --> b, c.
src(c03, (c03 --> b, c)).

:- dynamic(c04/2).
c04 --> b, c, d.
src(c04, (c04 --> b, c, d)).

:- dynamic(c05/2).
c05 --> [x,y,z].
src(c05, (c05 --> [x,y,z])).

:- dynamic(c06/2).
c06 --> "abc".
src(c06, (c06 --> "abc")).

:- dynamic(c07/2).
c07 --> b ; c.
src(c07, (c07 --> b ; c)).

:- dynamic(c08/2).
c08 --> b | c.
src(c08, (c08 --> b | c)).

:- dynamic(c09/2).
c09 --> {g}.
src(c09, (c09 --> {g})).

:- dynamic(c10/2).
c10 --> !.
src(c10, (c10 --> !)).

:- dynamic(c11/2).
c11 --> b -> c ; d.
src(c11, (c11 --> b -> c ; d)).

:- dynamic(c12/2).
c12 --> call(x).
src(c12, (c12 --> call(x))).

:- dynamic(c13/2).
c13 --> phrase(x).
src(c13, (c13 --> phrase(x))).

:- dynamic(c14/3).
c14(X) --> b(X), [X].
src(c14, (c14(X) --> b(X), [X])).

:- dynamic(c15/2).
c15, [p] --> b.
src(c15, (c15, [p] --> b)).

:- dynamic(c16/2).
c16 --> m:b.
src(c16, (c16 --> m:b)).

:- dynamic(c17/2).
c17 --> _X.
src(c17, (c17 --> _X)).

:- dynamic(c18/2).
c18 --> [], b, [].
src(c18, (c18 --> [], b, [])).

:- dynamic(c19/2).
c19 --> (b,c), (d;e), {f}.
src(c19, (c19 --> (b,c), (d;e), {f})).

:- dynamic(c20/2).
c20 --> "ab", c, "de".
src(c20, (c20 --> "ab", c, "de")).

:- dynamic(c21/4).
c21(X,Y) --> b(X), c(Y), [X,Y].
src(c21, (c21(X,Y) --> b(X), c(Y), [X,Y])).

:- dynamic(c22/2).
c22, [p,q] --> b, c.
src(c22, (c22, [p,q] --> b, c)).

% Meta-predicate in a {} body: this is the shape that exposed the
% clause-growth bugs in phase 1, because expand_meta_predicate() inserts
% cells into the freshly built clause.
:- dynamic(c23/2).
c23 --> {maplist(=(1), [_,_])}, b.
src(c23, (c23 --> {maplist(=(1), [_,_])}, b)).

:- dynamic(c24/2).
c24 --> b, {maplist(succ, [1], _)}, c.
src(c24, (c24 --> b, {maplist(succ, [1], _)}, c)).

% --- expected pipeline differences -------------------------------------
%
% The consult path runs stages the reference translation never sees, so
% for these the two SHOULD differ. Asserted as differences rather than
% skipped, so that a stage quietly ceasing to run is a failure and not a
% silent pass.

pipeline_extra(c13, 'phrase/3 inlined by goal_expansion').
pipeline_extra(c23, 'meta-arguments module-qualified by expand_meta_predicate').
pipeline_extra(c24, 'meta-arguments module-qualified by expand_meta_predicate').

% --- checking ----------------------------------------------------------

check(Name, Status) :-
	src(Name, Rule),
	Rule = (Head0 --> _),
	strip_pushback(Head0, Head1),
	functor(Head1, F, A),
	A2 is A + 2,
	functor(Head, F, A2),
	(  clause(Head, Body) -> Got = (Head :- Body) ; Got = no_clause ),
	(  catch(dcg_reference:dcg_rule(Rule, Ref0), E, (Ref0 = err(E)))
	-> Ref = Ref0
	;  Ref = no_reference
	),
	(  pipeline_extra(Name, Why)
	-> (  variant(Got, Ref)
	   -> format("PIPELINE-EXTRA-GONE ~w: expected to differ (~w) but matched~n", [Name, Why]),
	      Status = bad
	   ;  Status = ok
	   )
	;  variant(Got, Ref)
	-> Status = ok
	;  format("CONSULT-DIFF ~w~n   consulted ~q~n   reference ~q~n", [Name, Got, Ref]),
	   Status = bad
	).

strip_pushback((H, _), H) :- !.
strip_pushback(H, H).

main :-
	findall(S, (src(Name,_), check(Name, S)), Ss),
	length(Ss, N),
	findall(x, member(bad, Ss), Bad),
	length(Bad, NBad),
	% A clean run says nothing on stderr. The counts are diagnostics for
	% a run that already has something wrong with it; the guard against
	% the corpus silently collapsing to nothing is the floor below, which
	% goes to stdout where it fails the test.

	(  NBad =:= 0
	-> true
	;  format(user_error, "dcg consult: ~w rules, ~w bad~n", [N, NBad])
	),
	(  N < 20
	-> format("CONSULT-CORPUS-TOO-SMALL: ~w~n", [N])
	;  true
	),
	(  NBad =:= 0
	-> format("dcg consult: all rules agree~n")
	;  format("dcg consult: ~w of ~w disagree~n", [NBad, N])
	).
%--------------------------------------------------------- 196 sundry_dcg_corpus
% Differential test over every DCG rule actually in the tree.
%
% The companion test (dcg_differential.pl) uses a hand-built corpus of
% ISO 7.14 constructs. That found two bugs, which is exactly why a
% hand-built corpus is not enough: both hid in shapes nobody thought to
% write down. This one reads library/*.pl and tests/ with the real
% reader and compares native '$dcg_rule'/2 against the still-live
% dcgs:dcg_rule/2 on every --> rule it finds.
%
% Reading rather than generating a corpus file means it cannot go stale:
% a DCG rule added to any library is covered the next time this runs.
%
% Directives are NOT executed, with two whitelisted exceptions - op/3 and
% set_prolog_flag/2 - because without them a file's own operators and
% double_quotes setting are not in effect and its terms either fail to
% read or read as something else. Anything unreadable is counted and
% skipped rather than silently dropped; the counts go to stderr, which
% tests/run.sh does not capture, so stdout stays stable as files come
% and go.

:- initialization(main).
:- use_module(library(dcgs)).
:- ensure_loaded('tests/dcg_reference').
:- use_module(library(lists)).

% Any file whose rules should be exercised. Directories, not files, so
% new files are picked up automatically.

dir('library').
dir('tests/tests').
dir('tests/issues').
dir('tests/issues-OLD').
dir('tests/slow').
dir('tests/misc').

pl_file(Path) :-
	dir(Dir),
	catch(directory_files(Dir, Fs), _, fail),
	member(F, Fs),
	atom_concat(_, '.pl', F),
	atom_concat(Dir, '/', Dir1),
	atom_concat(Dir1, F, Path).

% --- comparison ------------------------------------------------------

run_native(R, X) :-
	(  catch('$dcg_rule'(R, Out), E, true)
	-> (var(E) -> X = ok(Out) ; X = err(E))
	;  X = failed
	).

run_ref(R, Y) :-
	(  catch(dcg_reference:dcg_rule(R, Out), E, true)
	-> (var(E) -> Y = ok(Out) ; Y = err(E))
	;  Y = failed
	).

% The one permanent divergence: #1102 (== #832). A nonvar non-callable in
% non-terminal position raises natively and is silently mistranslated by
% the reference. Not expected to appear in real library code, but if it
% does this must not be reported as a corpus failure.

known_divergence(X, _) :-
	X = err(error(type_error(callable, _), _)).

compare_rule(File, R) :-
	run_native(R, X),
	run_ref(R, Y),
	(  variant(X, Y) -> true
	;  known_divergence(X, Y)
	-> format(user_error, "~w: known #1102 divergence~n", [File])
	;  format("DIFF in ~w~n   rule   ~q~n   native ~q~n   ref    ~q~n", [File, R, X, Y])
	).

% --- scanning --------------------------------------------------------

% op/3 and set_prolog_flag/2 only. Executing arbitrary directives out of
% every file in the tree would be both slow and destructive.

apply_directive(op(P,T,N)) :- !, catch(op(P,T,N), _, true).
apply_directive(set_prolog_flag(F,V)) :- !, catch(set_prolog_flag(F,V), _, true).
apply_directive(_).

handle(File, T, R0, R, S0, S) :-
	(  T = (:- D)
	-> apply_directive(D), R = R0, S = S0
	;  T = (_ --> _)
	-> compare_rule(File, T), R is R0+1, S = S0
	;  R = R0, S = S0
	).

scan(Stream, File, R0, R, S0, S) :-
	(  catch(read_term(Stream, T, []), _, T = '$unreadable')
	-> true
	;  T = end_of_file
	),
	(  T == end_of_file
	-> R = R0, S = S0
	;  T == '$unreadable'
	-> S1 is S0+1, scan(Stream, File, R0, R, S1, S)
	;  handle(File, T, R0, R1, S0, S1),
	   scan(Stream, File, R1, R, S1, S)
	).

scan_file(File, R0, R, S0, S) :-
	(  catch(open(File, read, Stream), _, fail)
	-> (  catch(scan(Stream, File, R0, R, S0, S), _, (R = R0, S = S0))
	   -> true
	   ;  R = R0, S = S0
	   ),
	   catch(close(Stream), _, true)
	;  R = R0, S = S0
	).

scan_all([], R, R, S, S, F, F).
scan_all([File|Fs], R0, R, S0, S, F0, F) :-
	scan_file(File, R0, R1, S0, S1),
	F1 is F0+1,
	scan_all(Fs, R1, R, S1, S, F1, F).

main :-
	findall(P, pl_file(P), Ps0),
	msort(Ps0, Ps),
	scan_all(Ps, 0, Rules, 0, Skipped, 0, Files),

	% Guard the silent-zero failure mode: if the scan stops finding
	% rules (a reader change, a moved directory), this test would
	% otherwise pass by doing nothing.
	%
	% A clean run says nothing on stderr - the counts are only a
	% diagnostic for a run that has already failed, and a DIFF prints
	% the offending file and both translations itself.

	(  Rules < 100
	-> format("CORPUS-TOO-SMALL: only ~w rules found~n", [Rules]),
	   format(user_error, "dcg corpus: ~w files, ~w rules, ~w unreadable terms~n",
	          [Files, Rules, Skipped])
	;  true
	),
	format("dcg corpus: all rules agree~n").
%--------------------------------------------------- 197 sundry_dcg_differential
% Differential test: native '$dcg_rule'/2 against library(dcgs)'s
% dcg_rule/2, which is still live during phases 0-2.
%
% Built so it CANNOT enforce the reference's bugs. The divergence list is
% checked first, and for a listed case the reference is not the oracle:
% the required behaviour is asserted directly, AND the two are asserted
% to differ, so the entry fails loudly if they ever agree again. Without
% that, a harness like this quietly converts every known defect into a
% regression test.
%
% The oracle is tests/dcg_reference.pl, a frozen copy of the shared
% implementation's translation core. It is loaded only by these tests,
% never by the system.

:- initialization(main).
:- use_module(library(dcgs)).
:- ensure_loaded('tests/dcg_reference').

% --- divergence list -------------------------------------------------
%
% Issue #1102 (== #832). A nonvar non-callable in non-terminal position
% is a permanent condition, so the native translator decides it at
% translation time and reports the bare subterm. The reference drops the
% S0/S arguments and leaves it to call/1, which reports the whole body.
% The reference cannot be fixed in place - it is shared with Scryer and
% UWN - so this divergence is permanent, not transitional. If it ever
% starts passing, the reference was fixed upstream and the entry should
% be deleted.

divergence(noncallable_after_braces, (a --> ({fail},1)), type_error(callable,1)).
divergence(noncallable_first,        (a --> (1,{2})),    type_error(callable,1)).
divergence(noncallable_last,         (a --> ({2},1)),    type_error(callable,1)).

% --- corpus ----------------------------------------------------------
%
% Constructs of ISO 7.14, alone and nested, plus the head forms.

case(empty,          (a --> [])).
case(nonterminal,    (a --> b)).
case(conjunction,    (a --> b, c)).
case(conj3,          (a --> b, c, d)).
case(terminals,      (a --> [x,y,z])).
case(terminal_one,   (a --> [x])).
case(string,         (a --> "abc")).
case(alternation,    (a --> b ; c)).
case(bar,            (a --> b | c)).
case(braces,         (a --> {g})).
case(braces_conj,    (a --> {g,h})).
case(cut,            (a --> !)).
case(cut_mixed,      (a --> [x], !, b)).
case(ite_in_alt,     (a --> b -> c ; d)).
case(ite_in_bar,     (a --> (b -> c | d))).
case(call1,          (a --> call(x))).
case(phrase1,        (a --> phrase(x))).
case(phrase2,        (a --> phrase(x,y))).
case(phrase3,        (a --> phrase(x,y,z))).
case(head_args,      (a(X) --> b(X), [X])).
case(head_args2,     (a(X,Y) --> b(X), c(Y))).
case(pushback,       (a, [p] --> b)).
case(pushback_multi, (a, [p,q] --> b, c)).
case(module_head,    (m:a --> b)).
case(module_body,    (a --> m:b)).
case(module_both,    (m:a --> n:b)).
case(var_body,       (a --> _X)).
case(var_in_conj,    (a --> b, _X, c)).
case(empty_mixed,    (a --> [], b, [])).
case(nested,         (a --> (b,c), (d;e), {f})).
case(nested_deep,    (a --> ((b,c);(d,e)), {f}, [g])).
case(alt_of_alt,     (a --> (b;c);(d;e))).
case(partial_list,   (a --> [x|_T])).
case(improper_list,  (a --> [x|y])).
case(negation,       (a --> \+ b)).
case(ite_toplevel,   (a --> (b -> c))).
case(string_conj,    (a --> "ab", c, "de")).

% Long string terminal: emitted as '$string_prefix'/3 rather than
% materialised, so this one is EXPECTED to differ from the reference.
% Without it the optimisation would be untested here - no rule anywhere
% in the tree has a terminal over the 64-byte threshold.

case(long_literal,   (a --> "0123456789012345678901234567890123456789012345678901234567890123456789")).

% Cases where native and reference SHOULD differ for a reason other than
% a defect. Asserted as differences, so that the optimisation silently
% ceasing to fire is a failure rather than a quiet pass.

expected_diff(long_literal, 'long terminal emitted as $string_prefix/3, not materialised').

% --- runners ---------------------------------------------------------

outcome(G, ok(G)) :- catch(G, E, (throw(caught(E)))), !.
outcome(_, failed).

run_native(R, X) :-
	(  catch('$dcg_rule'(R, Out), E, true)
	-> (var(E) -> X = ok(Out) ; X = err(E))
	;  X = failed
	).

run_ref(R, Y) :-
	(  catch(dcg_reference:dcg_rule(R, Out), E, true)
	-> (var(E) -> Y = ok(Out) ; Y = err(E))
	;  Y = failed
	).

% A listed divergence must (a) give the required native answer and
% (b) NOT agree with the reference.

check_divergence(Name) :-
	divergence(Name, Rule, Formal),
	run_native(Rule, X),
	run_ref(Rule, Y),
	(  X = err(error(Formal, _))
	-> (  variant(X, Y)
	   -> format("DIVERGENCE-GONE ~w: reference now agrees, delete the entry~n", [Name])
	   ;  true
	   )
	;  format("DIVERGENCE-FAILED ~w: wanted ~q, got ~q~n", [Name, Formal, X])
	).

check_case(Name) :-
	case(Name, Rule),
	run_native(Rule, X),
	run_ref(Rule, Y),
	(  expected_diff(Name, Why)
	-> (  variant(X, Y)
	   -> format("EXPECTED-DIFF-GONE ~w: should differ (~w) but matched~n", [Name, Why])
	   ;  true
	   )
	;  variant(X, Y)
	-> true
	;  format("DIFF ~w~n   native ~q~n   ref    ~q~n", [Name, X, Y])
	).

main :-
	forall(divergence(Name, _, _), check_divergence(Name)),
	forall(case(Name, _), check_case(Name)),
	findall(x, divergence(_,_,_), Ds), length(Ds, ND),
	findall(x, case(_,_), Cs), length(Cs, NC),
	findall(x, expected_diff(_,_), Es), length(Es, NE),
	format("dcg differential: ~w cases, ~w divergences, ~w expected diffs~n", [NC, ND, NE]).
%-------------------------------------------------------- 198 sundry_dcg_tabling
% Tabled DCG rules: DCG translation and library(tabling) interacting.
%
% Nothing else in the suite combines `:- table` with `-->`, and the
% combination rests on an ordering that is easy to break by accident:
%
%   library/tabling.pl renames the heads of tabled predicates through
%   user:term_expansion/2, which runs AFTER DCG translation. So the
%   rename sees `expr(S0,S) :- ...` and matches its (Head :- Body)
%   clause. If translation were ever moved to run after user
%   term-expansion - which is what the term_expansion FIXME in parser.c
%   proposes - the rename would instead see `(expr --> ...)`, whose
%   functor is (-->)/2, which its guards reject. Tabled DCG rules would
%   then silently stop being tabled, and the only symptom would be a
%   left-recursive grammar looping instead of terminating.
%
% So this test pins two things:
%
%   1. that the rename ran on the TRANSLATED clause - checked
%      structurally, by the renamed worker existing at arity 2 rather
%      than at the arity of a (-->)/2 term;
%   2. that tabling is actually doing its job - checked behaviourally,
%      by a left-recursive grammar terminating.
%
% (2) is the part that cannot be faked: without tabling this grammar
% dies with resource_error(memory). That control is deliberately NOT run
% here, since it would consume the memory it is meant to demonstrate;
% it was verified separately, and identically, on this branch and on
% main.

:- initialization(main).
:- use_module(library(dcgs)).
:- use_module(library(tabling)).
:- use_module(library(lists)).

% Left-recursive: expr//0 calls itself on the same input. This is the
% natural way to write a left-associative operator and is not writable
% in plain Prolog without restructuring the grammar.

:- table expr//0.

expr --> expr, [+], term.
expr --> term.

term --> [n].

% An ordinary right-recursive tabled non-terminal, for the plain case.

:- table as//0.

as --> [].
as --> [a], as.

report(Name, true) :- !, format("dcg tabling: ~w ok~n", [Name]).
report(Name, _) :- format("DCG-TABLING-FAIL ~w~n", [Name]).

check(Name, Goal) :-
	(  catch(Goal, E, (format("DCG-TABLING-ERROR ~w: ~q~n", [Name, E]), fail))
	-> report(Name, true)
	;  report(Name, false)
	).

% The rename produces `<name> tabled`/<arity>. Arity 2 is the point: it
% is the DCG-translated head that got renamed, not the (-->)/2 term.

renamed_worker_exists :-
	current_predicate('expr tabled'/2).

main :-
	check(left_recursion_parses,   phrase(expr, [n,+,n,+,n])),
	check(left_recursion_rejects,  \+ phrase(expr, [n,+])),
	check(plain_tabled_dcg,        phrase(as, [a,a,a])),
	check(plain_tabled_rejects,    \+ phrase(as, [a,b])),
	check(rename_ran_on_translated_clause, renamed_worker_exists).
%-------------------------------------------------------- 199 sundry_expand_term
% expand_term/2 is the expansion driver, not just a grammar-rule
% translator: term_expansion/2 hook first, then translation of the
% result, then identity. It used to have only the middle clause, so it
% failed on every term that was not a grammar rule and never consulted
% the hook - which also meant a user could not iterate expansion by
% hand, the usual answer to a system that expands only once.

term_expansion(fa, fb).
term_expansion(fb, fc).
term_expansion(mklist, [(ra --> [a]), plain]).

% expansion by hand to a fixed point, which needs the hook to be reached
fixpoint(T, X) :-
	expand_term(T, T1),
	(   T1 == T
	->  X = T
	;   fixpoint(T1, X)
	).

:- initialization(main).

main :-
	check(identity, (expand_term(plain_atom, A), A == plain_atom)),
	check(rule_identity, (expand_term((h :- b), B), B == (h :- b))),
	check(hook, (expand_term(fa, C), C == fb)),
	check(single_pass, (expand_term(fa, D), D \== fc)),
	check(manual_fixpoint, (fixpoint(fa, E), E == fc)),
	check(dcg, (expand_term((g --> [x]), F), F = (g(S0,S) :- S0 = [x|S]))),
	check(hook_output_dcg,
		(expand_term(mklist, G), G = [(ra(T0,T) :- T0 = [a|T]), plain])).

check(Name, Goal) :-
	(   catch(Goal, Err, (format("~w threw ~q~n", [Name,Err]), fail))
	->  format("~w ok~n", [Name])
	;   format("~w FAILED~n", [Name])
	).
%-------------------------------------------------------------- 200 sundry_flags
:- initialization(main).

% The flags describing the build: os names the host operating system
% and rationals says whether this one has rational numbers.
%
% The value of os differs by platform, so what is checked here is
% everything about it that does not: that it is a known atom, that it
% agrees with the unix flag, that it enumerates, and that it cannot be
% set. The unix flag said true on every host, Windows included, until
% it was derived from the same answer.

:- use_module(library(lists)).

known(windows). known(linux). known(macos). known(android).
known(freebsd). known(openbsd). known(netbsd). known(dragonfly).
known(solaris). known(haiku). known(riscos). known(cygwin).
known(wasi). known(emscripten).

% The hosts with no POSIX to speak of; everything else is a unix.

not_unix(windows). not_unix(wasi). not_unix(riscos).

check(Name, Goal) :-
	(	catch(call(Goal), E, (write(Name), write(' THREW '), writeq(E), nl, fail))
	->	write(Name), write(' ok'), nl
	;	write(Name), write(' FAILED'), nl
	).

% it is bound to one of the names the build knows how to report

named :-
	current_prolog_flag(os, OS),
	atom(OS),
	(	known(OS)
	->	true
	;	write('  (unrecognised os: '), writeq(OS), write(')'), nl,
		fail
	).

% asking twice gives the same answer, and asking for the wrong one fails
% rather than erroring

stable :-
	current_prolog_flag(os, A),
	current_prolog_flag(os, B),
	A == B,
	\+ current_prolog_flag(os, 'no-such-os').

% it turns up in the enumeration, not only when asked for by name

enumerated :-
	current_prolog_flag(os, OS),
	findall(V, (current_prolog_flag(F, V), F == os), Vs),
	Vs == [OS].

% unix says what os implies

agrees_with_unix :-
	current_prolog_flag(os, OS),
	current_prolog_flag(unix, U),
	(	not_unix(OS)
	->	U == false
	;	U == true
	).

% read-only

read_only :-
	catch(set_prolog_flag(os, linux), error(E, _), true),
	nonvar(E),
	E = permission_error(modify, flag, os).

% rationals is a plain boolean, and it enumerates too

rationals_boolean :-
	current_prolog_flag(rationals, R),
	memberchk(R, [true,false]),
	findall(V, (current_prolog_flag(F, V), F == rationals), Vs),
	Vs == [R].

% and it says what the build actually does: rdiv/2 yields a rational
% where they are supported, and there are none to yield where they
% are not

rationals_agree :-
	current_prolog_flag(rationals, R),
	(	R == true
	->	X is 1 rdiv 3,
		rational(X),
		\+ integer(X),
		Y is 2 rdiv 1, Y =:= 2			% a whole one normalises to an integer
	;	\+ catch((Z is 1 rdiv 3, rational(Z)), _, fail)
	).

rationals_read_only :-
	catch(set_prolog_flag(rationals, false), error(E, _), true),
	nonvar(E),
	E = permission_error(modify, flag, rationals).

main :-
	check(named, named),
	check(stable, stable),
	check(enumerated, enumerated),
	check(agrees_with_unix, agrees_with_unix),
	check(read_only, read_only),
	check(rationals_boolean, rationals_boolean),
	check(rationals_agree, rationals_agree),
	check(rationals_read_only, rationals_read_only).
%----------------------------------------------------- 201 sundry_initialization
% An initialization/1 goal runs when the file that recorded it has
% finished loading - not when some nested load finishes.
%
% library(builtins) and library(iso_ext) have no module directive of
% their own, so they load into whatever module is consulting them. The
% run_init flag lives on the module, so the end of that nested load
% used to fire the consulting file's goals, before the rest of the
% file that defines them had been read: main/0 did not exist yet.

:- initialization(main).

:- write(before), nl.
:- use_module(library(iso_ext)).
:- write(after), nl.


% one recorded after the nested load, to show they still run in the
% order they were seen and still run at the end

:- initialization((write(second), nl)).

main :- write(main_ran), nl.
%-------------------------------------------- 202 sundry_initialization_deferred
% The other side of initialization.pl. A file pulled in by
% ensure_loaded/1 records its initialization goals but deliberately
% does not run them - it loads with init false - leaving them for the
% load still going on. So this file, which has no initialization
% directive of its own, is the one that has to run the goal of the file
% it ensure_loads.
%
% That is exactly Logtalk's loader: integration/logtalk_tp.pl only
% ensure_loads the adapter, paths and core files, and core.pl's
% ':- initialization('$lgt_runtime_initialization')' is what creates the
% '$lgt_compiler' mutex. Requiring a load to have seen a directive of
% its own, without letting an ensure_loaded file hand its goals up,
% meant the goal never ran and every Logtalk test set came up broken
% with existence_error(thread_object,'$lgt_compiler').

:- write(loading), nl.
:- ensure_loaded(initialization_nested).
:- write(loaded), nl.
%---------------------------------------------- 203 sundry_initialization_nested
% Helper for initialization.pl, and a test in its own right: run on its
% own the goal below belongs to this load and runs at the end of it;
% pulled in by that file's ensure_loaded/1 it is recorded here but left
% for the load still going on to run, which is what Logtalk's loader
% relies on - logtalk_tp.pl ensure_loads core.pl and has no
% initialization directive of its own.

:- initialization((write(nested_ran), nl)).

nested_pred.
%----------------------------------------------------- 204 sundry_nested_capture
:- initialization(main).

% with_output_to/2 nests. '$capture_output' used to be a toggle on the
% stream, so a capture started inside another turned capturing off and
% freed the outer buffer with it: both came back empty and the text
% went to the real output. The captures now share the buffer, each
% remembering how much of it was already there, and taking one
% truncates the buffer back so the capture around it never sees it.

check(Name, Goal, Expected) :-
	(	catch(call(Goal, Got), error(E, _), Got = threw(E))
	->	true
	;	Got = failed
	),
	(	Got == Expected
	->	write(Name), write(' ok'), nl
	;	write(Name), write(' FAILED got '), writeq(Got),
		write(' wanted '), writeq(Expected), nl
	).

% the inner text belongs to the inner capture and to no other

nested(Out-In) :-
	with_output_to(chars(Out),
		(	write(a),
			with_output_to(chars(In), write(b)),
			write(c)
		)).

% and it holds however deep they go

deep([A,B,C]) :-
	with_output_to(chars(A),
		(	write(1),
			with_output_to(chars(B),
				(	write(2),
					with_output_to(chars(C), write(3)),
					write(4)
				)),
			write(5)
		)).

% the atom sink nests the same way

atoms(X-Y) :-
	with_output_to(atom(X),
		(	write(a),
			with_output_to(atom(Y), write(b)),
			write(c)
		)).

% two captures in sequence inside one, neither leaking into the other

siblings([A,B,C]) :-
	with_output_to(chars(A),
		(	with_output_to(chars(B), write(x)),
			write(m),
			with_output_to(chars(C), write(y))
		)).

% a goal that throws out of an inner capture still gives the stream
% back: the outer capture's cleanup runs, and writing works after

after_throw(done) :-
	catch(
		with_output_to(chars(_),
			(	write(x),
				with_output_to(chars(_), throw(oops))
			)),
		oops, true),
	with_output_to(chars(Cs), write(ok)),
	Cs == [o,k].

% an unnested capture is what it always was

plain(X) :- with_output_to(chars(X), write(hello)).

empty(X) :- with_output_to(chars(X), true).

main :-
	check(nested, nested, [a,c]-[b]),
	check(deep, deep, [['1','5'],['2','4'],['3']]),
	check(atoms, atoms, ac-b),
	check(siblings, siblings, [[m],[x],[y]]),
	check(after_throw, after_throw, done),
	check(plain, plain, [h,e,l,l,o]),
	check(empty, empty, []).
%---------------------------------------------------- 205 sundry_not_a_character
:- initialization(main).

% An octet that cannot be part of a UTF-8 sequence is not a character,
% and ISO 13211-1 8.12.1.3 i makes reading one a representation error.
% get_char/2 and peek_char/2 said so already; read/2 reported a syntax
% error, and a character left behind in the line read/2 had buffered
% was decoded silently and then reported as the end of the file
% (issue #1099).
%
% The octet right behind an end token is the one read/2 has to peek at
% to confirm it (6.4.8). That position used to escape the check: 0xff
% became a syntax error and every other ill-formed octet was parsed
% around and left in the stream unremarked.
%
% Nor is a quoted token or a comment exempt: inside quotes the octet was
% a syntax error, and inside a comment it was skipped along with the
% comment, so the term after it was read as if nothing were wrong.
%
% Each check states what it expects, so not_a_character.expected is a
% list of "ok" lines and a regression reads as "FAILED got ...".

% In the current directory, not /tmp: Windows and WASI have no such
% path. Deleted at the end of main/0.

tmpfile('tmp.not_a_character.txt').

% Write Text, then the octet 0xff behind it.

write_sentinel_file(Text) :-
	write_byte_file(Text, 0xff).

% ...or any other octet: 0xfe, 0x80 and 0xc0 can no more begin a UTF-8
% sequence than 0xff can, and 0xff is the only one that was ever noticed.

write_byte_file(Text, Byte) :-
	write_byte_file(Text, Byte, '').

% ...with After behind the octet, so skipping it would read a term.

write_byte_file(Text, Byte, After) :-
	tmpfile(F),
	open(F, write, S, []),
	write(S, Text),
	close(S),
	open(F, append, B, [type(binary)]),
	put_byte(B, Byte),
	close(B),
	open(F, append, A, []),
	write(A, After),
	close(A).

check(Name, Goal, Expected) :-
	tmpfile(F),
	open(F, read, S, []),
	(	catch(call(Goal, S, Got), E, Got = threw(E))
	->	true
	;	Got = failed
	),
	catch(close(S), _, true),
	(	Got == Expected
	->	write(Name), write(' ok'), nl
	;	write(Name), write(' FAILED got '), writeq(Got),
		write(' wanted '), writeq(Expected), nl
	).

rep_err(G, threw(error(representation_error(character), G))).

% --------------------------------------------------------------------

get_one(S, C) :- get_char(S, C).
peek_one(S, C) :- peek_char(S, C).
read_one(S, T) :- read(S, T).

% read/1, then what the harness looks for behind the term it read

read_then_get(S, C) :- read(S, _), get_char(S, C).
read_then_get2(S, C) :- read(S, _), get_char(S, _), get_char(S, C).

% a peek does not consume, so peeking twice throws twice

peek_twice(S, C) :-
	catch(peek_char(S, _), _, true),
	peek_char(S, C).

main :-
	% nothing but the sentinel
	write_sentinel_file(''),
	rep_err(get_char/2, GetErr),
	check(get_char, get_one, GetErr),
	rep_err(peek_char/2, PeekErr),
	check(peek_char, peek_one, PeekErr),
	rep_err(read/2, ReadErr),
	check(read, read_one, ReadErr),

	% a term, a space, then the sentinel: read/2 takes the whole line
	% into the parser's buffer, and the space and the sentinel must
	% still be found behind it
	write_sentinel_file('1. '),
	check(read_then_get, read_then_get, ' '),
	check(read_then_get2, read_then_get2, GetErr),

	% the octet sits where read/2 must peek to confirm the end token,
	% so it is met there rather than parsed around
	write_sentinel_file('1.'),
	check(read_end_token, read_one, ReadErr),
	write_byte_file('1.', 0xfe),
	check(read_end_token_fe, read_one, ReadErr),
	write_byte_file('1.', 0x80),
	check(read_end_token_80, read_one, ReadErr),
	write_byte_file('1.', 0xc0),
	check(read_end_token_c0, read_one, ReadErr),

	% a layout character between the two is peeked instead, and the
	% octet stays in the stream for a later read to meet
	write_sentinel_file('1.\n'),
	check(read_past_layout, read_one, 1),

	% inside a quoted token, a line comment or a block comment
	write_byte_file('''a', 0xff, '''. '),
	check(read_quoted, read_one, ReadErr),
	write_byte_file('''a', 0x80, '''. '),
	check(read_quoted_80, read_one, ReadErr),
	write_byte_file('% c', 0xff, '\n1. '),
	check(read_line_comment, read_one, ReadErr),
	write_byte_file('/* c', 0xff, ' */ 1. '),
	check(read_block_comment, read_one, ReadErr),

	% peeking is idempotent
	write_sentinel_file(''),
	check(peek_twice, peek_twice, PeekErr),

	% valid multi-byte text is unaffected
	write_sentinel_file('héllo. '),
	check(read_accented, read_one, 'héllo'),
	write_sentinel_file('''é''. '),
	check(read_accented_quoted, read_one, 'é'),
	write_sentinel_file('% é\n1. '),
	check(read_accented_line_comment, read_one, 1),
	write_sentinel_file('/* é */ 1. '),
	check(read_accented_block_comment, read_one, 1),

	tmpfile(F),
	catch(delete_file(F), _, true).
%---------------------------------------------------------- 206 sundry_peek_char
:- initialization(main).

% A peek must not consume what it reports on, including when what it
% reports is that the entity input is not a character. An ill-formed
% sequence used to be swallowed by the peek that raised the error, so
% the following get_char/2 saw whatever came after it.
%
% The 0xff byte is the useful case: it can never begin a UTF-8
% sequence, so it is the standard way to mark "nothing may be read
% past here" in a test input.

write_bytes([], _).
write_bytes([B|Bs], S) :- put_byte(S, B), write_bytes(Bs, S).

make_file(File, Bytes) :-
	open(File, write, S, [type(binary)]),
	write_bytes(Bytes, S),
	close(S).

show(Label, Goal) :-
	(	catch(Goal, error(E, _), (write(Label-threw(E)), nl, fail))
	->	true
	;	true
	).

probe(File, Bytes) :-
	make_file(File, Bytes),
	open(File, read, S, []),
	show(peek_1, (peek_char(S, A), write(peek(A)), nl)),
	show(peek_2, (peek_char(S, B), write(peek(B)), nl)),
	show(get_1,  (get_char(S, C),  write(get(C)),  nl)),
	show(get_2,  (get_char(S, D),  write(get(D)),  nl)),
	close(S),
	nl.

main :-
	File = 'tmp.peek',
	probe(File, [0'a, 0'b]),			% well formed
	probe(File, [0xc3, 0xa9, 0'z]),		% well formed, two octets
	probe(File, [0'a, 0xff]),			% the sentinel behind a character
	probe(File, [0xff, 0'a]),			% the sentinel first
	probe(File, [0'a, 0xc3]),			% truncated sequence at eof
	( catch(delete_file(File), _, true) -> true ; true ).
%-------------------------------------------- 207 sundry_phrase_from_file_binary
:- initialization(main).

:- use_module(library(pio)).
:- use_module(library(dcgs)).
:- use_module(library(lists)).
:- use_module(library(charsio)).

% phrase_from_file/3 mmap()s the file and hands the mapping over as a
% string, which is walked as UTF-8. type(binary) marks that mapping so
% it is walked a byte at a time instead, without copying it: the octets
% of a multi-byte character stay apart, and a file that is not UTF-8 at
% all can still be read.

write_bytes([], _).
write_bytes([B|Bs], S) :- put_byte(S, B), write_bytes(Bs, S).

make_file(File, Bytes) :-
	open(File, write, S, [type(binary)]),
	write_bytes(Bytes, S),
	close(S).

codes_of([], []).
codes_of([C|Cs], [N|Ns]) :- char_code(C, N), codes_of(Cs, Ns).

probe(File, Opts) :-
	(	catch(phrase_from_file(seq(Cs), File, Opts), E, (write(Opts-threw(E)), nl, fail))
	->	codes_of(Cs, Ns),
		write(Opts-Ns), nl
	;	write(Opts-failed), nl
	).

probe_all(File, Bytes) :-
	make_file(File, Bytes),
	probe(File, []),
	probe(File, [type(binary)]),
	nl.

% A byte string and a text string may hold the same bytes and still be
% different lists, so neither may be compared by its backing store.

same(File) :-
	phrase_from_file(seq(B), File, [type(binary)]),
	phrase_from_file(seq(T), File, []),
	(	B = T -> write(unify(yes)) ; write(unify(no)) ), nl,
	compare(O, B, T), write(compare(O)), nl,
	msort([B,T], M), length(M, N), write(msort(N)), nl,
	sort([B,T], S), length(S, D), write(sort(D)), nl,
	nl.

% get_n_chars/3 reads a stream rather than a mapping, but must agree.

chars(File, Type) :-
	open(File, read, S, [type(Type)]),
	get_n_chars(S, 99, Cs),
	close(S),
	codes_of(Cs, Ns),
	write(Type-Ns), nl.

main :-
	File = 'tmp.pff',
	probe_all(File, [0'a, 0'b]),			% ASCII, the two agree
	probe_all(File, [0'c, 0xc3, 0xa9]),		% one character, two octets
	probe_all(File, []),					% empty file maps to []
	make_file(File, [0'a, 0'b]), same(File),	% equal as lists
	make_file(File, [0'c, 0xc3, 0xa9]), same(File),	% differ as lists
	make_file(File, [0'c, 0xc3, 0xa9]),
	chars(File, text),
	chars(File, binary),
	( catch(delete_file(File), _, true) -> true ; true ).
%------------------------------------------ 208 sundry_set_prolog_flag_directive
% Regression: a bare `:- set_prolog_flag(Name, Value).` DIRECTIVE (as
% opposed to a goal inside another directive's body) was silently a
% no-op for any flag other than the five that affect parsing itself
% (double_quotes, character_escapes, occurs_check, strict_iso,
% empty_args). directives() in src/parser.c intercepts set_prolog_flag
% directives at parse time for those five and used to `return true`
% unconditionally afterwards, discarding the directive instead of
% falling through to run it as an ordinary goal - so `tabling`,
% `global_bb`, and the tabling restraint flags never reached the
% runtime set_prolog_flag/2 that actually implements them when set
% this way. Calling set_prolog_flag/2 from inside another goal (eg.
% initialization/1's argument, or a predicate body) always worked; only
% the bare directive form was affected.

:- use_module(library(tabling)).

:- initialization(main).

% A flag with no parse-time meaning, boolean-valued.

:- set_prolog_flag(tabling, false).

test_tabling_directive :-
	(	current_prolog_flag(tabling, false) ->
		write('tabling directive: ok')
	;	write('tabling directive: FAILED')
	),
	nl,
	set_prolog_flag(tabling, true).

% A flag with no parse-time meaning, INTEGER-valued - this is the case
% that broke even after a first fix that only handled unrecognized
% flag NAMES: an earlier `if (!is_interned(p2)) return true` guard
% discarded any non-atom value before the flag name was ever checked.

:- set_prolog_flag(max_answers_for_subgoal, 5).

test_integer_flag_directive :-
	(	current_prolog_flag(max_answers_for_subgoal, 5) ->
		write('integer flag directive: ok')
	;	write('integer flag directive: FAILED')
	),
	nl,
	set_prolog_flag(max_answers_for_subgoal, infinite).

% The five parse-time flags must still take effect immediately (this
% is what the special-casing in directives() exists for in the first
% place) - a regression here would only show up as a syntax error on
% whatever follows, so check it does not by parsing a double-quoted
% string as codes right after switching the flag, within the same
% load.

:- set_prolog_flag(double_quotes, codes).

test_parse_time_flag :-
	X = "ab",
	(	X == [0'a, 0'b] ->
		write('parse-time flag: ok')
	;	write('parse-time flag: FAILED')
	),
	nl.

:- set_prolog_flag(double_quotes, atom).

main :-
	test_tabling_directive,
	test_integer_flag_directive,
	test_parse_time_flag.
%-------------------------------------------------------- 209 sundry_shift_again
% shift/1 returns to the nearest reset/3 that still encloses it, ie. whose
% barrier lies ahead. It used to take the nearest reset/3 choice point
% outright and clear its flag: so backtracking into the goal could not
% shift to it again, a shift after the reset/3 had exited (leaving choices)
% or after an inner one went to the wrong reset/3, and the continuation
% stopped at the end of any call/1, once/1, catch/3 or if-then-else the
% shift sat in, losing the goals after it. Results match SWI and Scryer.

:- initialization(main).

k(C) :- ( C = cont(K) -> call(K) ; call(C) ).
try_shift(B) :- catch(shift(B), _, fail).

a_again(L) :- findall(X-B, reset((member(X,[1,2]), shift(X)), B, _), L).
a_again3(L) :- findall(B, reset((member(X,[1,2,3]), shift(X)), B, _), L).
a_some(L) :- findall(X-B, reset((member(X,[1,2,3]), (X == 2 -> true ; shift(X))), B, _), L).
a_cont(L) :- findall(B-R, (reset((member(X,[1,2]), shift(X), R = after(X)), B, C), k(C)), L).

b_after_exit(L) :- findall(R, (reset(member(X,[1,2]), _, _), ( try_shift(y) -> R = wrongly(X) ; R = none(X) )), L).
b_after_shift(L) :- findall(R, (reset((member(X,[1,2]), shift(X)), B, _), ( try_shift(y) -> R = wrongly(B) ; R = ok(B) )), L).
b_outer_exit(L) :- findall(X-B, reset((reset(member(X,[1,2]), _, _), shift(y)), B, _), L).
b_outer_shift(L) :- findall(X-B1-B2, reset((reset((member(X,[1,2]), shift(in(X))), B1, _), shift(out)), B2, _), L).
b_nested(L) :- findall(B1-B2, reset(reset((member(X,[1,2]), shift(X)), B1, _), B2, _), L).

p_call(X) :- call(shift(a)), X = 1.
p_catch(X) :- catch(shift(a), _, true), X = 1.
p_ite(X) :- ( shift(a) -> X = 1 ; X = 2 ).
p_once(X) :- once(shift(a)), X = 1.
p_inner(X) :- call(shift(a)), X = 1.
p_after(X, Y) :- p_inner(X), Y = 2.
p_after_catch(X, Y) :- catch(p_inner(X), _, true), Y = 2.
p_soft_then(X) :- ( true *-> shift(a) ; true ), X = 1.
p_soft_cond(X) :- ( shift(a) *-> X = 1 ; X = 2 ).

w_call(X) :- reset((call(shift(a)), X = 1), _, C), k(C).
w_once(X) :- reset((once(shift(a)), X = 1), _, C), k(C).
w_catch(X) :- reset((catch(shift(a), _, true), X = 1), _, C), k(C).
w_ite(X) :- reset(((true -> shift(a) ; true), X = 1), _, C), k(C).
w_calln(X) :- reset((call(shift, a), X = 1), _, C), k(C).
w_nested_call(X) :- reset(call(call((shift(a), X = 1))), _, C), k(C).
w_soft(X) :- reset(((true *-> shift(a) ; true), X = 1), _, C), k(C).
w_soft_choices(L) :- findall(Y-X, (reset(((member(Y,[1,2]) *-> shift(Y) ; true), X = 1), _, C), k(C)), L).
w_pred_call(X) :- reset(p_call(X), _, C), k(C).
w_pred_catch(X) :- reset(p_catch(X), _, C), k(C).
w_pred_ite(X) :- reset(p_ite(X), _, C), k(C).
w_pred_once(X) :- reset(p_once(X), _, C), k(C).
w_pred_after(X-Y) :- reset(p_after(X, Y), _, C), k(C).
w_pred_after_catch(X-Y) :- reset(p_after_catch(X, Y), _, C), k(C).
w_pred_soft_then(X) :- reset(p_soft_then(X), _, C), k(C).
w_pred_soft_cond(X) :- reset(p_soft_cond(X), _, C), k(C).

main :-
	forall(
		member(T, [a_again, a_again3, a_some, a_cont,
			b_after_exit, b_after_shift, b_outer_exit, b_outer_shift, b_nested,
			w_call, w_once, w_catch, w_ite, w_calln, w_nested_call, w_soft, w_soft_choices,
			w_pred_call, w_pred_catch, w_pred_ite, w_pred_once, w_pred_after, w_pred_after_catch,
			w_pred_soft_then, w_pred_soft_cond]),
		(	G =.. [T, R],
			(	catch(G, E, R = uncaught(E)) -> true ; R = failed ),
			copy_term(R, R1), numbervars(R1, 0, _),
			write(T), write(': '), print(R1), nl
		)
	).
%----------------------------------------------------- 210 sundry_shift_compiled
% A control construct compiled inline, coming after a shift/1 in the same
% clause, must run whole in the continuation. Its instructions only work
% in place - jump offsets, a skip to the else or recovery code - but the
% continuation was built by copying them one at a time, following the
% jump over the else or recovery code: an if-then-else taking its else
% branch threw a type error, \+ in a condition lost its answer, and so did
% a catch/3 that caught something. Now the construct goes in as its
% source term. Results match SWI.

:- initialization(main).

k(C) :- ( C = cont(K) -> call(K) ; call(C) ).
answers(P, L) :- findall(Y, (reset(call(P, Y), _, C), k(C)), L).

p_ite_else(Y) :- X = 2, shift(a), ( X == 1 -> Y = then ; Y = else ).
p_ite_then(Y) :- X = 1, shift(a), ( X == 1 -> Y = then ; Y = else ).
p_ite_chain(Y) :- X = 3, shift(a), ( X == 1 -> Y = one ; X == 2 -> Y = two ; Y = other ).
p_ite_cond_choices(Y) :- shift(a), ( member(Z, [1,2]), Z > 1 -> Y = z(Z) ; Y = none ).
p_disj(Y) :- shift(a), ( Y = left ; Y = right ).
p_if_then(Y) :- shift(a), ( true -> Y = yes ).
p_soft(Y) :- shift(a), ( member(Z, [1,2]) *-> Y = got(Z) ; Y = none ).
p_soft_else(Y) :- shift(a), ( fail *-> Y = got ; Y = none ).
p_soft_then(Y) :- shift(a), ( member(Y, [s1,s2]) *-> true ).
p_if3(Y) :- shift(a), if(fail, Y = then, Y = else).
p_if3_choices(Y) :- shift(a), if(member(Z, [1,2]), Y = z(Z), Y = none).
p_not(Y) :- shift(a), ( \+ fail -> Y = yes ; Y = no ).
p_not_true(Y) :- shift(a), ( \+ true -> Y = yes ; Y = no ).
p_notunify(Y) :- shift(a), ( a \= b -> Y = differ ; Y = same ).
p_ignore(Y) :- shift(a), ignore(fail), Y = ignored.
p_call(Y) :- shift(a), call(member(Y, [c1,c2])).
p_calln(Y) :- shift(a), call(member, Y, [n1,n2]).
p_once(Y) :- shift(a), once(member(Y, [o1,o2])).
p_catch_throw(Y) :- shift(a), catch(throw(oops), E, Y = caught(E)).
p_catch_ok(Y) :- shift(a), catch(member(Y, [k1,k2]), _, true).
p_catch_nested(Y) :- X = 2, shift(a), catch(( X == 1 -> throw(one) ; throw(two) ), E, Y = caught(E)).
p_twice(Y) :- call(shift(a)), X = 1, catch(shift(b), _, true), Y = X-2.

w_twice(Y-B) :- reset(p_twice(Y), _, C1), reset(k(C1), B, C2), k(C2).

main :-
	forall(
		member(P, [p_ite_else, p_ite_then, p_ite_chain, p_ite_cond_choices, p_disj, p_if_then,
			p_soft, p_soft_else, p_soft_then, p_if3, p_if3_choices, p_not, p_not_true, p_notunify,
			p_ignore, p_call, p_calln, p_once, p_catch_throw, p_catch_ok, p_catch_nested]),
		(	( catch(answers(P, L), E, L = uncaught(E)) -> true ; L = failed ),
			write(P), write(': '), writeq(L), nl
		)
	),
	(	catch(w_twice(R), E, R = uncaught(E)) -> true ; R = failed ),
	write(w_twice), write(': '), writeq(R), nl.
%---------------------------------------------------------- 211 sundry_shift_det
% A successful shift/1 resumes after its reset/3 but left reset's barrier
% behind and the frame in the barrier's cut generation. So a shifted
% reset/3 never exited deterministically, a later cut stopped at the
% barrier instead of pruning the clause, and a loop of them kept every
% frame and choice alive (0.9 GB for a million iterations). Now shift/1
% tidies up as reset/3's goal exiting does. Results match SWI and Scryer.

:- initialization(main).

det_status(G, R) :- setup_call_cleanup(true, G, Det = det), ( Det == det -> R = det ; R = nondet ).

d_shift(R) :- det_status(reset(shift(a), _, _), R).
d_no_shift(R) :- det_status(reset(true, _, _), R).
d_shift_after(R) :- det_status(reset((true, shift(a)), _, _), R).
d_goal_choices(R) :- det_status(reset((member(_,[1,2]), shift(a)), _, _), R).

c_cut(L) :- findall(B, c_cut_(B), L).
c_cut_(B) :- reset(shift(a), B, _), !.
c_cut_(z).
c_cut_choices(L) :- findall(X-B, c_cut_choices_(X, B), L).
c_cut_choices_(X, B) :- reset((member(X,[1,2,3]), shift(s)), B, _), !.
c_cut_choices_(9, z).
c_cut_later(L) :- findall(B-Y, c_cut_later_(B, Y), L).
c_cut_later_(B, Y) :- reset(shift(a), B, _), member(Y, [1,2]), !.
c_cut_later_(z, z).

b_after(L) :- findall(B-Y, (reset(shift(a), B, _), member(Y, [1,2])), L).
b_clause_alts(L) :- findall(B, b_clause_alts_(B), L).
b_clause_alts_(B) :- reset(shift(a), B, _).
b_clause_alts_(z).

loop(0) :- !.
loop(N) :- reset(shift(x), _, _), N1 is N-1, loop(N1).
l_loop(R) :- det_status(loop(1000), R).

main :-
	forall(
		member(T, [d_shift, d_no_shift, d_shift_after, d_goal_choices,
			c_cut, c_cut_choices, c_cut_later, b_after, b_clause_alts, l_loop]),
		(	G =.. [T, R],
			(	catch(G, E, R = uncaught(E)) -> true ; R = failed ),
			write(T), write(': '), writeq(R), nl
		)
	).
%----------------------------------------------------- 212 sundry_shift_no_reset
% shift/1 with no reset/3 to return to, or whose nearest reset/3 has a Ball
% or Cont that doesn't unify, fails - as in Scryer. It used to leave its
% ball in q->ball on the way out, and catch/3 takes a retry with q->ball
% set for an exception: the next catcher backtracked into anywhere later
% in the query unified with the stale ball and succeeded again. After a
% Ball mismatch that ball pointed at reused cells, so the extra answer
% was a term from elsewhere. A mismatch also used up the reset/3, so a
% later shift in its goal could not find it.

:- initialization(main).

count_catch_answers(N) :-
	findall(X, catch((member(X,[1,2]) ; fail), _, true), L),
	length(L, N).

n_bare(R) :- ( shift(x) -> R = shifted ; R = failed ).
n_catch(R) :- ( catch(shift(x), E, true) -> R = caught(E) ; R = failed ).
n_runtime(R) :- G = catch(shift(x), E, true), ( call(G) -> R = caught(E) ; R = failed ).
n_later_catch(N) :- ( shift(x) -> true ; true ), count_catch_answers(N).
n_later_runtime(N) :- G = (shift(x) -> true ; true), call(G), count_catch_answers(N).

m_ball(R) :- ( reset(shift(a), b, _) -> R = matched ; R = failed ).
m_cont(R) :- ( reset(shift(a), a, foo) -> R = matched ; R = failed ).
m_nested(R) :- ( reset(reset(shift(a), b, _), B, _) -> R = outer(B) ; R = failed ).
m_later_catch(N) :- ( reset(shift(a), b, _) -> true ; true ), count_catch_answers(N).
m_retry(R) :- ( reset((member(X,[a,b]), shift(X)), b, _) -> R = matched(X) ; R = failed ).

ok_shift(B) :- reset(shift(a), B, cont(_)).
ok_none(C) :- reset(true, _, C).

main :-
	forall(
		member(T, [n_bare, n_catch, n_runtime, n_later_catch, n_later_runtime,
			m_ball, m_cont, m_nested, m_later_catch, m_retry, ok_shift, ok_none]),
		(	G =.. [T, R],
			(	catch(G, E, R = uncaught(E)) -> true ; R = failed_outright ),
			write(T), write(': '), writeq(R), nl
		)
	).
%----------------------------------------------------- 213 sundry_shift_soft_cut
% A soft-cut (*-> or if/3) whose condition succeeded marks its barrier so
% backtracking skips the else branch. It uses the choice's reset flag for
% that, which was also all shift/1 looked for to find its reset/3 - so a
% shift inside such a then-branch, while the condition still had choices,
% took the soft-cut barrier for the reset and returned a wrong ball.

:- initialization(main).

s_if(B) :- reset(if((member(X,[1,2]) ; fail), shift(X), true), B, _).
s_soft(B) :- reset(((member(X,[1,2]) ; fail) *-> shift(X) ; true), B, _).
s_soft_member(B) :- reset((member(X,[1,2]) *-> shift(X) ; true), B, _).
s_runtime_if(B) :- G = if((member(X,[1,2]) ; fail), shift(X), true), reset(G, B, _).
s_runtime_soft(B) :- G = ((member(X,[1,2]) ; fail) *-> shift(X) ; true), reset(G, B, _).
s_ite(B) :- reset(((member(X,[1,2]) ; fail) -> shift(X) ; true), B, _).
s_nested(B) :- ( member(Y,[a,b]) *-> reset((member(X,[1,2]) *-> shift(X-Y) ; true), B, _) ; true ).
s_cont(B-Z) :- reset((member(X,[1,2]) *-> shift(X), Z = done ; true), B, cont(K)), call(K).

% With no reset/3 at all, a soft-cut barrier must not stand in for one.

n_stray(R) :- ( member(_, [1,2]) *-> ( catch(shift(x), _, fail) -> R = wrongly_shifted ; R = no_reset ) ; true ).

% Soft-cuts still skip their else branch once the condition has succeeded.

e_soft(L) :- findall(X, ((member(X,[1,2]) ; fail) *-> true ; X = none), L).
e_if(L) :- findall(X, if((member(X,[1,2]) ; fail), true, X = none), L).
e_runtime_soft(L) :- G = ((member(X,[1,2]) ; fail) *-> true ; X = none), findall(X, G, L).
e_runtime_if(L) :- G = if((member(X,[1,2]) ; fail), true, X = none), findall(X, G, L).
e_else(L) :- findall(X, (fail *-> true ; X = none), L).

main :-
	forall(
		member(T, [s_if, s_soft, s_soft_member, s_runtime_if, s_runtime_soft, s_ite,
			s_nested, s_cont, n_stray, e_soft, e_if, e_runtime_soft, e_runtime_if, e_else]),
		(	G =.. [T, R],
			(	catch(G, E, R = uncaught(E)) -> true ; R = failed ),
			copy_term(R, R1), numbervars(R1, 0, _),
			write(T), write(': '), print(R1), nl
		)
	).
%------------------------------------------------------------ 214 sundry_tabling
% Tabling regression tests.
%
% Each of these was a real bug found by running third-party programs
% (SWI-Prolog samples, Scryer bugs, Logtalk's tabling example) against
% the native tabling engine. They are cheap and cover the awkward corners:
% suspension vs completion, continuation capture across barriers, and
% termination on cyclic call graphs.

:- use_module(library(tabling)).
:- use_module(library(lists)).

:- initialization(main).

% ---------------------------------------------------------------------
% 1. A tabled call inside findall/3.
%
% A consumer cannot be suspended here: its continuation lives in the
% collector's C-level state, so a captured goal-list continuation cannot
% resume it. Fresh variants must therefore be COMPLETED in a nested SCC
% rather than suspended. Used to silently answer 3 instead of 6.

:- table sum_to/2.

sum_to(0, 0).
sum_to(N, S) :-
	N > 0,
	M is N - 1,
	findall(X, sum_to(M, X), Xs),
	sum_list(Xs, S0),
	S is S0 + N.

test_findall :-
	(	sum_to(3, S), S == 6 ->
		write('findall: ok')
	;	write('findall: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 2. A tabled call inside setof/3 whose template mentions the tabled
% predicate (the shape of SWI's box-stacking sample).

:- table chain/2.

chain(0, [0]).
chain(N, [N|T]) :-
	N > 0,
	M is N - 1,
	setof(L, chain(M, L), [T|_]).

test_setof :-
	(	chain(3, L), L == [3,2,1,0] ->
		write('setof: ok')
	;	write('setof: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 3. Suspension underneath call/1.
%
% call/1 plants a barrier of its own; only the barrier belonging to the
% engine's own reset/3 ends a captured continuation. Getting this wrong
% truncated the continuation and produced answers containing unbound
% variables (this is also how Logtalk's debug wrapper calls goals).

:- table under_call/1.

under_call(1).
under_call(X) :-
	wrap(inner(Y)),
	Y < 3,
	X is Y + 1.

wrap(G) :- call(G).
inner(Y) :- under_call(Y).

test_call_barrier :-
	findall(X, under_call(X), Xs0),
	msort(Xs0, Xs),
	(	Xs == [1,2,3] ->
		write('call barrier: ok')
	;	write('call barrier: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 4. Left recursion over a cyclic graph: the classic reason to table.
% Only terminates if the recursive call suspends on the active table.

:- table path/2.

path(X, Y) :- path(X, Z), edge(Z, Y).
path(X, Y) :- edge(X, Y).

edge(a, b).
edge(b, c).
edge(c, a).

test_left_recursion :-
	findall(X-Y, path(X, Y), Ps),
	length(Ps, N),
	(	N == 9 ->
		write('left recursion: ok')
	;	write('left recursion: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 5. Mutual recursion between two tabled predicates.

:- table even/1, odd/1.

even(0).
even(N) :- N > 0, M is N - 1, odd(M).
odd(N)  :- N > 0, M is N - 1, even(M).

test_mutual :-
	(	even(20), \+ odd(20) ->
		write('mutual: ok')
	;	write('mutual: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 6. A genuine cycle with no answers must fail, not loop. Exercises SCC
% merging: the inner SCC depends on an outer one, so its tables are
% handed to the parent instead of being completed on their own.

:- table p/0, q/0.

p :- q.
q :- p.

test_cycle :-
	(	\+ p ->
		write('cycle: ok')
	;	write('cycle: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 6b. A cycle WITH answers, entered through the predicate that is not
% the recursive one. p calls q; q calls back into p. Querying q/1
% first opens q's SCC, nests p's SCC inside it, and p's SCC escapes
% (it depends on q, the outer one) and is merged into q's rather than
% completed on its own. If completion() marked p's table complete
% before that merge/escape was checked, p's table would be cached
% complete but empty - test_cycle above can't catch this because its
% cycle has no answers at all, so an empty (wrongly-completed) table
% looks identical to a correct one. Query order matters here: q first
% is what exposes it.

:- table pm/1, qm/1.

pm(X) :- qm(X).
pm(1).
qm(X) :- pm(X).

test_scc_merge :-
	(	qm(1), pm(1) ->
		write('scc merge: ok')
	;	write('scc merge: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 7. Memoization actually happens: an exponential fib is instant when
% tabled (and the answer is right).

:- table fib/2.

fib(0, 1).
fib(1, 1).
fib(N, F) :-
	N > 1,
	N1 is N - 1,
	N2 is N - 2,
	fib(N1, F1),
	fib(N2, F2),
	F is F1 + F2.

test_fib :-
	(	fib(100, F), F =:= 573147844013817084101 ->
		write('fib: ok')
	;	write('fib: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 8. The tabling flag turns memoization off; tabled predicates then run
% as plain calls (still correct here, just not memoized).

test_flag :-
	current_prolog_flag(tabling, true),
	set_prolog_flag(tabling, false),
	(	fib(10, F), F =:= 89 ->
		write('flag off: ok')
	;	write('flag off: FAILED')
	),
	nl,
	set_prolog_flag(tabling, true),
	current_prolog_flag(tabling, true),
	write('flag on: ok'),
	nl.

% ---------------------------------------------------------------------
% 9. Answer dedup is by VARIANT, not by term identity.
%
% Scryer issue #2621: two clauses q(_). q(_). must yield ONE answer, and
% q(A,_,A). q(_,A,A). q(A,_,A). exactly TWO - the third clause is a
% variant of the first. Requires the answer trie to number variables
% canonically rather than compare terms structurally.

:- table dup/1.

dup(_).
dup(_).

:- table dup3/3.

dup3(A, _, A).
dup3(_, A, A).
dup3(A, _, A).

test_variant_answers :-
	findall(x, dup(_), L1),
	length(L1, N1),
	findall(x, dup3(_, _, _), L2),
	length(L2, N2),
	(	N1 == 1, N2 == 2 ->
		write('variant answers: ok')
	;	write('variant answers: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 10. Answers must not depend on the order in which tabled predicates
% are first called.
%
% Scryer issue #1895: with p/1 calling setof over a tabled g/1, asking
% p/1 first lost the setof answer, while asking g/1 first found it. Same
% root cause as (1): the consumer inside setof/3 cannot be suspended, so
% a fresh variant has to be completed instead.

:- table p/1.
:- table g/1.

g(a).

p(a).
p(Ls) :- setof(X, g(X), Ls).

test_order_independent :-
	abolish_all_tables,
	findall(X, p(X), P1),
	abolish_all_tables,
	findall(_, g(_), _),
	findall(X, p(X), P2),
	(	P1 == [a,[a]], P2 == [a,[a]] ->
		write('order independence: ok')
	;	write('order independence: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 11. Non-ground answers must keep variable sharing.
%
% Scryer issue #3365. An answer like s([a,V],[V]) shares V between its
% arguments. The imported answer's variables are created in the frame
% running the tabling driver; if that frame is trimmed on deterministic
% exit, a structure the caller holds points at recycled slots and the
% two occurrences silently stop being the same variable - binding one no
% longer binds the other. Every test above returns GROUND answers, which
% is why this went unnoticed.

:- table share/2.

share([a|X], X).

test_sharing :-
	share([_P,Q], R),
	R = [c],
	(	Q == c ->
		write('answer sharing: ok')
	;	write('answer sharing: FAILED')
	),
	nl.

% The same defect lost whole solutions in the issue's grammar: calling a
% tabled predicate in generate mode (an unbound list) dropped answers
% and returned half-bound terms. The recursive call here leaves its
% second argument unbound, so the answer shares variables across
% arguments - exactly the shape that breaks.

:- table o/2, gram/2.

o([the,man|B], B).
o([the,ball|B], B).
o([the,big,ball|B], B).

gram(A, B) :- o(A, B).
gram(A, B) :- o(A, C), C = [that|D], gram(D, E), E = [runs|B].

test_generate :-
	findall(W, (length(W, 7), gram(W, [])), Ws),
	msort(Ws, Sorted),
	(	Sorted == [[the,ball,that,the,big,ball,runs],
		           [the,big,ball,that,the,ball,runs],
		           [the,big,ball,that,the,man,runs],
		           [the,man,that,the,big,ball,runs]] ->
		write('generate mode: ok')
	;	write('generate mode: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 12. Backtracking into a tabled call that creates a fresh variant each
% time. Scryer issue #2701 panicked here (an internal heap index error
% in its attributed-variable bookkeeping). Each member/2 solution makes
% blink/3 a new call variant, so this exercises table creation under
% backtracking and repeated enumeration of completed tables.

:- table blink/3.

blink(0, _, 1).
blink(N, X, Xs) :-
	N > 0,
	N1 is N - 1,
	blink(N1, X, Xs).

test_backtrack_variants :-
	findall(Xs, (member(X, [1,2,3,4,5]), blink(7, X, Xs)), L),
	(	L == [1,1,1,1,1] ->
		write('backtrack variants: ok')
	;	write('backtrack variants: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 13. Many thousands of distinct call variants (the real workload behind
% issue #2701: Advent of Code 2024 day 11). Tabling is what makes this
% tractable at all - untabled it is exponential. It is also the shape
% that made a Scryer branch consume gigabytes, so it is worth keeping an
% eye on: here it runs in a few hundredths of a second in single-digit
% MB, which only holds while variant lookup stays O(1) (hash-indexed
% trie children) and completed tables free their suspensions.

:- table count/3.

count(_, 0, 1).
count(S, N, C) :-
	N > 0,
	N1 is N - 1,
	step(S, N1, C).

step(0, N1, C) :-
	!,
	count(1, N1, C).
step(S, N1, C) :-
	number_codes(S, Cs),
	length(Cs, L),
	L mod 2 =:= 0,
	!,
	H is L // 2,
	length(Front, H),
	append(Front, Back, Cs),
	number_codes(A, Front),
	number_codes(B, Back),
	count(A, N1, C1),
	count(B, N1, C2),
	C is C1 + C2.
step(S, N1, C) :-
	S2 is S * 2024,
	count(S2, N1, C).

total(_, [], 0).
total(Blinks, [S|Ss], Total) :-
	count(S, Blinks, C),
	total(Blinks, Ss, T0),
	Total is T0 + C.

test_many_variants :-
	total(25, [125,17], T25),
	total(75, [125,17], T75),
	(	T25 =:= 55312, T75 =:= 65601038650482 ->
		write('many variants: ok')
	;	write('many variants: FAILED')
	),
	nl.


% Tabling state is process-global and unlocked, so it is owned by the
% first thread to use it; a tabled call from any other thread must fail
% fast with a clear error rather than racing the tries (in practice:
% hanging in completion). Deterministic by construction - this thread
% has already tabled above, so the child is always the loser.

% Tables are per-thread, so concurrent tabling is allowed and each
% thread must get the right answers off its own tables. This used to
% assert resource_error(tabling_not_thread_safe); that error no longer
% exists.
%
% Two things are checked, because "it didn't crash" is not evidence:
%   1. the main thread tables while children do, and all agree with the
%      value computed before any thread started;
%   2. every child does its OWN work - a shared table would let a
%      second thread find the first one's answers and skip the
%      computation, so each child's worker count must be non-zero.

:- dynamic(thr_result/2).

test_threads :-
	(	catch(thread_create(thread_child(1), T1, []), _, fail) ->
		test_threads_(T1)
	;	% no thread support in this build - nothing to check
		write('threads: ok'), nl
	).

% thr_t/1 exists to be counted. Its body appends a marker (append-only,
% so three threads asserting at once is not a read-modify-write race).
% One marker per thread means each thread computed the table itself.

:- table thr_t/1.
:- dynamic(thr_work/1).

thr_t(X) :- assertz(thr_work(marker)), X = done.

test_threads_(T1) :-
	thread_create(thread_child(2), T2, []),
	thread_create(thread_child(3), T3, []),
	count(125, 1, Main),			% main thread tables concurrently
	thr_t(_),
	thread_join(T1, _), thread_join(T2, _), thread_join(T3, _),
	findall(I-C, thr_result(I, C), Rs0),
	msort(Rs0, Rs),
	findall(x, thr_work(_), Ws),
	length(Ws, NW),
	(	Rs = [1-C1, 2-C2, 3-C3],
		C1 == Main, C2 == Main, C3 == Main
	->	(	NW =:= 4			% 3 children + main, each on its own table
		->	write('threads: ok')
		;	write('threads: FAILED shared tables, workers='), write(NW)
		)
	;	write('threads: FAILED '), write(Rs-Main)
	),
	nl.

thread_child(I) :-
	catch(( count(125, 1, C), thr_t(_), Got = C ),
	      E,
	      Got = err(E)),
	assertz(thr_result(I, Got)).


% abolish_table/1: selective invalidation. A completed table does not
% notice assert/retract, so this is the supported way to drop one
% predicate's answers without discarding every other table too. The
% counters prove the selectivity: keep_t/1 must stay cached while
% drop_t/1 recomputes.

:- dynamic(ab_hits/1).
:- dynamic(ab_edge/2).

ab_hits(0).
ab_edge(x,y).

ab_bump :- retract(ab_hits(C)), C1 is C + 1, assertz(ab_hits(C1)).

:- table keep_t/1.
keep_t(X) :- ab_bump, member(X, [1,2]).

:- table drop_t/1.
drop_t(X) :- ab_bump, member(X, [3,4]).

:- table ab_path/2.
ab_path(X,Y) :- ab_edge(X,Y).

test_abolish :-
	findall(_, keep_t(_), _),
	findall(_, drop_t(_), _),
	ab_hits(H1),
	abolish_table(drop_t/1),
	findall(_, keep_t(_), _),
	ab_hits(H2),
	findall(_, drop_t(_), _),
	ab_hits(H3),
	findall(P0, ab_path(x,P0), Before),
	assertz(ab_edge(x,z)),
	abolish_table(ab_path/2),
	findall(P1, ab_path(x,P1), After),
	catch(abolish_table(_), error(E1,_), true),
	catch(abolish_table(no_such_t/3), error(E2,_), true),
	catch(abolish_table(42), error(E3,_), true),
	(	H2 =:= H1,			% untouched table stayed cached
		H3 =:= H1 + 1,			% abolished one recomputed
		Before == [y], After == [y,z],	% assert now visible
		E1 = instantiation_error,
		E2 = existence_error(table, no_such_t/3),
		E3 = type_error(predicate_indicator, 42) ->
		write('abolish_table: ok')
	;	write('abolish_table: FAILED')
	),
	nl.

main :-
	test_findall,
	test_setof,
	test_call_barrier,
	test_left_recursion,
	test_mutual,
	test_cycle,
	test_scc_merge,
	test_fib,
	test_variant_answers,
	test_order_independent,
	test_sharing,
	test_generate,
	test_backtrack_variants,
	test_many_variants,
	test_threads,
	test_abolish,
	test_flag.
%------------------------------------------------ 215 sundry_tabling_incremental
% Incremental tabling (DESIGN-tabling-phase2.md item 3): tables survive
% assert/retract on the dynamic predicates they consulted, instead of
% needing a hand-written abolish_table/1.
%
% Both halves opt in - ":- incremental(q/1)" on the dynamic predicate
% and ":- table p/1 as incremental" on the table. A table only collects
% dependencies if it is incremental, and only on predicates that are,
% so nothing changes for a program that declares neither (tests 3 and
% 4 are the negative controls for exactly that).
%
% Attribution is per-SCC, not per-table: the SCC is already the unit of
% completion and its push/pop bracket is the only one in the driver
% that is safe against backtracking. Invalidation is validate-on-READ,
% done by the owning thread at lookup - tables are per-thread but the
% database is shared, so invalidating from the asserting thread would
% mean writing to another thread's tables.

:- use_module(library(tabling)).
:- use_module(library(lists)).

:- initialization(main).

% ---------------------------------------------------------------------
% 1. The basic contract: assert and retract are both picked up, with no
% abolish_table/1 call anywhere.

:- dynamic(edge/2).
:- incremental(edge/2).
:- table path/2 as incremental.

edge(a,b).
edge(b,c).

path(X,Y) :- edge(X,Y).
path(X,Y) :- edge(X,Z), path(Z,Y).

test_assert_retract :-
	findall(Y, path(a,Y), B), msort(B, Bs),
	assertz(edge(c,d)),
	findall(Y, path(a,Y), A), msort(A, As),
	retract(edge(b,c)),
	findall(Y, path(a,Y), R), msort(R, Rs),
	(	Bs == [b,c], As == [b,c,d], Rs == [b] ->
		write('assert/retract: ok')
	;	write('assert/retract: FAILED'), nl, write(Bs-As-Rs)
	),
	nl.

% ---------------------------------------------------------------------
% 2. Transitive invalidation through a table->table edge. outer/1 never
% mentions base/1 itself - it only calls inner/1 - so this only works if
% the edge recorded at '$tbl_variant_table' is followed.

:- dynamic(base/1).
:- incremental(base/1).
:- table inner/1 as incremental.
:- table outer/1 as incremental.

base(1).
inner(X) :- base(X).
outer(X) :- inner(X), X > 0.

test_transitive :-
	findall(X, outer(X), B),
	assertz(base(2)),
	findall(X, outer(X), A), msort(A, As),
	(	B == [1], As == [1,2] ->
		write('transitive: ok')
	;	write('transitive: FAILED'), nl, write(B-As)
	),
	nl.

% ---------------------------------------------------------------------
% 3. Negative control: a table that is NOT declared incremental must
% keep its answers over the same assert, exactly as before this item.

:- table frozen/1.

frozen(X) :- base(X).

test_non_incremental_table_frozen :-
	findall(X, frozen(X), B),
	assertz(base(3)),
	findall(X, frozen(X), A),
	(	B == A ->
		write('non-incremental table frozen: ok')
	;	write('non-incremental table frozen: FAILED'), nl, write(B-A)
	),
	nl.

% ---------------------------------------------------------------------
% 4. Negative control: a dynamic predicate NOT declared incremental
% must not invalidate anything, even for an incremental table.

:- dynamic(untracked/1).
:- table ignores/1 as incremental.

untracked(9).
ignores(X) :- untracked(X).

test_untracked_pred_ignored :-
	findall(X, ignores(X), B),
	assertz(untracked(8)),
	findall(X, ignores(X), A),
	(	B == [9], A == [9] ->
		write('untracked pred ignored: ok')
	;	write('untracked pred ignored: FAILED'), nl, write(B-A)
	),
	nl.

% ---------------------------------------------------------------------
% 5. Invalidation must fully DROP the table, not '$tbl_reset_incomplete'
% it (which deliberately keeps answers). With answer subsumption landed
% this is sharp: leaf->value in the answer trie points at live tbl_ans
% structs, so freeing answers without clearing the trie would leave
% dangling pointers in the dedup path. A min-aggregated table that is
% invalidated and recomputed exercises exactly that.

:- dynamic(cost/2).
:- incremental(cost/2).
:- table best(_,min) as incremental.

cost(a,5).
cost(a,9).

best(X,C) :- cost(X,C).

test_invalidate_subsumptive :-
	findall(C, best(a,C), B),
	assertz(cost(a,2)),
	findall(C, best(a,C), A),
	retract(cost(a,2)),
	findall(C, best(a,C), R),
	(	B == [5], A == [2], R == [5] ->
		write('invalidate subsumptive: ok')
	;	write('invalidate subsumptive: FAILED'), nl, write(B-A-R)
	),
	nl.

% ---------------------------------------------------------------------
% 6. Re-validation is keyed on the database generation, so a table that
% is looked up repeatedly with NO intervening change must stay put -
% otherwise incremental tabling silently becomes "recompute every call"
% and the memoization is gone. Checked by counting derivations.

:- dynamic(hits/1).
:- dynamic(fact/1).
:- incremental(fact/1).
:- table counted/1 as incremental.

fact(1).

counted(X) :- fact(X), assertz(hits(X)).

test_no_spurious_recompute :-
	retractall(hits(_)),
	findall(X, counted(X), _),
	findall(X, counted(X), _),
	findall(X, counted(X), _),
	findall(H, hits(H), Hs),
	length(Hs, N),
	(	N == 1 ->
		write('no spurious recompute: ok')
	;	write('no spurious recompute: FAILED'), nl, write(n=N)
	),
	nl.

% ---------------------------------------------------------------------

main :-
	test_assert_retract,
	test_transitive,
	test_non_incremental_table_frozen,
	test_untracked_pred_ignored,
	test_invalidate_subsumptive,
	test_no_spurious_recompute.
%------------------------------------------------ 216 sundry_tabling_reconstruct
% Trie-path answer reconstruction (DESIGN-tabling-phase2.md item 5).
%
% An answer used to be stored TWICE: as its path in the answer trie,
% and again as a full `cell *image` copy. The image is now dropped and
% the answer rebuilt from the path, which costs a parent pointer per
% trie node (8 bytes) instead of a whole term copy (24 bytes per cell,
% plus a malloc each) - and trie nodes are shared between answers with
% common prefixes while images never were.
%
% Reconstruction has to reproduce the term EXACTLY, so these check the
% shapes where a canonicalising round-trip could plausibly lose
% something: nesting, the several numeric types, both string
% representations, and - the sharp one - variable identity.
%
% The one carve-out: a SUBSUMPTIVE table (item 2) omits the aggregated
% argument from its trie by construction, since that is how answers
% collide and combine. Its path cannot reproduce that value, so those
% tables keep their image; test 5 is the guard on that.

:- use_module(library(tabling)).
:- use_module(library(lists)).

:- initialization(main).

% ---------------------------------------------------------------------
% 1. Assorted ground shapes must survive the round trip unchanged.

:- table shapes/2.

shapes(1, f(a, g(b, h(c)), [1,2,3])).
shapes(2, [[], [x], [y,z]]).
shapes(3, point(-1, 0, 42)).
shapes(4, "a string").
shapes(5, [0'a, 0'b, 0'c]).
shapes(6, mixed(1.5, -2.25, 1000000000000000000000)).
shapes(7, deep(deep(deep(deep(bottom))))).

test_ground_shapes :-
	findall(N-T, shapes(N,T), Got),
	msort(Got, Sorted),
	(	Sorted == [1-f(a, g(b, h(c)), [1,2,3]),
			   2-[[], [x], [y,z]],
			   3-point(-1, 0, 42),
			   4-"a string",
			   5-[0'a, 0'b, 0'c],
			   6-mixed(1.5, -2.25, 1000000000000000000000),
			   7-deep(deep(deep(deep(bottom))))] ->
		write('ground shapes: ok')
	;	write('ground shapes: FAILED'), nl, write(Sorted)
	),
	nl.

% ---------------------------------------------------------------------
% 2. Variable IDENTITY, not just variable-ness. s([a,V],[V]) shares V
% between its arguments; the trie numbers variables canonically by
% first appearance, so reconstruction must map each number back to ONE
% fresh variable or the two occurrences silently stop being the same.
% Binding one must bind the other.

:- table share/2.

share([a|X], X).

test_variable_sharing :-
	share([_P,Q], R),
	R = [c],
	(	Q == c ->
		write('variable sharing: ok')
	;	write('variable sharing: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 3. Distinct variables must stay distinct - the mirror of test 2. A
% reconstruction that collapsed every variable to one would still pass
% test 2, so this pins the other direction.

:- table two_vars/1.

two_vars(pair(_A,_B)).

test_distinct_vars :-
	two_vars(pair(X,Y)),
	X = 1,
	(	var(Y) ->
		write('distinct vars: ok')
	;	write('distinct vars: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 4. Repeated variables within one answer keep their identity too:
% f(V,V) must reconstruct as one variable used twice, not two.

:- table repeated/1.

repeated(f(V,V)).

test_repeated_var :-
	repeated(f(A,B)),
	A = bound,
	(	B == bound ->
		write('repeated var: ok')
	;	write('repeated var: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 5. A subsumptive table keeps its image, because its trie omits the
% aggregated argument. If that carve-out were dropped, the aggregated
% value would come back as an unbound variable rather than a number.

:- table agg(_,min).

acost(a,7).
acost(a,3).
acost(b,5).

agg(X,C) :- acost(X,C).

test_subsumptive_still_exact :-
	findall(X-C, agg(X,C), Got),
	msort(Got, Sorted),
	(	Sorted == [a-3, b-5] ->
		write('subsumptive still exact: ok')
	;	write('subsumptive still exact: FAILED'), nl, write(Sorted)
	),
	nl.

% ---------------------------------------------------------------------
% 6. Reconstruction happens on every read, so a table read repeatedly
% must give the same answers every time - a reconstruction that
% consumed or mutated the path would pass once and fail after.

test_stable_across_reads :-
	findall(T, shapes(_,T), A),
	findall(T, shapes(_,T), B),
	findall(T, shapes(_,T), C),
	(	A == B, B == C ->
		write('stable across reads: ok')
	;	write('stable across reads: FAILED')
	),
	nl.

% ---------------------------------------------------------------------

main :-
	test_ground_shapes,
	test_variable_sharing,
	test_distinct_vars,
	test_repeated_var,
	test_subsumptive_still_exact,
	test_stable_across_reads.
%------------------------------------------------- 217 sundry_tabling_restraints
% Tabling restraints (DESIGN-tabling-phase2.md item 1).
%
% A tabled predicate with an infinite answer set stores answers until
% OOM-killed - no message, no partial output, exit code 137 like any
% other OOM. Restraints turn that into a diagnostic resource_error.
%
% tests/run.sh fails a test on a non-zero exit status even when stdout
% happens to match - the doc calls this out explicitly: an output-only
% check passes on a killed process, so the exit code is the thing that
% actually proves the fix.

:- use_module(library(tabling)).
:- use_module(library(lists)).

:- initialization(main).

% ---------------------------------------------------------------------
% Defaults are infinite; nothing changes for existing programs.

test_defaults :-
	(	current_prolog_flag(max_table_answer_size, infinite),
		current_prolog_flag(max_table_subgoal_size, infinite),
		current_prolog_flag(max_answers_for_subgoal, infinite) ->
		write('defaults: ok')
	;	write('defaults: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% An infinite answer SET raises instead of running away. This is the
% case that used to be OOM-killed (exit 137); a caught resource_error
% here, followed by a clean halt, is the whole point of the fix.

:- table as//0.

as --> [].
as --> [a], as.

test_answer_count :-
	set_prolog_flag(max_answers_for_subgoal, 100),
	(	catch(
		  ( phrase(as, Ls), var(Ls) -> true ; true ),
		  error(resource_error(max_answers_for_subgoal), _),
		  true
		) ->
		write('answer count restraint: ok')
	;	write('answer count restraint: FAILED')
	),
	nl,
	set_prolog_flag(max_answers_for_subgoal, infinite).

% A BOUNDED table must be unaffected by the same restraint - the limit
% only stops runaway growth, it does not shrink legitimate answers.

test_bounded_unaffected :-
	set_prolog_flag(max_answers_for_subgoal, 100),
	abolish_all_tables,
	(	phrase(as, [a,a,a]) ->
		write('bounded table unaffected: ok')
	;	write('bounded table unaffected: FAILED')
	),
	nl,
	set_prolog_flag(max_answers_for_subgoal, infinite).

% ---------------------------------------------------------------------
% A single answer too big to store.

:- table big_answer/1.

big_answer(X) :- length(X, 5000).

test_answer_size :-
	set_prolog_flag(max_table_answer_size, 100),
	(	catch(
		  big_answer(_),
		  error(resource_error(max_table_answer_size), _),
		  true
		) ->
		write('answer size restraint: ok')
	;	write('answer size restraint: FAILED')
	),
	nl,
	set_prolog_flag(max_table_answer_size, infinite).

% ---------------------------------------------------------------------
% A single call term too big to table.

:- table echo/1.

echo(_).

test_subgoal_size :-
	length(Big, 5000),
	set_prolog_flag(max_table_subgoal_size, 100),
	(	catch(
		  echo(Big),
		  error(resource_error(max_table_subgoal_size), _),
		  true
		) ->
		write('subgoal size restraint: ok')
	;	write('subgoal size restraint: FAILED')
	),
	nl,
	set_prolog_flag(max_table_subgoal_size, infinite).

% ---------------------------------------------------------------------

main :-
	test_defaults,
	test_answer_count,
	test_bounded_unaffected,
	test_answer_size,
	test_subgoal_size.
%----------------------------------------------------- 218 sundry_tabling_shared
% Shared completed tables (DESIGN-tabling-phase2.md item 4): threads
% stop recomputing the same predicate. ":- table p/1 as shared".
%
% A shared table is still BUILT privately with no locking - the
% leader's critical section spans completion/0, a Prolog loop running
% arbitrary user code, and no lock survives that. It is only PUBLISHED
% once complete, and a completed table is immutable. Publication and
% lookup are short and contain no user code, which is what makes a
% mutex sound there.
%
% Every check below counts markers rather than inspecting answers:
% three threads agreeing on `done` proves nothing about whether they
% each recomputed it, which is the whole point of the item.

:- use_module(library(tabling)).
:- use_module(library(lists)).

:- initialization(main).

:- dynamic(work/1).
:- dynamic(res/2).

% ---------------------------------------------------------------------
% 1. A thread arriving AFTER publication reuses the table instead of
% rebuilding it. Main computes first, so exactly one computation must
% be recorded no matter how many threads then ask.
%
% Note this does NOT test simultaneous cold starts: publication happens
% at completion, so threads that all start before anyone finishes will
% each build their own. That is correct for a publish-on-completion
% design - it avoids recomputation for arrivals after the fact, it is
% not a barrier - and test 2 is the negative control that pins it.

:- table shared_t/1 as shared.

shared_t(X) :- assertz(work(shared_marker)), X = done.

child(I) :- shared_t(X), assertz(res(I,X)).

test_shared_reuse :-
	shared_t(M),
	(	catch(thread_create(child(1), T1, []), _, fail) ->
		thread_create(child(2), T2, []),
		thread_create(child(3), T3, []),
		thread_join(T1,_), thread_join(T2,_), thread_join(T3,_),
		findall(I-X, res(I,X), Rs0), msort(Rs0, Rs),
		findall(x, work(shared_marker), Ws), length(Ws, NW),
		(	M == done, Rs == [1-done,2-done,3-done], NW =:= 1 ->
			write('shared reuse: ok')
		;	write('shared reuse: FAILED'), nl, write(Rs-NW)
		)
	;	% no thread support in this build - one computation is still
		% the right answer, just for a duller reason
		findall(x, work(shared_marker), Ws), length(Ws, NW),
		(	M == done, NW =:= 1 ->
			write('shared reuse: ok')
		;	write('shared reuse: FAILED')
		)
	),
	nl.

% ---------------------------------------------------------------------
% 2. Negative control for test 1. The SAME shape without `as shared`
% must still have every thread do its own work - otherwise test 1
% proves nothing about sharing, only that the answer is cacheable.

:- table private_t/1.

private_t(X) :- assertz(work(private_marker)), X = done.

child_p(I) :- private_t(X), assertz(res(I,X)).

test_private_not_shared :-
	retractall(res(_,_)),
	private_t(_),
	(	catch(thread_create(child_p(1), U1, []), _, fail) ->
		thread_create(child_p(2), U2, []),
		thread_join(U1,_), thread_join(U2,_),
		findall(x, work(private_marker), Ws), length(Ws, NW),
		(	NW =:= 3 ->			% main + 2 children, each its own
			write('private not shared: ok')
		;	write('private not shared: FAILED'), nl, write(n=NW)
		)
	;	write('private not shared: ok')
	),
	nl.

% ---------------------------------------------------------------------
% 3. Answers actually survive the crossing. A shared table holding a
% compound with refcounted subcells (a string) must read back intact in
% another thread - reading an answer bumps refcounts on shared subcells,
% which is only safe because pl_refcnt is _Atomic under USE_THREADS.

:- table shared_term/1 as shared.

shared_term(f(hello, [1,2,3], "text")).

child_t(I) :- shared_term(X), assertz(res(I,X)).

test_shared_term_integrity :-
	retractall(res(_,_)),
	shared_term(Main),
	(	catch(thread_create(child_t(1), V1, []), _, fail) ->
		thread_create(child_t(2), V2, []),
		thread_join(V1,_), thread_join(V2,_),
		findall(X, res(_,X), Xs)
	;	Xs = []
	),
	(	Main = f(hello,[1,2,3],_),
		forall(member(X, Xs), X = f(hello,[1,2,3],_)) ->
		write('shared term integrity: ok')
	;	write('shared term integrity: FAILED'), nl, write(Main-Xs)
	),
	nl.

% ---------------------------------------------------------------------
% 4. abolish_all_tables/0 must reach published tables too, or a user
% who abolishes still gets stale answers. It RETIRES rather than frees
% them - another thread may be reading one, and freeing under a live
% reader is the exact use-after-free this design avoids - so the next
% call misses the registry and recomputes, while the old memory waits
% for teardown.

:- table abol_t/1 as shared.

abol_t(X) :- assertz(work(abol_marker)), X = done.

test_abolish_reaches_shared :-
	retractall(work(abol_marker)),
	abol_t(_),
	findall(x, work(abol_marker), W1), length(W1, N1),
	abolish_all_tables,
	abol_t(_),
	findall(x, work(abol_marker), W2), length(W2, N2),
	(	N1 =:= 1, N2 =:= 2 ->
		write('abolish reaches shared: ok')
	;	write('abolish reaches shared: FAILED'), nl, write(N1-N2)
	),
	nl.

% ---------------------------------------------------------------------

main :-
	test_shared_reuse,
	test_private_not_shared,
	test_shared_term_integrity,
	test_abolish_reaches_shared.
%------------------------------------------------ 219 sundry_tabling_subsumption
% Answer subsumption (DESIGN-tabling-phase2.md item 2): ":- table
% path(_,_,min)" aggregates at insert instead of storing every answer.
%
% The two hard parts the doc calls out, both exercised below:
%
%   1. The answer trie is keyed on every argument EXCEPT the aggregated
%      one, so two answers agreeing on the rest collide and combine
%      (test_min_shortest_path, test_max).
%   2. An existing answer can be UPDATED in place, and every consumer
%      that already read the old value must run again - test_floor_
%      fixpoint is the one that actually depends on this: it needs
%      several rounds of re-pairing to reach the true minimum, and
%      was caught wrong (converging one round early) by a version of
%      this file's own C code with that re-pairing turned off.

:- use_module(library(tabling)).
:- use_module(library(lists)).

:- initialization(main).

% ---------------------------------------------------------------------
% 1. Tabled shortest path over a DAG. Every (X,Y) pair must collapse to
% its MINIMUM cost, including multi-hop pairs computed through nested
% tabled sub-calls (a-d goes through b and c both).

:- table path1(_,_,min).

edge1(a,b,3). edge1(a,c,1). edge1(c,b,1). edge1(b,d,5).
path1(X,Y,C) :- edge1(X,Y,C).
path1(X,Y,C) :- edge1(X,Z,C1), path1(Z,Y,C2), C is C1+C2.

test_min_shortest_path :-
	findall(X-Y-C, path1(X,Y,C), All),
	msort(All, Sorted),
	(	Sorted == [a-b-2, a-c-1, a-d-7, b-d-5, c-b-1, c-d-6] ->
		write('min shortest path: ok')
	;	write('min shortest path: FAILED'), nl, write(Sorted)
	),
	nl.

% ---------------------------------------------------------------------
% 2. max works the other direction, and a graph with a genuine cycle
% (not a DAG) must still converge rather than loop.

:- table path2(_,_,min).

edge2(a,b,1). edge2(b,a,1). edge2(a,c,100). edge2(b,c,1).
path2(X,Y,C) :- edge2(X,Y,C).
path2(X,Y,C) :- edge2(X,Z,C1), path2(Z,Y,C2), C is C1+C2.

test_cyclic_min :-
	findall(X-Y-C, path2(X,Y,C), All),
	msort(All, Sorted),
	(	Sorted == [a-a-2, a-b-1, a-c-2, b-a-1, b-b-2, b-c-1] ->
		write('cyclic min: ok')
	;	write('cyclic min: FAILED'), nl, write(Sorted)
	),
	nl.

:- table best(_,max).

score(a,3). score(a,7). score(a,2). score(b,5).
best(X,S) :- score(X,S).

test_max :-
	(	findall(S, best(a,S), [7]), findall(S, best(b,S), [5]) ->
		write('max: ok')
	;	write('max: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 3. The core worklist-protocol change: an EXISTING answer improved in
% place must be re-delivered to every current suspension, not just new
% ones (see '$tbl_pop_worklist' in src/bif_tabling.c - the "updated
% answers x all suspensions" pass). p and r mutually improve each
% other's minimum, bottoming out at the floor (500) only if r's
% suspension on p keeps getting re-paired across MULTIPLE rounds as p
% keeps improving. Skipping that re-pairing converges one round early,
% at 999 - wrong, but not obviously so (still terminates, still a
% plausible-looking number), which is exactly the kind of bug an
% output-only single-round test would miss.

:- table p(min), r(min).

p(1000).
p(V) :- r(V0), V is V0.
r(V) :- p(V0), V0 > 500, V is V0 - 1.

test_floor_fixpoint :-
	(	findall(V, p(V), [500]), findall(V, r(V), [500]) ->
		write('floor fixpoint: ok')
	;	write('floor fixpoint: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 4. Zero aggregation markers (eg. dup(_,_)) is documentation-only and
% degrades to plain variant tabling - matches SWI's leniency, and
% means a spec need not be rewritten just because a mode was dropped.

:- table dup(_,_).

dup(a,1). dup(a,1). dup(a,2).

test_zero_markers :-
	(	findall(X-Y, dup(X,Y), [a-1,a-2]) ->
		write('zero markers: ok')
	;	write('zero markers: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 5. More than one aggregated argument is unsupported (the design doc
% recommends a single min/max first) and must raise a clear error
% rather than silently picking one or misbehaving.

% NB the `fail` inside the catch is load-bearing: catch(G,_,true)
% succeeds when G merely SUCCEEDS as well as when it throws, so without
% it this passes whether or not the error is actually raised - which is
% exactly how the first version of this test (and the `as` one below)
% passed against code that raised nothing at all.

test_multi_marker_rejected :-
	(	catch(
		  ( phrase(tabling:wrappers(bad_multi(_,min,max)), _), fail ),
		  error(domain_error(table_mode_spec, bad_multi(_,min,max)), _),
		  true
		) ->
		write('multi marker rejected: ok')
	;	write('multi marker rejected: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 5b. ":- table Spec as Option" must not be silently MISREAD.
% `p/1 as Opt` is a compound whose functor is `as`/2, so before the
% guard above excluded that shape it matched the mode-spec clause -
% tabling a predicate literally named `as`/2 and leaving p/1 UNTABLED,
% with no diagnostic. Silently-untabled is the worst outcome here: the
% program still runs, just without termination guarantees.
%
% An UNRECOGNISED option must be refused rather than quietly accepted -
% taking one we do not implement would leave the caller believing they
% got a behaviour they did not. Deliberately a nonsense option rather
% than a not-yet-built one: this check had to be rewritten twice as
% `incremental` and then `shared` were implemented under it.

test_as_option_rejected :-
	(	catch(
		  ( phrase(tabling:wrappers(as_opt/1 as no_such_option), _), fail ),
		  error(domain_error(table_option, no_such_option), _),
		  true
		) ->
		write('as option rejected: ok')
	;	write('as option rejected: FAILED')
	),
	nl.

% incremental+shared is refused: publication promises a completed table
% is never written again, and invalidation writes to it.

test_incremental_shared_refused :-
	(	catch(
		  ( phrase(tabling:wrappers(as_both/1 as (incremental,shared)), _), fail ),
		  error(domain_error(table_option, incremental_and_shared), _),
		  true
		) ->
		write('incremental+shared refused: ok')
	;	write('incremental+shared refused: FAILED')
	),
	nl.

test_as_incremental_accepted :-
	(	catch(phrase(tabling:wrappers(as_inc/1 as incremental), Cs), _, fail),
		Cs = [_|_] ->
		write('as incremental accepted: ok')
	;	write('as incremental accepted: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 6. Re-declaring the same predicate's mode spec is a no-op (matches
% the existing "already tabled" idempotency for plain Name/Arity), not
% a second registration.

:- table idem(min).
:- table idem(min).

ival(5). ival(3).
idem(V) :- ival(V).

test_idempotent :-
	findall(A-Pos-Op, tabling:'$tbl_subsumptive_spec'(idem,A,Pos,Op), Specs),
	(	Specs == [1-1-min], findall(V, idem(V), [3]) ->
		write('idempotent: ok')
	;	write('idempotent: FAILED')
	),
	nl.

% ---------------------------------------------------------------------
% 7. max_answers_for_subgoal (item 1) bounds DISTINCT KEYS, not raw
% update attempts - repeatedly IMPROVING one key must not count against
% the limit, only a genuinely NEW key does.

:- table restrained(_,min).

rval(a,5). rval(a,3). rval(a,9). rval(a,1).
restrained(X,V) :- rval(X,V).

test_restraint_counts_keys :-
	set_prolog_flag(max_answers_for_subgoal, 1),
	(	findall(V, restrained(a,V), [1]) ->
		write('restraint counts keys: ok')
	;	write('restraint counts keys: FAILED')
	),
	nl,
	set_prolog_flag(max_answers_for_subgoal, infinite).

:- table restrained2(_,min).

rval2(a,5). rval2(a,3). rval2(b,9).
restrained2(X,V) :- rval2(X,V).

test_restraint_still_fires :-
	set_prolog_flag(max_answers_for_subgoal, 1),
	(	catch(
		  ( findall(_, restrained2(_,_), _), false ),
		  error(resource_error(max_answers_for_subgoal), _),
		  true
		) ->
		write('restraint still fires: ok')
	;	write('restraint still fires: FAILED')
	),
	nl,
	set_prolog_flag(max_answers_for_subgoal, infinite).

% ---------------------------------------------------------------------

main :-
	test_min_shortest_path,
	test_cyclic_min,
	test_max,
	test_floor_fixpoint,
	test_zero_markers,
	test_multi_marker_rejected,
	test_as_option_rejected,
	test_as_incremental_accepted,
	test_incremental_shared_refused,
	test_idempotent,
	test_restraint_counts_keys,
	test_restraint_still_fires.
%--------------------------------------------------- 220 sundry_tco_heap_context
% =../2 builds its list on the calling frame's heap but with the context of
% the term taken apart, which can be an older frame. A tail call reusing the
% frame then trimmed the list from under the callee (Logtalk's compiler hit
% this in '$lgt_valid_mode_template'/1 on loading).

:- initialization(main).

template(Pred) :- Pred =.. [_|Args], template_args(Args).
template_args([]).
template_args([Arg|Args]) :- ( ground(Arg) -> template_arg(Arg) ; throw(instantiation_error) ), template_args(Args).
template_arg(+(_)).
template_arg(-(_)).
template_arg(?(_)).
template_arg(+).
template_arg(-).

t_modes(R) :- ( template(foo(+integer, -list, ?atom)), template(bar(+, -)) -> R = ok ; R = failed ).

args_of(Pred, R) :- Pred =.. [_|Args], rest_of(Args, R).
rest_of([_|Rest], R) :- R = Rest.
t_rest(R) :- args_of(f(a(1), b(2), c(3)), R0), copy_term(g(h(i), j, k(l, m, n)), _), R = R0.

main :-
	forall(
		member(T, [t_modes, t_rest]),
		(	G =.. [T, R],
			(	catch(G, E, R = uncaught(E)) -> true ; R = failed ),
			write(T), write(': '), writeq(R), nl
		)
	).
%------------------------------------------------------ 221 sundry_tco_heap_term
% A ground term built on the heap by the calling frame (a caught ball, a
% copy, a list) was taken for one from the clause source, so a tail call
% could reuse the frame and trim the heap out from under it.

:- initialization(main).

t2(E) :- nonvar(E), E = error(B, _), nonvar(B), functor(B, foo, _).

% The callee's head bound to a ball caught in the calling frame.
ball(N, E0) :- ( N =:= 0 -> t2(E0) ; catch(throw(error(foo(x), ctx)), E, true), N1 is N-1, ball(N1, E) ).
t_ball(R) :- ( ball(3, _) -> R = ok ; R = lost ).

% An older variable bound to a ground copy, then the frame reused.
older(0, _) :- !.
older(N, Out) :- ( N =:= 2 -> copy_term(f(g(h), [i, j]), Out) ; true ), N1 is N-1, older(N1, Out).
t_older(R) :- older(3, Out), copy_term(k(l, m, n, o), _), ( Out == f(g(h), [i, j]) -> R = ok ; R = lost ).

% The same with numlist/3.
nums(0, _) :- !.
nums(N, Out) :- ( N =:= 2 -> numlist(1, 5, Out) ; true ), N1 is N-1, nums(N1, Out).
t_nums(R) :- nums(3, Out), copy_term(k(l, m, n, o), _), ( Out == [1, 2, 3, 4, 5] -> R = ok ; R = lost ).

main :-
	forall(
		member(T, [t_ball, t_older, t_nums]),
		(	G =.. [T, R],
			(	catch(G, E, R = uncaught(E)) -> true ; R = failed ),
			write(T), write(': '), writeq(R), nl
		)
	).
%------------------------------------------------------ 222 sundry_tco_more_vars
% A tail call into a clause with more variables than the calling frame has
% slots copied the new frame's slots down over themselves and released some
% already moved, so a bigint or string passed along was freed while in use.

:- initialization(main).

small(a, R) :- X = 5, small(X, R).
small(X, R) :- integer(X), A = 1, B = 2, C = 3, R is X+A+B+C.

big(a, R) :- X is 2^200 + 12345, big(X, R).
big(X, R) :- integer(X), A = 1, B = 2, C = 3, Y is X+A+B+C, R is Y - 2^200.

str(a, R) :- string_concat("a long enough string to be ", "reference counted", S), str(S, R).
str(X, R) :- string(X), A = 1, B = 2, C = 3, _ = [A,B,C], string_concat(X, "!", Y), string_length(Y, R).

t_small(R) :- small(a, R).
t_big(R) :- big(a, R).
t_str(R) :- str(a, R).
t_big_loop(R) :- ( forall(between(1, 1000, _), big(a, 12351)) -> R = ok ; R = corrupted ).

main :-
	forall(
		member(T, [t_small, t_big, t_str, t_big_loop]),
		(	G =.. [T, R],
			(	catch(G, E, R = uncaught(E)) -> true ; R = failed ),
			write(T), write(': '), writeq(R), nl
		)
	).
%--------------------------------------------------- 223 sundry_tco_pinned_frame
% A caller's variable bound to a structure from a callee's head pinned the
% caller's frame rather than the callee's, so the callee's frame was later
% reused by its own tail call and the caller's term lost its bindings.

:- initialization(main).

% The caller's own variable.
own(R) :- own_(a, R).
own_(a, f(X)) :- X = 1, own_(b, 0).
own_(b, Y) :- Z = 3, Y+Z =:= 3.

% A variable from a frame older than the caller.
older(R) :- older_mid(R).
older_mid(R) :- older_(a, R), true.
older_(a, f(X)) :- X = 1, older_(b, 0).
older_(b, Y) :- Z = 3, Y+Z =:= 3.

% Like numbervars/3: list elements bound to '$VAR'(N) from the head.
number_(L) :- length(L, 3), number_list(L, 0, _).
number_list([], N, N).
number_list(['$VAR'(N0)|Vs], N0, N) :- N1 is N0+1, number_list(Vs, N1, N).

main :-
	forall(
		member(T, [own, older, number_]),
		(	G =.. [T, R],
			(	catch(G, E, R = uncaught(E)) -> true ; R = failed ),
			write(T), write(': '), writeq(R), nl
		)
	).
%----------------------------------------------------- 224 sundry_tco_tail_calls
% Any last call may reuse the caller's frame, not only a recursive one.
% These are the shapes where reuse must not change the answer.

:- initialization(main).
:- use_module(library(freeze)).
:- dynamic(fact/1).

% Choicepoints left by an earlier goal of the caller.
nd(0, []) :- !.
nd(N, [X|T]) :- member(X, [a,b]), N1 is N-1, nd2(N1, T).
nd2(N, T) :- nd(N, T).
r_nd(L) :- findall(T, nd(3, T), L).

% Logical update view: a clause added before the tail call is seen after it.
lu(0) :- !.
lu(N) :- assertz(fact(N)), N1 is N-1, lu2(N1).
lu2(N) :- fact(N0), N0 =:= N+1, !, lu(N).
r_lu(L) :- retractall(fact(_)), lu(5), findall(X, fact(X), L).

% Cut inside a tail-called predicate.
cut_a(X) :- cut_b(X).
cut_b(X) :- member(X, [1,2,3]), !.
r_cut(L) :- findall(X, cut_a(X), L).

% The caller's variable bound to a structure from the callee's head.
out_a(X) :- out_b(X).
out_b(f(Y)) :- Y = 1.
r_out(X) :- out_a(X).

% The caller passes a structure holding its own variable, and that variable.
sh_a(R) :- Z = g(V), sh_b(Z, V, R).
sh_b(g(A), B, R) :- A = 1, R = B.
r_share(R) :- sh_a(R).

% An exception from a tail-called predicate.
ex_a(N) :- ex_b(N).
ex_b(N) :- ( N > 2 -> throw(big(N)) ; true ).
r_ex(R) :- catch((ex_a(1), ex_a(5)), E, R = E).

% A caught exception passed to a tail call.
ball_a(R) :- catch(throw(error(foo(x), ctx)), E, true), ball_b(E, R).
ball_b(error(B, _), R) :- functor(B, R, _).
r_ball(R) :- ball_a(R).

% Backtracking into a predicate reached by a tail call.
bt_a(X) :- bt_b(X).
bt_b(X) :- between(1, 3, X).
r_bt(L) :- findall(X, bt_a(X), L).

% A callee with fewer variables than the caller.
fw_a(R) :- A = 1, B = 2, C = 3, D = [A,B,C], fw_b(D, R).
fw_b(D, D).
r_fewer(R) :- fw_a(R).

% A callee with more variables than the caller.
mv_a(R) :- mv_b(R).
mv_b(R) :- A = 1, B = 2, C is A+B, D = [A,B,C], E = e(D), F = f(E), R = F.
r_more(R) :- mv_a(R).

% Tail calls through call/N and both branches of an if-then-else.
cn_a(0, R) :- !, R = done.
cn_a(N, R) :- N1 is N-1, ( N1 mod 2 =:= 0 -> call(cn_b, N1, R) ; cn_b(N1, R) ).
cn_b(N, R) :- cn_a(N, R).
r_calln(R) :- cn_a(1000, R).

% Attributed variables passed down a chain of tail calls.
at_a(X, R) :- freeze(X, R = woke(X)), at_b(X).
at_b(X) :- at_c(X).
at_c(X) :- X = 1.
r_freeze(R) :- at_a(_, R).

% Bigints and strings moved between clauses of different sizes.
bg_a(R) :- X is 2^100, bg_b(X, R).
bg_b(X, R) :- Y is X+1, Z = [X,Y], bg_c(Z, R).
bg_c([X,Y], R) :- R is Y-X.
r_bigint(R) :- bg_a(R).
st_a(R) :- string_concat("a long enough string to be ", "reference counted", S), st_b(S, R).
st_b(S, R) :- string_concat(S, "!", T), st_c(T, R).
st_c(T, R) :- string_length(T, R).
r_string(R) :- st_a(R).

% An unbound variable of the caller returned in a structure.
ub_a(R) :- ub_b(_, R).
ub_b(X, R) :- R = h(X, X).
r_unbound(R) :- ub_a(T), T = h(A, B), ( var(A), A == B -> R = shared ; R = broken ).

% A tail call in a clause that still has alternatives.
alt_a(X) :- alt_b(X).
alt_a(X) :- X = second.
alt_b(first).
r_alt(L) :- findall(X, alt_a(X), L).

% A chain of three predicates.
c1(0, R) :- !, R = end.
c1(N, R) :- c2(N, x, R).
c2(N, X, R) :- atom(X), c3(N, R).
c3(N, R) :- N1 is N-1, c1(N1, R).
r_chain(R) :- c1(1000, R).

main :-
	forall(
		member(T, [r_nd, r_lu, r_cut, r_out, r_share, r_ex, r_ball, r_bt, r_fewer, r_more,
			r_calln, r_freeze, r_bigint, r_string, r_unbound, r_alt, r_chain]),
		(	G =.. [T, R],
			(	catch(G, E, R = uncaught(E)) -> true ; R = failed ),
			write(T), write(': '), writeq(R), nl
		)
	).
%--------------------------------------------------------- 225 sundry_unget_char
:- initialization(main).

% unget_char/1,2 take a character, not its code - the argument is
% checked as in_character - but the code point was read out of the
% cell with get_smallint(), which for an atom is its offset in the
% symbol table. unget_char(S, a) therefore pushed back U+6101,
% wherever the atom 'a' happened to sit.
%
% The /2 clause also fetched a character out of the parser's line
% buffer into the same one-character slot before overwriting it, so
% ungetting after read/1 swallowed whatever the term was followed by.

% In the current directory, not /tmp: Windows and WASI have no such
% path. Deleted at the end of main/0.

tmpfile('tmp.unget_char.txt').

make_file(Text) :-
	tmpfile(F),
	open(F, write, S, []),
	write(S, Text),
	close(S).

check(Name, Goal, Expected) :-
	tmpfile(F),
	open(F, read, S, []),
	(	catch(call(Goal, S, Got), error(E, _), Got = threw(E))
	->	true
	;	Got = failed
	),
	catch(close(S), _, true),
	(	Got == Expected
	->	write(Name), write(' ok'), nl
	;	write(Name), write(' FAILED got '), writeq(Got),
		write(' wanted '), writeq(Expected), nl
	).

% --------------------------------------------------------------------

% what goes back comes back, and the stream carries on behind it

roundtrip(S, [A,B,C]) :-
	get_char(S, A), unget_char(S, A),
	get_char(S, B), get_char(S, C).

% a character the stream never held is put back just the same

arbitrary(S, [A,B]) :-
	unget_char(S, 'Z'), get_char(S, A), get_char(S, B).

% the character need not be one byte

multibyte(S, [A,B,C]) :-
	get_char(S, _), get_char(S, A), unget_char(S, A),
	get_char(S, B), get_char(S, C).

% read/1 takes the whole line into the parser's buffer; ungetting must
% not consume what is left of it

after_read(S, [T,A,B,C]) :-
	read(S, T), unget_char(S, 'Z'),
	get_char(S, A), get_char(S, B), get_char(S, C).

% end_of_file is admitted by in_character, and the get_char/2 that
% reported it consumed nothing, so putting it back restores nothing

unget_eof(S, A) :-
	unget_char(S, end_of_file), get_char(S, A).

at_real_eof(S, [E,F]) :-
	get_char(S, _), get_char(S, _), get_char(S, _), get_char(S, E),
	unget_char(S, end_of_file), get_char(S, F).

% the empty atom passes the type check but is no character

empty(S, _) :- unget_char(S, '').

% the current-input clause behaves the same

current(S, [A,B,C]) :-
	current_input(Old),
	set_input(S),
	get_char(A), unget_char(A), get_char(B), get_char(C),
	set_input(Old).

main :-
	make_file('abc'),
	check(roundtrip, roundtrip, [a,a,b]),
	check(arbitrary, arbitrary, ['Z',a]),
	check(unget_eof, unget_eof, a),
	check(at_real_eof, at_real_eof, [end_of_file,end_of_file]),
	check(empty, empty, threw(type_error(in_character, ''))),
	check(current_input, current, [a,a,b]),

	make_file('héllo'),
	check(multibyte, multibyte, ['é','é',l]),

	make_file('1. abc'),
	check(after_read, after_read, [1,'Z',' ',a]),

	tmpfile(F),
	catch(delete_file(F), _, true).
%------------------------------------------------------------ 226 tests_test0000
:-initialization(main).

f(1). f(2). f(3).
g(a). g(b).

main :- f(X), write(X), nl, g(Y), write('\t'), write(Y), nl, fail.
main.
%------------------------------------------------------------ 227 tests_test0001
:-initialization(main).

f(1). f(2). f(3).

main :- f(X), write(X), nl, fail.
main.
%------------------------------------------------------------ 228 tests_test0002
:-initialization(main).

h([H|T],L) :- L=[H|T].

main :- h([a,b,c,d],L), write(L), nl, L=[a,b,c,d].
%------------------------------------------------------------ 229 tests_test0003
:-initialization(main).

xrevzap([], L, L) :- !.
xrevzap([H|L], L2, L3) :- xrevzap(L, [H|L2], L3).
xreverse(L1, L2) :- xrevzap(L1, [], L2).

main :- xreverse([a,b,c,d],L), write(L), nl, L=[d,c,b,a].
%------------------------------------------------------------ 230 tests_test0004
:-initialization(main).

xmember(X, X) :- var(X), !, fail.
xmember(X, [X|_]).
xmember(X, [_|T]) :- xmember(X,T).

main :- xmember(X,[a,[b,b],c]), write(X), nl, fail.
main.
%------------------------------------------------------------ 231 tests_test0005
:-initialization(main).

f5(F) :- F=f(X,Y,Z), X=1, Y=2, Z=3.

main :- f5(X), write(X), nl.
%------------------------------------------------------------ 232 tests_test0007
:-initialization(main).

g(a). g(b).

main :-
	ignore((g(X),X==z)),
	ignore((g(X),X==a)),
	write(X), nl.
%------------------------------------------------------------ 233 tests_test0008
:-initialization(main).

g(a). g(b).

main :- call(g(X)), write(X), nl, fail.
main.
%------------------------------------------------------------ 234 tests_test0009
:-initialization(main).

g(a). g(b).

main :- once(g(X)), write(X), nl, fail.
main.
%------------------------------------------------------------ 235 tests_test0010
:-initialization(main).

upto(N,X) :- N > 0, N1 is N - 1, upto(N1,X).
upto(N,X) :- true, N > 0, X = N.

main :- \+ ( upto(3,I), upto(I,J), \+ (write([I,J]), nl) ).
%------------------------------------------------------------ 236 tests_test0011
:-initialization(main).

upto(_,N,X) :- N > 0, N2 is N - 1, upto(c,N2,X).
upto(_,N,X) :- N > 0, X = N.

main :- upto(a,3,I), upto(b,I,J), write([I,J]), nl, fail.
main.
%------------------------------------------------------------ 237 tests_test0012
:-initialization(main).

sum(I,I,T,T) :- !.
sum(I,X,Tmp,T) :- NewTmp is Tmp+I, NewI is I+1, sum(NewI,X,NewTmp,T).

main :- sum(1,10000,0,T), write(T), nl.
%------------------------------------------------------------ 238 tests_test0014
:-initialization(main).

main :- between(1,100000,_), X=fail, ignore(X), fail.
main.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 239 tests_test0015
:-initialization(main).

main :- \+ (\+ true), write('PASSED!'), nl.
%------------------------------------------------------------ 240 tests_test0016
:-initialization(main).

main :- call((true;false)), call((false;true)), write(ok), nl.
%------------------------------------------------------------ 241 tests_test0017
:-initialization(main).

integers(Low,High,[Low|Rest]) :-
	Low =< High,
	!,
	M is Low+1,
	integers(M,High,Rest).
integers(_,_,[]).

main :- integers(1, 100000, L), L=[H|_], write(H), nl.
%------------------------------------------------------------ 242 tests_test0018
:-initialization(main).

main :- atom_concat(X, Y, abcdef),
			write(X), write(' <==> '), write(Y), nl, fail.
main.
%------------------------------------------------------------ 243 tests_test0019
:-initialization(main).

populate :-
	assertz(x24(0)),
	assertz(x24(1)),
	assertz(x24(2)),
	assertz(x24(3)).

main :- populate, clause(x24(X),B), write(' > '), write(X), write(' <==> '), write(B), nl, fail.
main :- nl.
%------------------------------------------------------------ 244 tests_test0020
:-initialization(main).

populate :-
	assertz(x24(0)),
	assertz(x24(1)),
	assertz(x24(2)),
	assertz(x24(3)).

main :- populate, retract(x24(X)), write(X), nl.
%------------------------------------------------------------ 245 tests_test0021
:-initialization(main).

populate :-
	assertz(x24(0)),
	assertz(x24(1)),
	assertz(x24(2)),
	assertz(x24(3)).


main :- populate, retract(x24(X)), write(X), nl, fail.
main.
%------------------------------------------------------------ 246 tests_test0022
:-initialization(main).

:-set_prolog_flag(double_quotes,atom).
main :- S="a b c", write(S), nl.
%------------------------------------------------------------ 247 tests_test0023
:-initialization(main).
:-set_prolog_flag(double_quotes,chars).

main :- S="a b c", write(S), nl.
%------------------------------------------------------------ 248 tests_test0024
:-initialization(main).
:-set_prolog_flag(double_quotes,codes).

main :- S="a b c", write(S), nl.
%------------------------------------------------------------ 249 tests_test0025
:-initialization(main).

main :- findall(integer(I),between(1,10,I),L), write(L), nl.
%------------------------------------------------------------ 250 tests_test0026
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- findall(C, foo(_,_,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------ 251 tests_test0027
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- bagof(C, foo(_,_,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------ 252 tests_test0028
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- findall(Cs, bagof(C, foo(_,_,C), Cs), L), write(L), nl.
%------------------------------------------------------------ 253 tests_test0029
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- between(1,10,_),bagof(C, foo(_,_,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------ 254 tests_test0030
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- bagof(C, A^B^foo(A,B,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------ 255 tests_test0031
:-initialization(main).

foo(a,b,c).
foo(a,b,d).
foo(b,c,e).
foo(b,c,f).
foo(c,c,g).
foo(d,e,g).

main :- setof(C, A^B^foo(A,B,C), Cs), write(Cs), nl, fail.
main.
%------------------------------------------------------------ 256 tests_test0032
:- use_module(library(iso_ext)).
:- initialization(main).

equal(3,1+2).
equal(24,6*4).
equal(1,5 mod 2).

main :- forall(equal(Left,Right), Left =:= Right), write(ok), nl.
%------------------------------------------------------------ 257 tests_test0033
:-initialization(main).

main :-
    Item = {
       'author': 'Philip K Dick',
       'works': [
          {'title': 'The Man in the High Castle'},
          {'title': 'Do Androids Dream of Electric Sheep'}
       ]
    },
    Item = {Author,_Works},
    Author = ('author':V),
    V == 'Philip K Dick',
    write(V), nl.
%------------------------------------------------------------ 258 tests_test0034
:-initialization(main).

main :-
    number_chars(123, ['1','2','3']),
    number_codes(123, [49,50,51]),
    atom_chars('123', ['1','2','3']),
    atom_codes('123', [49,50,51]),
    atom_codes('一二三', [19968,20108,19977]),
    write('PASSED!'), nl.
%------------------------------------------------------------ 259 tests_test0035
:-initialization(main).

main :-
    write((1/2/3)), nl,
    write((a,b,c)), nl,
    write({a,b,c}), nl,
    write(((1/2)/3)), nl,
    write((a,(b,c))), nl,
    write({a,(b,c)}), nl.
%------------------------------------------------------------ 260 tests_test0036
:-initialization(main).

main :-
    write([a]), nl,
    write('.'(a,[])), nl,
    write(.(a,[])), nl.
%------------------------------------------------------------ 261 tests_test0037
:- initialization(main).

last_element([], Out) :- Out = nil.
last_element([Arg|Rest], Out) :- write(Arg), last_element(Rest, Out).

foo(A, B, Out) :- last_element([A|B], Out).
bar(A, B) :- foo(A, [B], _Out).

main :- bar(a, b), nl.
%------------------------------------------------------------ 262 tests_test0039
:- initialization(main).

main :- write('foo\
bar'), nl.
%------------------------------------------------------------ 263 tests_test0040
:-initialization(main).

:-op(500, xfy, '').

main :-
	write_canonical(1 '' 2), nl, write(1 '' 2), nl,
	write_canonical((-)-(-)), nl, write((-)-(-)), nl,
	write_canonical((1+2)*3), nl, write((1+2)*3), nl,
	write_canonical(1*(2+3)), nl, write(1*(2+3)), nl,
	writeq([.,.(.,.,.)]), nl.
%------------------------------------------------------------ 264 tests_test0041
:- initialization(main).

list(0,L) :- L = [].
list(N,L) :- N1 is N - 1, list(N1,L1), L = [c|L1].

main :- list(5000,L), atom_chars(A,L), write(A), nl.
%------------------------------------------------------------ 265 tests_test0042
:- initialization(main).

main :- length([1,2,3], N), write(N), nl.
%------------------------------------------------------------ 266 tests_test0043
:- initialization(main).

foo(L, _X) :- [a|L1] = L, [_Y|_L2] = L1.
bar(L, _X) :- foo(L, _Y).
baz(L) :- bar(L, _X).

main :- baz([a]).
main.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 267 tests_test0044
:- initialization(main).

foo(L) :- [a|_] = L, write('foo'), nl.
bar([X|L]) :- foo([X|L]).

main :- bar([a]).
%------------------------------------------------------------ 268 tests_test0045
:- initialization(main).

ok(N) :- write(ok), write(N).
ok(N) :- write(again), write(N).

main :- (true -> ok(1) ; write(nok1)), nl, fail.
main :- (false -> write(nok2) ; ok(2)), nl, fail.
main.
%------------------------------------------------------------ 269 tests_test0046
:- initialization(main).
:- use_module(library(lists)).

main :-
	append([a,b],[c,d],L), write(L), nl,
	append(L1,L2,[a,b,c,d]), write(L1), write(' <==> '), write(L2), nl, fail.
main.
%------------------------------------------------------------ 270 tests_test0047
:- initialization(main).

foo(A, B) :- A = 1, write(B), nl.

main :- foo(X, X).

%------------------------------------------------------------ 271 tests_test0048
:- initialization(main).
:- use_module(library(lists)).

foo([bar(a), bar(b), bar(c), bar(d)]).

main :- foo(Bars), member(bar(Bar), Bars), write(Bar), nl, fail.
main.
%------------------------------------------------------------ 272 tests_test0049
:-initialization(main).

foo(a, b, c).
foo(a, b, d).
foo(a, b, a).
foo(a, b, a).
foo(b, c, f).
foo(b, c, e).
foo(c, c, g).

main :-
	test1a, test2a, test3a, test4a,
	test1b, test2b, test3b, test4b.

test1a :-
	findall(C,foo(_,_,C),L),
	write(L), nl,
	fail.
test1a.

test1b :-
	findall(bar(C),foo(_,_,C),L),
	write(L), nl,
	fail.
test1b.

test2a :-
	bagof(C,foo(_,_,C),L),
	write(L), nl,
	fail.
test2a.

test2b :-
	bagof(bar(C),foo(_,_,C),L),
	write(L), nl,
	fail.
test2b.

test3a :-
	bagof(C,A^B^foo(A,B,C),L),
	write(L), nl,
	fail.
test3a.

test3b :-
	bagof(bar(C),A^B^foo(A,B,C),L),
	write(L), nl,
	fail.
test3b.

test4a :-
	setof(C,A^B^foo(A,B,C),L),
	write(L), nl,
	fail.
test4a.

test4b :-
	setof(bar(C),A^B^foo(A,B,C),L),
	write(L), nl,
	fail.
test4b.

%------------------------------------------------------------ 273 tests_test0050
:- initialization(main).
:- use_module(library(lists)).

main :-
	houses(Houses),
	member(house(red,english,_,_,_),Houses),
	member(house(_,spanish,dog,_,_),Houses),
	member(house(green,_,_,coffee,_),Houses),
	member(house(_,ukrainian,_,tea,_),Houses),
	right_of(house(green,_,_,_,_),house(ivory,_,_,_,_),Houses),
	member(house(_,_,snails,_,winstons),Houses),
	member(house(yellow,_,_,_,kools),Houses),
	Houses = [_,_,house(_,_,_,milk,_),_,_],
	Houses = [house(_,norwegian,_,_,_)|_],
	next_to(house(_,_,_,_,chesterfields),house(_,_,fox,_,_),Houses),
	next_to(house(_,_,_,_,kools),house(_,_,horse,_,_),Houses),
	member(house(_,_,_,orange_juice,lucky_strikes),Houses),
	member(house(_,japanese,_,_,parliaments),Houses),
	next_to(house(_,norwegian,_,_,_),house(blue,_,_,_,_),Houses),
	member(house(_,_,zebra,_,_),Houses),
	member(house(_,_,_,water,_),Houses),
	print_houses(Houses).

houses([
	house(_,_,_,_,_),
	house(_,_,_,_,_),
	house(_,_,_,_,_),
	house(_,_,_,_,_),
	house(_,_,_,_,_)]).

right_of(A,B,[B,A|_]).
right_of(A,B,[_|Y]) :- right_of(A,B,Y).

next_to(A,B,[A,B|_]).
next_to(A,B,[B,A|_]).
next_to(A,B,[_|Y]) :- next_to(A,B,Y).

print_houses([A|B]) :- !, write(A), nl, print_houses(B).
print_houses([]).
%------------------------------------------------------------ 274 tests_test0051
:-initialization(main).

qsort([X|L],R,R0) :-
	mypartition(L,X,L1,L2),
	qsort(L2,R1,R0),
	qsort(L1,R,[X|R1]).
qsort([],R,R).

mypartition([X|L],Y,[X|L1],L2) :-
	X < Y,
	mypartition(L,Y,L1,L2).
mypartition([X|L],Y,L1,[X|L2]) :-
	mypartition(L,Y,L1,L2).
mypartition([],_,[],[]).

main :-
	list50(L),
	qsort(L,X,[]),
	write(X), nl.

list50([27,74,17,33,94,18,46,83,65,2,32,53,28,85,99,47,28,82,6,11,55,29,39,81,90,37,10,0,66,51,7,21,85,27,31,63,75,4,95,99,11,28,61,74,18,92,40,53,59,8]).
%------------------------------------------------------------ 275 tests_test0052
:-initialization(main).

primes(Limit,Ps) :-
    integers(2,Limit,Is),
    sift(Is,Ps).

integers(Low,High,[Low|Rest]) :-
    Low =< High,
    !,
    M is Low+1,
    integers(M,High,Rest).
integers(_,_,[]).

sift([],[]) :- !.
sift([I|Is],[I|Ps]) :-
    remove(I,Is,New),
    sift(New,Ps).

remove(_,[],[]) :- !.
remove(P,[I|Is],Nis) :-
    0 is I mod P,
    !,
    remove(P,Is,Nis).
remove(P,[I|Is],[I|Nis]) :-
    X is I mod P,
    X \= 0,
    remove(P,Is,Nis).

main :-
    primes(100, X),
    write(X), nl.
%------------------------------------------------------------ 276 tests_test0053
:-initialization(main).

fib(0,1) :- !.
fib(1,1) :- !.
fib(N,R) :-
    N1 is N - 1,
    N2 is N1 - 1,
    fib(N1,R1),
    fib(N2,R2),
    R is R1 + R2.

main :-
	fib(20,F),
	write(F), nl.
%------------------------------------------------------------ 277 tests_test0054
:-initialization(main).

% Find all solutions of an 8 by 8 board.
% The \+ with the fail is a trick to make it find all solutions.

main :- queens(8,Qs), write(Qs), nl, fail.
main.

queens(N,Qs) :- rangeList(1,N,Ns), queens3(Ns,[],Qs).

queens3(UnplacedQs,SafeQs,Qs) :-
    selectq(Q,UnplacedQs,UnplacedQs1),
    \+ attack(Q,SafeQs),
    queens3(UnplacedQs1,[Q|SafeQs],Qs).
queens3([],Qs,Qs).

attack(X,Xs) :- attack3(X,1,Xs).

attack3(X,N,[Y|_]) :- (X =:= Y+N) ; (X =:= Y-N).
attack3(X,N,[_|Ys]) :- N1 is N+1, attack3(X,N1,Ys).

rangeList(M,N,[M]) :- M >= N, !.
rangeList(M,N,[M|Tail]) :- M1 is M+1, rangeList(M1,N,Tail).

selectq(X,[X|Xs],Xs).
selectq(X,[Y|Ys],[Y|Zs]) :- selectq(X,Ys,Zs).
%------------------------------------------------------------ 278 tests_test0055
:-initialization(main).

% Copyright (C) 1988,1989 Herve' Touati,Aquarius Project,UC Berkeley

% the queens on a chessboard problem (queens) for 4x4 board

main :- doit(4,_).

size(4).
int(1).
int(2).
int(3).
int(4).

doit(Size,Soln) :-
    get_solutions(Size,Soln),
    inform(Soln),
    fail.
doit(_,_).

get_solutions(Board_size,Soln) :-
    solve(Board_size,[],Soln).

% newsquare generates legal positions for next queen

newsquare([],square(1,X)) :-
    int(X).
newsquare([square(I,J)|Rest],square(X,Y)) :-
    X is I + 1,
    int(Y),
    \+ threatened(I,J,X,Y),
    safe(X,Y,Rest).

% safe checks whether square(X,Y) is threatened by any
% existing queens

safe(_,_,[]).
safe(X,Y,[square(I,J)|L]) :-
    \+ threatened(I,J,X,Y),
    safe(X,Y,L).

% threatened checks whether squares (I,J) and (X,Y)
% threaten each other

threatened(I,_,X,_) :-
    I = X,
    !.
threatened(_,J,_,Y) :-
    J = Y,
    !.
threatened(I,J,X,Y) :-
    U is I - J,
    V is X - Y,
    U = V,
    !.
threatened(I,J,X,Y) :-
    U is I + J,
    V is X + Y,
    U = V,
    !.

% solve accumulates the positions of occupied squares

solve(Bs,[square(Bs,Y)|L],[square(Bs,Y)|L]) :-
    size(Bs).
solve(Bs,Initial,Final) :-
    newsquare(Initial,Next),
    solve(Bs,[Next|Initial],Final).

inform([]) :- nl,nl.
inform([M|L]) :- write(M),nl,inform(L).
%------------------------------------------------------------ 279 tests_test0056
:- use_module(library(dcgs)).
:- initialization(main).

sentence --> np, vp.
np --> det, noun.
vp --> verb, np.
vp --> verb.

noun --> [woman].
noun --> [man].
verb --> [shoots].
det --> [the].
det --> [a].

/*
    Generate all possible sentences...
*/

main :- phrase(sentence, X), write(X), nl, fail.
main.
%------------------------------------------------------------ 280 tests_test0057
:- use_module(library(dcgs)).

:-initialization(main).

% A blocks grammar in DCG

s --> vp.
s --> qest.
qest --> wh_loc, vbe, np.
qest --> wh_obj1, vbe, pp.
qest --> wh_obj2, snp, vbe, pp.
qest --> vbe, np, pp.
vp --> v, np.
np --> pn.
np --> det, snp.
np --> det, snp, pp.
snp --> noun.
snp --> ap, noun.
ap --> adj.
ap --> adj, ap.
pp --> prep, np.

noun --> [block].
noun --> [box].
noun --> [table].
noun --> [one].
pn --> [it].
v --> [put].
v --> [move].
v --> [pickup].
v --> [putdown].
vbe --> [is].
wh_loc --> [where].
wh_obj1 --> [what].
wh_obj2 --> [which].
adj --> [white].
adj --> [red].
adj --> [blue].
adj --> [green].
adj --> [big].
adj --> [small].
adj --> [large].
adj --> [little].
prep --> [on].
prep --> [onto].
prep --> [above].
prep --> [over].
det --> [each].
det --> [every].
det --> [the].
det --> [a].
det --> [some].

/*
    Test supplied sentence for parsing...
*/

test(S) :- phrase(s,S), write(S), write(' '), writeq('OK!'), nl.
test(S) :- write(S), write(' '), writeq('*** ERROR?'), nl.

main :-
    test([pickup,the,small,white,box]),
    test([pickup,the,white,small,box]),
    test([pickup,the,small,box]),
    test([pickup,the,box]),
    test([pickup,box]),             % should error
    test([paint,the,box]),          % should error
	true.
%------------------------------------------------------------ 281 tests_test0058
:-initialization(main).

main :- sub_atom(abc,B,L,A,S),writeq([B,L,A,S]), nl, fail.
main :- nl, sub_atom(abc,B,2,A,S),writeq([B,2,A,S]), nl, fail.
main :- nl, sub_atom(abc,0,2,A,S),writeq([0,2,A,S]), nl, fail.
main :- nl, sub_atom(abc,0,L,A,S),writeq([0,L,A,S]), nl, fail.
main :- nl, sub_atom(abc,B,L,0,S),writeq([B,L,0,S]), nl, fail.
main :- nl, sub_atom(abc,B,2,0,S),writeq([B,2,0,S]), nl, fail.
main.
%------------------------------------------------------------ 282 tests_test0059
:- initialization(main).
:- use_module(library(lists)).

main :- test1, test2, test3, test4a, test4b, test5a, test5b, test6a, test6b, test6c, test7,
        test8, test9a, test9b, test9c, test10, test11a, test11b, test12, test13, test14,
        test15a, test15b, test15c, test15d, test16a, test16b, test16c, test17, test18, test19.

test1 :-
    write('Test1  :\t'),
    F = f(a,_,c),
    functor(F,f,3),
    arg(2,F,b),
    F = f(a,b,c),
    write('PASSED!'), nl, !.

test2 :-
    write('Test2  :\t'),
    F = f(a,b,c),
    copy_term(F,X),
    F=X,
    write('PASSED!'), nl, !.

test3 :-
    write('Test3  :\t'),
    F = f(A,B,C),
    copy_term(F,X),
    F=X,
    A=a, B=b, C=c,
    arg(2,X,b),
    write('PASSED!'), nl, !.

test4a :-
    write('Test4a :\t'),
    (true -> write('PASSED!') ; write('ERROR')),
    nl.

test4b :-
    write('Test4b :\t'),
    (fail -> write('ERROR') ; write('PASSED!')),
    nl.

name5(john).
name5(mary).
name5(tom).

test5a :-
    write('Test5a :\t'),
    (name5(john) ; write('ERROR')),
    write('PASSED!'), nl, !.

test5b :-
    write('Test5b :\t'),
    (name5(fred) ; name5(mary)),
    write('PASSED!'), nl, !.

test6a :-
    write('Test6a :\t'),
    F = {a,b,c},
    functor(F,{},1),
    write('PASSED!'), nl, !.

test6b :-
    write('Test6b :\t'),
    F = [a,b,c],
    functor(F,'.',2),
    write('PASSED!'), nl, !.

test6c :-
    write('Test6c :\t'),
    F = (a,b,c),
    functor(F,',',2),
    write('PASSED!'), nl, !.

test7 :-
    write('Test7  :\t'),
    (1/2/3) = ((1/2)/3),
    (a,b,c) = (a,(b,c)),
    {a,b,c} = {a,(b,c)},
    write('PASSED!'), nl, !.

test8 :-
    write('Test8  :\t'),
    arg(1,f(a,b,c),a),
    arg(2,f(a,b,c),b),
    arg(3,f(a,b,c),c),
    write('PASSED!'), nl, !.

test9a :-
    write('Test9a :\t'),
    arg(1,{a,b,c},(a,b,c)),
    write('PASSED!'), nl, !.

test9b :-
    write('Test9b :\t'),
    arg(1,[a,b,c],a),
    arg(2,[a,b,c],[b,c]),
    write('PASSED!'), nl, !.

test9c :-
    write('Test9c :\t'),
    arg(1,(a,b,c),a),
    arg(2,(a,b,c),(b,c)),
    write('PASSED!'), nl, !.

test10 :-
    write('Test10 :\t'),
    Item = {
       'author': 'Philip K Dick',
       'works': [
          {'title': 'The Man in the High Castle'},
          {'title': 'Do Androids Dream of Electric Sheep'}
       ]
    },
    Item = {Author,_Works},
    Author = ('author':V),
    V == 'Philip K Dick',
    write('PASSED!'), nl, !.

age11(peter,7).
age11(anne,5).
age11(pat,8).
age11(tom,5).

test11a :-
    write('Test11a:\t'),
    findall(Name,age11(Name,Age),L1),
    L1 = [peter,anne,pat,tom],
    findall(Age,age11(Name,Age),L2),
    L2 = [7,5,8,5],
    write('PASSED!'), nl, !.

test11b :-
    write('Test11b:\t'),
    findall(X,member(X,[one,two,three]),L),
    L = [one,two,three],
    write('PASSED!'), nl, !.

test12 :-
    write('Test12 :\t'),
    number_chars(123, ['1','2','3']),
    number_codes(123, [49,50,51]),
    atom_chars('123', ['1','2','3']),
    atom_codes('123', [49,50,51]),
    atom_codes('一二三', [19968,20108,19977]),
    write('PASSED!'), nl, !.

test13 :-
    write('Test13 :\t'),
    F =.. [a,1,2],
    F = a(1,2),
    a(1,2,3) =.. L, L=[a,1,2,3],
    write('PASSED!'), nl, !.

bar14([A],B) :- A=B.
foo14(A,B) :- bar14(A,B).

test14 :-
    write('Test14 :\t'),
    A=a, foo14([A],B), A=B,
    write('PASSED!'), nl, !.

test15a :-
    write('Test15a:\t'),
    call(X is 1+2), X =:= 3,
    write('PASSED!'), nl, !.

test15b :-
    write('Test15b:\t'),
    call((X is 1+2, true)), X =:= 3,
    write('PASSED!'), nl, !.

test15c :-
    write('Test15c:\t'),
    call(is,X,1+2), X =:= 3,
    write('PASSED!'), nl, !.

test15d :-
    write('Test15d:\t'),
    compare(<,1,2),
    compare(=,2,2),
    compare(>,3,2),
    write('PASSED!'), nl, !.

test16a  :-
    write('Test16a:\t'),
    once(X is 1+2), X =:= 3,
    write('PASSED!'), nl, !.

test16b  :-
    write('Test16b:\t'),
    once((X is 1+2, true)), X =:= 3,
    write('PASSED!'), nl, !.

test16c  :-
    write('Test16c:\t'),
    findall(X,once(age11(X,_)),L),
    ground(L), L=[peter],
    write('PASSED!'), nl, !.

test17  :-
    write('Test17 :\t'),
    assertz({abc,123}), assertz({xyz,456}),
    clause({abc,X},B), X = 123, B = true,
    clause({xyz,Y},C), Y = 456, C = true,
    {abc,Z}, Z = 123,
    retract({xyz,W}), W = 456,
    write('PASSED!'), nl, !.

test18a2(X) :- X = f(a,b), fail.
test18a2(X) :- X = f(b,c), fail.
test18a2(X) :- X = f(_,world).
test18a(X) :- test18a2(X).

test18b2(X) :- X = f(e,f), fail.
test18b2(X) :- X = f(f,g), fail.
test18b2(X) :- X = f(hello,_).
test18b(X) :- test18b2(X).

test18 :-
    write('Test18 :\t'),
    X = f(_,_),
    test18a(X),
    \+ ground(X),
    test18b(X),
    ground(X),
    X = f(hello,world),
    write('PASSED!'), nl, !.

test19 :-
    write('Test19 :\t'),
    [a] = '.'(a,[]),
    [a] = .(a,[]),
    write('PASSED!'), nl, !.
%------------------------------------------------------------ 283 tests_test0060
:- initialization(main).
:- use_module(library(lists)).

main :-
	JsonData = '[{"foo": 1, "bar": 2}, {"bar": 3, "foo": 4}]',
	read_term_from_atom(JsonData, Data, [double_quotes(atom)]),
	findall(X, (member({F1:A, F2:B},Data), (F1=foo -> X = A ; (F2=foo -> X = B))), L),
	writeq(L), nl.
%------------------------------------------------------------ 284 tests_test0061
:- initialization(main).

main :-
	read_term_from_chars("[1,2,3]", Term, []),
	write(Term), nl.
%------------------------------------------------------------ 285 tests_test0062
:- use_module(library(dcgs)).

:- initialization(main).
:- set_prolog_flag(double_quotes, codes).

name(N, L) :-
	( number(N) -> number_codes(N, L) ; atom_codes(N, L) ).

/*

Perl Style Regular Expressions in Prolog
CMPT 383 Lecture Notes
Robert D. Cameron
April 3, 2002
Case Study: Implementing Perl Style Regular Expressions

A Prolog system for processing Perl style regular expressions can be implemented via the following steps.

   1. Defining the BNF grammar of Perl-style regular expressions.
   2. Defining a Prolog representation of Perl regular expressions.
   3. Build a DCG parser for Perl regular expressions.
   4. Building a regular expression matcher in Prolog.

This is a useful case study of symbolic computing in Prolog and also an exploration of the semantics of regular expressions.
BNF Grammar of Regular Expressions

Following the precedence rules given previously, a BNF grammar for Perl-style regular expressions can be constructed as follows.
<RE> 	::= 	<union> | <simple-RE>
<union> 	::=	<RE> "|" <simple-RE>
<simple-RE> 	::= 	<concatenation> | <basic-RE>
<concatenation> 	::=	<simple-RE> <basic-RE>
<basic-RE> 	::=	<star> | <plus> | <elementary-RE>
<star> 	::=	<elementary-RE> "*"
<plus> 	::=	<elementary-RE> "+"
<elementary-RE> 	::=	<group> | <any> | <eos> | <char> | <set>
<group> 	::= 	"(" <RE> ")"
<any> 	::= 	"."
<eos> 	::= 	"$"
<char> 	::= 	any non metacharacter | "\" metacharacter
<set> 	::= 	<positive-set> | <negative-set>
<positive-set> 	::= 	"[" <set-items> "]"
<negative-set> 	::= 	"[^" <set-items> "]"
<set-items> 	::= 	<set-item> | <set-item> <set-items>
<set-items> 	::= 	<range> | <char>
<range> 	::= 	<char> "-" <char>
Prolog Representation of Regular Expressions

To represent regular expressions as symbolic objects in Prolog, we specify that union/2, conc/2, star/1, plus/1, and group/1 represent the five types of structured (recursively defined) regular expression. The symbolic atoms any and eos represent the metacharacters "." and "$", while char/1 represents a single character. Positive and negative sets are represented respectively as posSet/1 and negSet/1, in which set items are enclosed in a list. The set items may be individual char/1 items or range/2 structures for character ranges.
DCG Parser for Regular Expressions

Constructing the DCG parser requires apply the left recursion removal techniques illustrated earlier for both the <RE> and <basic-RE> productions. We also left factor the <simple-RE> production to avoid backtracking.
*/

re(Z) --> basicRE(W), reTail(W, Z).
reTail(W, Z) --> "|", basicRE(X), reTail(union(W,X), Z).
reTail(W, W) --> {true}.
basicRE(Z) --> simpleRE(W), basicREtail(W, Z).
basicREtail(W, Z) --> simpleRE(X), basicREtail(conc(W,X), Z).
basicREtail(W, W) --> {true}.
simpleRE(Z) --> elementalRE(W), simpleREtail(W, Z).
simpleREtail(W, star(W)) --> "*".
simpleREtail(W, plus(W)) --> "+".
simpleREtail(W, W) --> {true}.
re_metachar("\\").
re_metachar("|").
re_metachar("*").
re_metachar("+").
re_metachar(".").
re_metachar("[").
re_metachar("$").
re_metachar("(").
re_metachar(")").
elementalRE(any) --> ".".
elementalRE(group(X)) --> "(", re(X), ")".
elementalRE(eos) --> "$".
elementalRE(char(C)) --> [C], {\+(re_metachar([C]))}.
elementalRE(char(C)) --> "\\", [C], {re_metachar([C])}.
%  For sets, first try the negative set syntax.  If the "[^" recognition
%  succeeds, use cut to make sure that any subsequent failure does not
%  cause the positive set interpretation to be used.
elementalRE(negSet(X)) --> "[^", {!}, setItems(X), "]".
elementalRE(posSet(X)) --> "[", setItems(X), "]".
setItems([Item1|MoreItems]) --> setItem(Item1), setItems(MoreItems).
setItems([Item1]) --> setItem(Item1).
setItem(char(C)) --> [C], {\+(set_metachar([C]))}.
setItem(char(C)) --> "\\", [C], {set_metachar([C])}.
setItem(range(A,B)) --> setItem(char(A)), "-", setItem(char(B)).
set_metachar("\\").
set_metachar("]").
set_metachar("-").


% Logic of Regular Expression Matching and Selection

%
% rematch1(RE, S, Unmatched, Selected) is true if RE matches
% a string Prefix such that S = [Prefix|Unmatched], and
% Selected is the list of substrings of Prefix that matched
% the parenthesized components of RE.

rematch1(union(RE1, _RE2), S, U, Selected) :-
  rematch1(RE1, S, U, Selected).
rematch1(union(_RE1, RE2), S, U, Selected) :-
  rematch1(RE2, S, U, Selected).
rematch1(conc(RE1, RE2), S, U, Selected) :-
  rematch1(RE1, S, U1, Sel1),
  rematch1(RE2, U1, U, Sel2),
  append(Sel1, Sel2, Selected).
% Try longest match first.
rematch1(star(RE), S, U, Selected) :-
  rematch1(RE, S, U1, Sel1),
  rematch1(star(RE), U1, U, Sel2),
  append(Sel1, Sel2, Selected).
rematch1(star(_RE), S, S, []).
rematch1(plus(RE), S, U, Selected) :-
  rematch1(RE, S, U1, Sel1),
  rematch1(star(RE), U1, U, Sel2),
  append(Sel1, Sel2, Selected).
% Match a group and add it to the end of
% list of selected items from the submatch.
rematch1(group(RE), S, U, Selected) :-
  rematch1(RE, S, U, Sel1),
  append(P, U, S),
  append(Sel1, [P], Selected).

rematch1(any, [_C1|U], U, []).
% Note that the following works for matching both regular
% characters and metacharacters.
rematch1(char(C), [C|U], U, []).

rematch1(eos, [], [], []).

rematch1(negSet(Set), [C|U], U, []) :-
  \+(charSetMember(C, Set)).

rematch1(posSet(Set), [C|U], U, []) :-
  charSetMember(C, Set).

charSetMember(C, [char(C) | _]).
charSetMember(C, [range(C1, C2) | _]) :-
  C1 =< C,
  C =< C2.
charSetMember(C, [_|T]) :- charSetMember(C, T).

/*
  Lexical Analysis with Regular Expressions

    * Define a regular expression that matches and extracts tokens.
    * Repeatedly apply this expression until all input is consumed.

The tokenize/3 predicate will do the whole job, given a satisfactory regular expression!
*/

%
%  tokenize(RE, Input, Output) is true if
%    - RE is the string representation of a regular expression,
%         with tokens identified by parenthesized subexpressions
%    - Input is an input string
%    - Output is the list of tokens extracted by repeated application
%      of RE to Input.
%
tokenize(RE, Input, Output) :-
  re(Parsed_RE, RE, []),
  tokenize2(Parsed_RE, Input, Output).

tokenize2(_P_RE, [], []).
tokenize2(P_RE, Input, Output) :-
  rematch1(P_RE, Input, Unmatched, SelStrings),
  names(Tokens, SelStrings),
  tokenize2(P_RE, Unmatched, MoreTokens),
  append(Tokens, MoreTokens, Output).

names([],[]).
names([Sym1|MoreSymbols], [Str1|MoreStrings]) :-
  name(Sym1, Str1),
  names(MoreSymbols, MoreStrings).

/*
To use the tokenizer for lexical analysis, we now need only define a regular expression that specifies the allowable forms of tokens and whitespace. Tokens should be included inside parenthesized regular expressions so they are returned; whitespace should not be included in parenthesized expressions. For example, if we consider the tokens for the numeric expression grammar described previously, an appropriate regular expression is " +|([0-9]+|\+|-)". Note that this expression defines 4 alternative string types: (1) sequences of one or more spaces (" +"), (2) sequences of one or more digits ("[0-9]+"), (3) the + operator (which must be escaped because it is a metacharacter), and (4) the - operator. However, only the last three are selected as tokens by inclusion within parentheses.

Finally, to use this expression in the Prolog tokenizer, the escape character itself must be escaped due to Prolog's string syntax conventions.
*/

main :-
  tokenize(" +|([0-9]+|\\+|-)", "12 + 4 - 29", L),
  write(L), nl, fail.
main.

  /*
L = [12,+,4,-,29] ? ;

L = [12,+,4,-,2,9] ? ;

L = [1,2,+,4,-,29] ? ;

L = [1,2,+,4,-,2,9] ? ;

Concluding Remarks

The regular expression package defined here in Prolog is intended to illustrate both the power of regular expressions and their semantics in logical form. It is not intended to be a practical tool. However, the built-in regular expression support provided by many scripting languages (Perl, Javascript and so on), Unix tools (emacs, ex, grep, and so on), and lexical analyzer generators (lex, flex, flex++, and so on) are indeed practical and can greatly simplify string processing. The use of regular expressions for lexical analysis is a standard technique that is widely used in symbolic computing applications.
*/
%------------------------------------------------------------ 286 tests_test0063
:- dynamic(p/3).
:- dynamic(p/2).
:- dynamic(q/2).
:- dynamic(r/2).
:- dynamic(r/1).
:- dynamic(h/1).

p(X, Y) :- q(X, Z), r(Z, Y).
q(q, s).
r(s, t).

main :-
	\+ \+ findall([X,Y], p(X, Y), [[q, t]]), write('ok1\n'),
	p(q, t), write('ok2\n'),
	\+ p(t, q), write('ok3\n'),
	\+ \+ findall(T, p(q, T), [t]), write('ok4\n'),
	\+ p(t, t), write('ok5\n'),
	\+ \+ retract((p(X,Y) :- q(X,Z), r(Z, Y))), write('ok6\n'),
	retract(q(_,_)), write('ok7\n'),
	\+ \+ assertz((p(X,_) :- q(f(f(X)), _), r(_, _))), write('ok8\n'),
	\+ \+ assertz(q(f(f(X)), r)), write('ok9\n'),
	p(_,_), write('ok10\n'),
	retract(q(_,_)), write('ok11\n'),
	assertz(q(f(f(x)), r)), write('ok12\n'),
	\+ \+ findall(X, p(X,_), [x]), write('ok13\n'),
	\+ \+ retract((p(X,_) :- q(f(f(X)), _), r(_, _))), write('ok14\n'),
	retract(q(_,_)), write('ok15\n'),
	\+ \+ assertz((p(X, Y) :- q(X, Y), r(X, Y))), write('ok16\n'),
	assertz(q(s, t)), write('ok17\n'),
	retract(r(_,_)), write('ok18\n'),
	\+ \+ assertz((r(X, Y) :- r(a))), write('ok19\n'),
	assertz(r(a)), write('ok20\n'),
	\+ \+ findall([X,Y], p(X, Y), [[s,t]]), write('ok21\n'),
	\+ p(t, _), write('ok22\n'),
	\+ \+ findall(T, p(s, T), [t]), write('ok23\n'),
	\+ \+ findall(S, p(S, t), [s]), write('ok24\n'),
	\+ \+ assertz((p(f(f(a), g(b), X), g(b), h) :- q(X, _))), write('ok25\n'),
	retract(q(_,_)), write('ok26\n'),
	assertz(q(_,_)), write('ok27\n'),
	\+ \+ findall([X,Y,Z], p(f(X, Y, Z), g(b), h), [[f(a), g(b), _]]), write('ok28\n'),
	\+ p(f(X, g(_), Z), g(Z), X), write('ok29\n'),
	\+ \+ findall([X,Y,Z], p(f(X, g(Y), Z), g(Z), h), [[f(a), b, b]]), write('ok30\n'),
	\+ \+ findall([X,Y,Z], p(Z, Y, X), [[h, g(b), f(f(a),g(b),_)]]), write('ok31\n'),
	\+ \+ findall([X,Y,Z], p(f(X, Y, Z), Y, h), [[f(a), g(b), _]]), write('ok32\n'),
	\+ \+ retract((p(X, Y) :- q(X, Y), r(X, Y))), write('ok33\n'),
	\+ \+ retract((p(f(f(a), g(b), X), g(b), h) :- q(X, _))), write('ok34\n'),
	\+ \+ assertz((p(_, f(_, Y, _)) :- h(Y))), write('ok35\n'),
	assertz(h(y)), write('ok36\n'),
	\+ \+ findall(Y, p(_, f(_, Y, _)), [y]), write('ok37\n'),
	p(_, f(_, y, _)), write('ok38\n'),
	\+ p(_, f(_, z, _)), write('ok39\n'),
	\+ \+ retract((p(_, f(_, Y, _)) :- h(Y))), write('ok40\n'),
	cleanup, write('ok41\n'),
	write(done), nl.

cleanup :-
	abolish(p/3),
	abolish(p/2),
	abolish(q/2),
	abolish(r/2),
	abolish(r/1),
	abolish(h/1).

:- initialization(main).
%------------------------------------------------------------ 287 tests_test0064
:- dynamic(p/2).
:- dynamic(p/3).

p(Z, Z).
clouds(are, nice).
p(Z, h(Z, W), f(W)).

main :-
	findall(Z, p(Z, Z), [Z]), write('ok1\n'),
	var(Z),
	findall(Z, p(Z, z), [z]), write('ok2\n'),
	findall(Z, p(Z, w), [w]), write('ok3\n'),
	\+ p(z, w), write('ok4\n'),
	p(w, w), write('ok5\n'),
	\+ clouds(Z, Z), write('ok6\n'),
	findall(Z, clouds(are, Z), [nice]), write('ok7\n'),
	\+ p(z, h(z, z), f(w)), write('ok8\n'),
	p(z, h(z, w), f(w)), write('ok9\n'),
	findall(W, p(z, h(z, W), f(w)), [w]), write('ok10\n'),
	findall(Z, p(Z, h(Z, w), f(Z)), [w]), write('ok11\n'),
	\+ p(z, h(Z, w), f(Z)), write('ok12\n'),
	retract(p(_,_,_)), write('ok13\n'),
	assertz(p(Z, h(Z, W), f(W))), write('ok14\n'),
	p(f(f(a)), h(f(f(a)), f(a)), f(f(a))), write('ok15\n'),
	retract(p(Z, h(Z, W), f(W))), write('ok16\n').

:- initialization(main).
%------------------------------------------------------------ 288 tests_test0065
:- initialization(main).
:- use_module(library(lists)).

%% Each sq is repr by sq(SqNum,Var,RowDig,ColDig,RegReg)
%% were XXXDig is a "bitmask" used(D1,...D9) and Dk is 1 iff digit k used in
%% that row/col/region else it's unbound.

main :-
	puzzle(P),
	make_cons(P,0,_,_,_,Cons),
	solve_cons(Cons),
	print_sol(P).

puzzle(P):-
	P=[_,_,_,_,_,_,_,1,2,
	   _,_,_,_,_,_,_,_,3,
	   _,_,2,3,_,_,4,_,_,
	   _,_,1,8,_,_,_,_,5,
	   _,6,_,_,7,_,8,_,_,
	   _,_,_,_,_,9,_,_,_,
	   _,_,8,5,_,_,_,_,_,
	   9,_,_,_,4,_,5,_,_,
	   4,7,_,_,_,6,_,_,_].

%% Make a constraint list using Rows, Cols and Boxs as
%% shared variables for each row, col and box.
%% Shared vars will be used to communicate digit choices
%% between different parts of the puzzle and allow
%% also to find the position that has the largest number
%% of clues at a given time during solution.

make_cons([X|Xs],I,Rows,Cols,Boxs,Out) :-
	get_row(I,Rows,R),
	get_col(I,Cols,C),
	get_box(I,Boxs,B),
	(
		var(X) ->
			Out=[sq(I,X,R,C,B)|Cs] ;
			(Cs=Out, set_dig(X,R), set_dig(X,C), set_dig(X,B))
	),
	I1 is I + 1,
	make_cons(Xs,I1,Rows,Cols,Boxs,Cs).
make_cons([],_,_,_,_,[]).

%% Extract given row, col or box from relevant structure
%% using "vector" of term arguments.

get_row(I,Rows,R) :-
	functor(Rows,rows,9),
	Rn is (I//9) + 1,
	arg(Rn,Rows,R).

get_col(I,Cols,C) :-
	functor(Cols,cols,9),
	Cn is (I mod 9) + 1,
	arg(Cn,Cols,C).

get_box(I,Boxs,B) :-
	functor(Boxs,boxs,9),
	Rn is I//9,
	Cn is I mod 9,
	C1 is Cn//3,
	R1 is Rn//3,
	Bn is (R1*3) + C1 + 1,
	arg(Bn,Boxs,B).

%% Set a digit D into the "bitmask" -- a structure
%% that looks like used(D1,...D9).
%% An arg of the struct is "1" if that digit has been "set"
%% otherwise it will be left unbound.
%% This repr allows bitmasks to be "unioned" using unification.

set_dig(D,Used) :-
	functor(Used,used,9),
	arg(D,Used,Bit), 	%% D is 1-9 -- a legal arg index
	var(Bit),			%% can only set "bit" if not already set
	Bit=1.

%% Solve list of constraints, best one first.
%% The best constraint to solve is the one with the most clues
%% aka the most restrictive.

solve_cons([]) :- !.
solve_cons(Cons) :-
	get_sq(Sq,Cons,Rest),
	solve1(Sq),
	solve_cons(Rest).

%% Find the constraint Sq in the list Cons that
%% has the least number of un-tried digits (aka unbound "bits").

get_sq(Sq,Cons,Rest) :-
	length(_,N),		%% generate 0..inf -- incr depending
	select(Sq,Cons,Rest),
	Sq=sq(_,V,_,_,_),
	var(V),				%% make sure sq has not been solved already
	num_vars(Sq,N),		%% count number of unused digits in Sq
	!.					%% take 1st answer

%% Union the "bitmasks" for row, col and box and count
%% the number of unbound bits. Make sure not to change
%% the bitmasks still associated with row, col, box in the
%% puzzle config.

num_vars(Sq,Num) :-
	copy_term(Sq,Sq1),	%% don't pollute the data take a copy
	Sq1=sq(_,_,R,C,B),
	R=C,				%% union of bits set in row, col and box
	C=B,
	num_vars1(R,Num).

%% Count num vars in "bitmask". Long form is 2x speed. This
%% pred seems to be in critical path.

num_vars1(used(X1,X2,X3,X4,X5,X6,X7,X8,X9),Num) :-
	N1 is 0,
	(var(X1) -> N2 is N1+1 ; N2 = N1),
	(var(X2) -> N3 is N2+1 ; N3 = N2),
	(var(X3) -> N4 is N3+1 ; N4 = N3),
	(var(X4) -> N5 is N4+1 ; N5 = N4),
	(var(X5) -> N6 is N5+1 ; N6 = N5),
	(var(X6) -> N7 is N6+1 ; N7 = N6),
	(var(X7) -> N8 is N7+1 ; N8 = N7),
	(var(X8) -> N9 is N8+1 ; N9 = N8),
	(var(X9) -> Num is N9+1; Num = N9).

%% Solve 1 square -- i.e. find a digit that can be legally assigned
%% by ref to bitmask in associated row, col and box.

solve1(sq(_,V,R,C,B)) :-
	digit(V),
	set_dig(V,R),
	set_dig(V,C),
	set_dig(V,B).

digit(D) :-
	member(D,[1,2,3,4,5,6,7,8,9]).

print_sol(X) :-
	print_row(X,X1),
	print_sol(X1).
print_sol([]).

print_row([X1,X2,X3,X4,X5,X6,X7,X8,X9|Rest],Rest) :-
	maplist(write,[X1,' ',X2,' ',X3,'  ',X4,' ',X5,' ',X6,'  ',X7,' ',X8,' ',X9]),
	nl.
%------------------------------------------------------------ 289 tests_test0066
main :-
	X1 is pi, write(X1), nl,
	X2 is e, write(X2), nl,
	X3 is 1 / 10, write(X3), nl.

:- initialization(main).
%------------------------------------------------------------ 290 tests_test0067
main :-
	( call(writeq, 'OK here') ->
		(nl, writeq('OK no error'), nl) ; (nl, writeq('OOPS was error'), nl)
	),
	writeq('OK done (3rd line)'), nl.

:- initialization(main).
%------------------------------------------------------------ 291 tests_test0068
main :-
	limit(5, offset(5, between(1,20,I))), writeq(I), nl, fail.
main.

:- initialization(main).
%------------------------------------------------------------ 292 tests_test0069
:- initialization(main).
:- use_module(library(freeze)).

task70(X,Y) :-
	write('Frozen X='),
	write(X), Y=456,
	write(', set Y='),
	write(Y), nl.

test70 :-
	freeze(X, task70(X,Y)),
	X=123, write('Y='),
	write(Y), nl,
	write('OK done'), nl.

task71(X) :-
	write('Frozen X='),
	write(X), nl, fail.

test71 :-
	freeze(X, task71(X)),
	X=123,
	write('Ooops'), nl.
test71 :-
	write('OK done'), nl.

task72(X) :-
	write('Frozen X='),
	write(X), nl.

test72 :-
	X=123,
	freeze(X, task72(X)),
	write('OK done'), nl.

main :- test70, test71, test72.
%------------------------------------------------------------ 293 tests_test0070
main :-
	L=[aa,bb,cc],L=[_|T],copy_term(T,T2),
	writeq(T2), nl.

:- initialization(main).
%------------------------------------------------------------ 294 tests_test0071
:- initialization(main).
:- use_module(library(lists)).

main :-
	findall(I, member(I, [A,B,B,A]), L),
	L = [A1,B1,B2,A2],
	write_term(L, [quoted(true),variable_names(['A1'=A1, 'B1'=B1, 'B2'=B2, 'A2'=A2])]), nl, fail.
main.
%------------------------------------------------------------ 295 tests_test0072
:- initialization(main(10)).
:- use_module(library(lists)).

main(Size) :-
    setof(Total, M^Freq^Perm^square(Size, M, Total, Freq, Perm), Totals),
    last(Totals, Max),
    square(Size, Board, Max, _, Permutation),
    writeq([Permutation, Board, Max]), nl.

var_matrix(Size, M) :-
    repeat(Size, Size, RowLengths),
    maplist(var_list, RowLengths, M).

repeat(X, 1, [X]) :-
    !.
repeat(X, N, [X|R]) :-
    NewN is N - 1,
    repeat(X, NewN, R).

var_list(N, L) :-
    length(L, N).

my_transpose(M, T) :-
    [H|_] = M,
    length(H, NCols),
    from_to(1, NCols, L),
    maplist(col(M), L, T).

col(Matrix, N, Column) :-
    maplist(nth1(N), Matrix, Column).

list_permute([], _, []).
list_permute([P1|Rest], L, [H|T]) :-
    nth1(P1, L, H),
    list_permute(Rest, L, T).

snd((_, X), X).

retain_var(_, [], []).
retain_var(V, [H|T], [H|L]) :-
    H == V,
    retain_var(V, T, L).
retain_var(V, [H|T], L) :-
    H \== V,
    retain_var(V, T, L).

count_var(VarList, Var, Num) :-
    retain_var(Var, VarList, List),
    length(List, Num).

total(Ints, Total) :-
    total(Ints, 0, Total).

total([], S, S).
total([(X, Y)|T], Acc, S) :-
    NewAcc is Acc + X*Y,
    total(T, NewAcc, S).

zip([], _, []) :-
    !.
zip(_, [], []) :-
    !.
zip([H1|T1], [H2|T2], [(H1, H2)|T]) :-
    zip(T1, T2, T).

from_to(M, N, L) :-
    (   var(L)
    ;   is_list(L)
    ),
    integer(M),
    integer(N),
    M =< N,
    from_to_acc(M, [N], L),
    !.
from_to(H, N, [H|T]) :-
    last([H|T], N),
    !,
    H =< N.

from_to_acc(H, [H|T], [H|T]).
from_to_acc(M, [H|T], L) :-
    NewHead is H - 1,
    !,
    from_to_acc(M, [NewHead, H|T], L).

eval_matrix(Matrix, FreqSorted) :-
    flatten(Matrix, Entries),
    setof(E, member(E, Entries), Set),
    maplist(count_var(Entries), Set, Multiplicities),
    zip(Multiplicities, Set, Frequencies),
    sort(Frequencies, FreqSorted),
    maplist(snd, FreqSorted, VarsSorted),
    length(VarsSorted, NVars),
    from_to(1, NVars, VarsSorted).

distinct([_]).
distinct([H|T]) :-
    notin(H, T),
    distinct(T).

notin(_, []).
notin(E, [H|T]) :-
    E \== H,
    notin(E, T).

next_partition([(2, 1)|T], [(1, 2)|T]).
next_partition([(2, AlphaK)|T], [(1, 2), (2, NewAlphaK)|T]) :-
    AlphaK > 1,
    NewAlphaK is AlphaK - 1.
next_partition([(K, 1)|T], [(1, 1), (NewK, 1)|T]) :-
    K > 2,
    NewK is K - 1.
next_partition([(K, AlphaK)|T], [(1, 1), (NewK, 1), (K, NewAlphaK)|T]) :-
    K > 2,
    AlphaK > 1,
    NewK is K - 1,
    NewAlphaK is AlphaK - 1.
next_partition([(1, Alpha1), (2, 1)|T], [(1, NewAlpha)|T]) :-
    NewAlpha is Alpha1 + 2.
next_partition([(1, Alpha1), (2, Alpha2)|T], [(1, NewAlpha1), (2, NewAlpha2)|T]) :-
    Alpha2 > 1,
    NewAlpha1 is Alpha1 + 2,
    NewAlpha2 is Alpha2 - 1.
next_partition([(1, Alpha1), (L, 1)|T], [(Rest, 1), (NewL, Ratio)|T]) :-
    L > 2,
    NewL is L - 1,
    Rest is (Alpha1 + L) mod NewL,
    Rest > 0,
    Ratio is (Alpha1 + L) // NewL.
next_partition([(1, Alpha1), (L, 1)|T], [(NewL, Ratio)|T]) :-
    L > 2,
    NewL is L - 1,
    Rest is (Alpha1 + L) mod NewL,
    Rest =:= 0,
    Ratio is (Alpha1 + L) // NewL.
next_partition([(1, Alpha1), (L, AlphaL)|T], [(Rest, 1), (NewL, Ratio), (L, NewAlphaL)|T]) :-
    L > 2,
    AlphaL > 1,
    NewL is L - 1,
    Rest is (Alpha1 + L) mod NewL,
    Rest > 0,
    Ratio is (Alpha1 + L) // NewL,
    NewAlphaL is AlphaL - 1.
next_partition([(1, Alpha1), (L, AlphaL)|T], [(NewL, Ratio), (L, NewAlphaL)|T]) :-
    L > 2,
    AlphaL > 1,
    NewL is L - 1,
    Rest is (Alpha1 + L) mod NewL,
    Rest =:= 0,
    Ratio is (Alpha1 + L) // NewL,
    NewAlphaL is AlphaL - 1.

ad_partition(N, [(K, AlphaK)|T]) :-
    generator([(N, 1)], [(K, AlphaK)|T]),
    K > 1.

generator(From, From).
generator(Last, P) :-
    next_partition(Last, New),
    generator(New, P).

splitter(N, Type, S) :-
    from_to(1, N, L),
    splitter(L, Type, [], S).

splitter([], [(_, 0)], Acc, S) :-
    reverse(Acc, S),
    !.
splitter(L, [(_, 0)|T], Acc, S) :-
    splitter(L, T, Acc, S).
splitter(L, [(K, AlphaK)|T], Acc, S) :-
    AlphaK > 0,
    append(L1, L2, L),
    length(L1, K),
    NewAlphaK is AlphaK - 1,
    splitter(L2, [(K, NewAlphaK)|T], [L1|Acc], S).

list_rotate([H|T], L) :-
    append(T, [H], L).

rep_perm(N, Type, Perm) :-
    splitter(N, Type, S),
    maplist(list_rotate, S, R),
    flatten(R, Perm).

square(Size, M, Total, Frequencies, Permutation) :-
    var_matrix(Size, M),
    ad_partition(Size, Partition),
    rep_perm(Size, Partition, Permutation),
    list_permute(Permutation, M, P),
    my_transpose(P, M),
    distinct(M),
    eval_matrix(M, Frequencies),
    total(Frequencies, Total).
%------------------------------------------------------------ 296 tests_test0073
:- initialization(main).

main :-
	X = {a:b},
	write(X), nl,
	Y = {}(a:b),
	write(Y), nl,
	Z = :(a,b),
	write(Z), nl,
	A = a:b,
	write(A), nl,
	B = (a:b),
	write(B), nl.


%------------------------------------------------------------ 297 tests_test0075
:- initialization(main).

:- dynamic(legs/2).
legs(A, 7) :- A, call(A).

main :-
	clause(legs(C,7), Body),
	Body == (call(C),call(C)),
	write(succeeded), nl,
	!.
main :-
	write(failed), nl.
%------------------------------------------------------------ 298 tests_test0076
:- use_module(library(dcgs)).

:- initialization(main).

as --> [].
as --> [a], as.

main :- phrase(as, Ls, []), write(Ls), nl, length(Ls, 5).
main.

%------------------------------------------------------------ 299 tests_test0077
:- initialization(main).
:- dynamic(insect/1).

insect(ant).
insect(bee).

% The output of this program using ISO Prolog
% logical update semantics should be:
%
%   ant
%   here
%   bee

main :-
    retract(insect(X)),
        write(X), nl,
        retract(insect(bee)),
        write(here), nl,
        fail.
main.
%------------------------------------------------------------ 300 tests_test0078
:- initialization(main).

% http://jens-otten.de/tutorial_cade19/
% https://www.philipzucker.com/javascript-automated-proving/

% -----------------------------------------------------------------
% leanseq.pl - A sequent calculus prover implemented in Prolog
% -----------------------------------------------------------------

% operator definitions (TPTP syntax)

:- op( 500, fy, ~).     % negation
:- op(1000, xfy, &).    % conjunction
:- op(1100, xfy, '|').  % disjunction
:- op(1110, xfy, =>).   % implication
:- op( 500, fy, !).     % universal quantifier:  ![X]:
:- op( 500, fy, ?).     % existential quantifier:  ?[X]:
:- op( 500, xfy, :).

% -----------------------------------------------------------------
prove0(F, P) :- prove([] > [F], P).
% -----------------------------------------------------------------

% axiom
prove(G > D, ax(G > D, A)) :- member(A,G), member(A,D), !.

% conjunction
prove(G > D, land(G > D, P) ) :- select1( (A & B) ,G,G1), !,
				prove([A , B | G1] > D, P).

prove(G > D, rand(G > D, P1,P2)) :- select1( (A & B) ,D,D1), !,
				prove(G > [A|D1], P1), prove(G > [B|D1], P2).

% disjunction
prove(G > D, lor(G > D, P1,P2)) :- select1((A | B),G,G1), !,
				prove([A|G1] > D, P1), prove([B|G1] > D, P2).

prove(G > D, ror(G > D, P)) :- select1( (A | B),D,D1), !,
				prove(G > [A,B|D1], P ).

% implication
prove(G > D, limpl(G > D, P1,P2)) :- select1((A => B),G,G1), !,
				prove(G1 > [A|D], P1), prove([B|G1] > D, P2).

prove(G > D, rimpl(G > D, P)) :- select1((A => B),D,D1), !,
				prove([A|G] > [B|D1], P).

% negation
prove(G > D, lneg(G > D, P)) :- select1( ~A,G,G1), !,
				prove(G1 > [A|D], P).

prove(G > D, rneg(G > D, P)) :- select1(~A ,D,D1), !,
				prove([A|G] > D1, P).

% -----------------------------------------------------------------
select1(X,L,L1) :- append(L2,[X|L3],L), append(L2,L3,L1).
% -----------------------------------------------------------------

/*
 Sample theorems to prove:

	((a => b) => a) => a
	a | ~ a
	(~(~a) => a) & (a => ~(~a))
	((a & b) => ~((~a | ~b))) & (~((~a | ~b)) => (a & b))
	a & b | a & ~b | ~a & b | ~a & ~c
	(~b => f) & ((b & f) => ~i) & ((i | ~b) => ~f) => b
	(~b => f) & ((b & f) => ~i) & ((i | ~b) => ~f) => (i & f)
*/

:- set_prolog_flag(double_quotes, codes).  % for presentation

main :-
	prove0((a | ~a), Proof),
	write(Proof), nl.

%------------------------------------------------------------ 301 tests_test0079
main :-
	N1 is -123456789012345678901234567890,
	N1 =:= -123456789012345678901234567890,
	write(N1), nl,
	N2 is float(1881676372353657772546715999894626455109783106026821047606410765129148590562263),
	write(N2), nl,
	N3 is gcd(987654321098765432109876543210, 42),
	N3 =:= 42,
	write(N3), nl,
	N4 is gcd(42, 987654321098765432109876543210),
	N4 =:= 42,
	write(N4), nl,
	N5 is gcd(987654321098765432109876543210, 123456789012345678901234567890),
	N5 =:= 9000000000900000000090,
	write(N5), nl,
	N6 is 15241578753238836750495351562536198787501905199875019052100 mod 1234567890123456789123,
	N6 =:= 122443787781019052100,
	write(N6), nl,
	N7 is 15241578753238836750495351562536198787501905199875019052100 rem 1234567890123456789123,
	N7 =:= 122443787781019052100,
	write(N7), nl,
	N8 is 15241578753238836750495351562536198787501905199875019052100 div 12345678901234567891234567,
	N8 =:= 1234567890123456788901234657800000,
	write(N8), nl,
	N9 is 370370367037037036703703703670 / 123456789012345678901234567890,
	N9 < (3.0 + 0.0000000001),
	N9 > (3.0 - 0.0000000001),
	write(N9), nl.

:- initialization(main).
%------------------------------------------------------------ 302 tests_test0080
:- use_module(library(freeze)).


main :-
	freeze(V1, W1=2),
	freeze(V2, W2=3),
	V1 = V2,
	(V1 = 1; V1 = -1),
	writeq([V1,V2,W1,W2]), nl,
	fail.
main.

:- initialization(main).
%------------------------------------------------------------ 303 tests_test0081
foo([
]).

bar([
1,2,3]).

baz([ /* test */ ]).

houses([
	house(_,_,_,_,_),
	house(_,_,_,_,_),
	house(_,_,_,_,_),
	house(_,_,_,_,_),
	house(_,_,_,_,_)]).

main :-
	true.

:- initialization(main).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 304 tests_test0082
main :-
	L = [A,B,C| L], copy_term_nat(L,V), V=[D,E,F|T], T == V,
	write_term(L, [quoted(true),variable_names(['A'=A, 'B'=B, 'C'=C])]), nl,
	write_term(V, [quoted(true),variable_names(['D'=D, 'E'=E, 'F'=F])]), nl,
	L = V.

:- initialization(main).
%------------------------------------------------------------ 305 tests_test0083
goal_expansion(calln(F,A1), P) :-
	P =.. [F, A1].

goal_expansion(calln(F,A1,A2), P) :-
	P =.. [F,A1,A2].

main :-
	X = hello,
	calln(writeq,user_output,X),
	nl.

:- initialization(main).
%------------------------------------------------------------ 306 tests_test0084
:- use_module(library(dcgs)).

:-initialization(main).

:- op(700, xfx, rplus).

:- dynamic(dummy/4).

goal_expansion(L rplus R, R + L).

dummy(A,B,C,D) :- B rplus A, D rplus C.

dummy(A,B) --> { B rplus A }.

dummy((Head --> Goals), Clause, _, _) :-
        list_goal(Goals, Body),
        expand_term((Head --> Body), Clause).

dummy(g(Goal), []) --> [{Goal}, !].

main :- listing(dummy/4).
%------------------------------------------------------------ 307 tests_test0085
% Traversing graph paths

oneway(paris,orleans).
oneway(paris,chartres).
oneway(paris,amiens).
oneway(orleans,blois).
oneway(orleans,bourges).
oneway(blois,tours).
oneway(chartres,lemans).
oneway(lemans,angers).
oneway(lemans,tours).
oneway(angers,nantes).

path(A,B) :-
    oneway(A,B).
path(A,B) :-
    oneway(A,C),
    path(C,B).

% test cases
case(path(_,nantes)).

test :-
    case(A),
    A,
    write(A),
    write('.'),
    nl,
    fail.
test.

:- initialization(test).
%------------------------------------------------------------ 308 tests_test0087
f(N) :- !, N > 0, N1 is N - 1, f(N1).
f(_) :- write(here), nl.

main :- f(1000000); write(ok), nl.

:- initialization(main).
%------------------------------------------------------------ 309 tests_test0088
main :-
	L1=[1|L1], L2=[1|L2], L1=L2,
	S2=f(1,S1), S2=f(1,S2), S1=S2.

:- initialization(main).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 310 tests_test0089
:- use_module(library(freeze)).

main :-
	freeze(X,(write(here),nl)), X \= true.

:- initialization(main).
%------------------------------------------------------------ 311 tests_test0090
:-initialization(main).

main :-
	[A,1] \= [A,2].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 312 tests_test0091
:-initialization(main).

main :-
	X1=f(_),copy_term([123|X1],C1), C1 = [123|f(Copy1)], write_term(C1, [variable_names(['Copy1'=Copy1])]), nl,
	X2=f(L2),L2=[123|X2],copy_term(L2,C2), write(C2), nl.
%------------------------------------------------------------ 313 tests_test0093
:-initialization(main).

main :-
	write_term([[h|t]|r],[max_depth(1)]), nl,
	write_term(+A - +B,[max_depth(2),variable_names(['A'=A, 'B'=B])]), nl,
	write_term(+A - +B - +C,[max_depth(2),variable_names(['A'=A, 'B'=B, 'C'=C])]), nl,
	write_term(-D* -E,[max_depth(2),variable_names(['D'=D, 'E'=E])]), nl,
	write_term([]*[]*[],[max_depth(3)]), nl,
	write_term_to_chars([1|(A*[[]*B])],[quoted(true),max_depth(5)],K),
	X = (A =:= -B-1), write_term(X, [variable_names(['A'=A, 'B'=B])]), nl,
	true.
%------------------------------------------------------------ 314 tests_test0094
:- meta_predicate(g(:)).

g(Goal) :- compound(Goal), write('ok: '), write(Goal), nl.

run :- g(true).

:- initialization(run).
:- initialization(g(foo:true)).

%------------------------------------------------------------ 315 tests_test0097
:- initialization(main).
:- use_module(library(dif)).

main :-
	dif([],A),L=A*L,L=L*A,A=a,
	!,
	write(nok), nl.
main :-
	write(ok), nl.

%------------------------------------------------------------ 316 tests_test0098
:- initialization(main).
:- use_module(library(dif)).

main :-
	dif([],A), A=_*A,
	write_term(A,[max_depth(5)]), nl.
%------------------------------------------------------------ 317 tests_test0099
:- initialization(run).
:- use_module(library(when)).

run :-
	when(nonvar(A), Run1 = true),
	when(ground(A), Run2 = true),
	var(Run1), var(Run2),
	A = a(B), Run1 == true,
	var(Run2),
	B = 1, Run2 == true,
	write(ok), nl.
%------------------------------------------------------------ 318 tests_test0100
:- initialization(main).

main :-
	findall([Before,Len,After], sub_atom(banana, Before, Len, After, ana), L),
	write(L), nl.
%------------------------------------------------------------ 319 tests_test0101
:- initialization(main).

test1(0) :- !, statistics(frames, Fs), statistics(choices, Cs), statistics(trails, Ts), statistics(slots, Ss), write([f,Fs,c,Cs,t,Ts,s,Ss]), nl, fail.
test1(N) :- N1 is N-1, test1(N1).

f :- true, true, true.
test2(0) :- !, statistics(frames, Fs), statistics(choices, Cs), statistics(trails, Ts), statistics(slots, Ss), write([f,Fs,c,Cs,t,Ts,s,Ss]), nl, fail.
test2(N) :- f, N1 is N-1, test2(N1).

f(_) :- true, true, true.
test3(0) :- !, statistics(frames, Fs), statistics(choices, Cs), statistics(trails, Ts), statistics(slots, Ss), write([f,Fs,c,Cs,t,Ts,s,Ss]), nl, fail.
test3(N) :- f(_), N1 is N-1, test3(N1).

f(X, X) :- true, true, true.
test4(0) :- !, statistics(frames, Fs), statistics(choices, Cs), statistics(trails, Ts), statistics(slots, Ss), write([f,Fs,c,Cs,t,Ts,s,Ss]), nl, fail.
test4(N) :- f(_, _), N1 is N-1, test4(N1).

f(_, g(_), g(g(_))) :- true, true, true.
test5(0) :- !, statistics(frames, Fs), statistics(choices, Cs), statistics(trails, Ts), statistics(slots, Ss), write([f,Fs,c,Cs,t,Ts,s,Ss]), nl, fail.
test5(N) :- f(I, g(N), g(g(_))), N1 is N-1, test5(N1).

g(X, Y) :- Y is X + 1, true, true, true.
test6(0) :- !, statistics(frames, Fs), statistics(choices, Cs), statistics(trails, Ts), statistics(slots, Ss), write([f,Fs,c,Cs,t,Ts,s,Ss]), nl, fail.
test6(N) :- g(N, _), N1 is N-1, test6(N1).

statistics.

main :-
	write(test1), write(': '), test1(100000);
	write(test2), write(': '), test2(100000);
	write(test3), write(': '), test3(100000);
	write(test4), write(': '), test4(100000);
	write(test5), write(': '), test5(100000);
	write(test6), write(': '), test6(100000);
	true.

%------------------------------------------------------------ 320 tests_test0103
:- initialization(main).

main :-
	F1=f(1,F2,3), F2=f(1,F1,3),
	ground(F1),
	cyclic_term(F1),
	term_variables(F1,[]),
	write(ok), nl.
%------------------------------------------------------------ 321 tests_test0107
:- initialization(main).

% A cut executed by a self-recursive activation must not escape the
% barrier of the control construct that called it.
%
% The last-call optimisation used to fire on the strength of the
% compile-time recursive-call flag alone. That flag marks any cell that
% ends at the clause end, which includes the argument of a trailing
% \+/1, once/1 or ignore/1 - goals those constructs do run, but with a
% continuation of their own planted after them. Reusing the frame threw
% that continuation away: \+ G lost its `!, $drop_barrier, fail' and so
% succeeded for a provable G, and ignore/1 lost its cut and left
% choice points behind.

fx(x).

igoal(fx(_)).
slv(G) :- igoal(G), !, call(G).

% A textbook meta-interpreter: conjunction, disjunction via cut plus
% if-then-else, and negation as failure. sb(yk_not(D)) runs \+ sb(D)
% from inside a clause of sb/1 itself, and the inner sb/1 activation
% commits with a cut in one of sb/1's own clauses.

sb((A , B)) :- !, sb(A), sb(B).
sb((A ; B)) :- !, (sb(A) -> true ; sb(B)).
sb(yk_not(A)) :- !, \+ sb(A).
sb(A) :- slv(A).

% The same thing stripped down to the bone.

mn(d(A,_)) :- !, mn(A).
mn(n(A)) :- !, \+ mn(A).
mn(A) :- fx(A).

% once/1 and ignore/1 in the same position must stay determinate.

nn(1).
nn(2).

on(0) :- nn(_).
on(N) :- M is N-1, once(on(M)).

ig(0) :- nn(_).
ig(N) :- M is N-1, ignore(ig(M)).

% Deep tail recursion in each shape whose last call must keep being
% optimised away, so a lost optimisation shows up as a crash here.

t1(0) :- !.
t1(N) :- M is N-1, t1(M).

t2(0) :- !.
t2(N) :- ( N < 0 -> true ; M is N-1, t2(M) ).

t3(0) :- !.
t3(N) :- ( N < 0, true ; M is N-1, t3(M) ).

t4(0) :- !.
t4(N) :- M is N-1, call(t4(M)).

t5(0) :- !.
t5(N) :- ( true -> M is N-1, t5(M) ).

% A self-recursive call/1 in NON-tail position must keep the rest of
% the clause, and a self-recursive goal under catch/3 must keep the
% handler reachable.

nt(0) :- !.
nt(N) :- N > 0, M is N-1, call(nt(M)), write(after), nl.

rc(0) :- throw(error_foo).
rc(N) :- N > 0, M is N-1, catch(rc(M), error_foo, (write(caught), nl)).

report(Label, Goal) :-
	( call(Goal) -> R = succeeded ; R = failed ),
	write(Label-R), nl.

main :-
	report(disj, sb((fx(x) ; fx(y)))),
	report(neg_of_true_disj, sb(yk_not((fx(x) ; fx(y))))),
	report(neg_toplevel, \+ sb((fx(x) ; fx(y)))),
	report(neg_of_true_atom, sb(yk_not(fx(x)))),
	report(neg_of_false, sb(yk_not(fx(y)))),
	report(minimal_neg_of_true, mn(n(d(x,y)))),
	report(minimal_neg_of_false, mn(n(d(y,y)))),
	findall(x, on(2), L1), write(once_solutions-L1), nl,
	findall(x, ig(2), L2), write(ignore_solutions-L2), nl,
	report(deep_plain, t1(1000000)),
	report(deep_if_then_else, t2(1000000)),
	report(deep_disjunction, t3(1000000)),
	report(deep_call, t4(1000000)),
	report(deep_if_then, t5(1000000)),
	report(nontail_call, nt(2)),
	report(catch_recursive, catch(rc(1), E, (write(escaped(E)), nl))).
%------------------------------------------------------------ 322 tests_test0109
:- initialization(main).

% Clauses with a var in an indexed argument must still be found once a
% predicate crosses the dynamic index threshold (500). idx1 is keyed on
% Arg1 and idx2 on Arg2, and index_cmpkey() calls a var equal to
% anything, so a var-headed argument breaks the skiplist's ordering and
% the descent can walk straight past the clause.

:- dynamic(p/2).
:- dynamic(q/2).
:- dynamic(r/2).
:- dynamic(s/2).
:- dynamic(t/2).
:- dynamic(u/2).
:- dynamic(v/3).
:- dynamic(w/3).

% var Arg1, asserted before the threshold
setup_p :- assertz(p(_, varclause)), fail.
setup_p :- between(2,600,I), assertz(p(I,ground)), fail.
setup_p.

% var Arg1, asserted after the threshold
setup_q :- between(2,600,I), assertz(q(I,ground)), fail.
setup_q :- assertz(q(_, varclause)), fail.
setup_q.

% var Arg2, asserted before the threshold
setup_r :- assertz(r(vc, _)), fail.
setup_r :- between(2,600,I), assertz(r(I,I)), fail.
setup_r.

% var Arg2, asserted after the threshold
setup_s :- between(2,600,I), assertz(s(I,I)), fail.
setup_s :- assertz(s(vc, _)), fail.
setup_s.

% two var-headed clauses; retracting one must not un-flag the predicate
setup_t :- between(1,600,I), assertz(t(I,ground)), fail.
setup_t :- assertz(t(_, v1)), fail.
setup_t :- assertz(t(_, v2)), fail.
setup_t.

% the only var-headed clause; retracting it must clear the flag and
% hand the predicate back its index, without changing any answers
setup_u :- between(1,600,I), assertz(u(I,ground)), fail.
setup_u :- assertz(u(_, vc)), fail.
setup_u.

% Arg1 and Arg2 contain variables in some clauses, but Arg3 does not.
% The floating secondary index must choose Arg3 and retain the matching
% var-Arg1 clause instead of falling back to the whole predicate chain.
setup_v :- assertz((v(_, Y, hook) :- Y = wildcard)), fail.
setup_v :- between(1,600,I), assertz(v(I, value, other)), fail.
setup_v :- assertz(v(7, value, hook)), fail.
setup_v.

% All heads and the lookup are ground. This exercises the exact whole-head
% index, which restores selectivity when many clauses share Arg1.
setup_w :- between(1,600,I), assertz(w(shared, I, value(I))), fail.
setup_w.

main :-
	setup_p, setup_q, setup_r, setup_s, setup_t, setup_u, setup_v, setup_w,
	findall(Y, p(7,Y), LP), write(LP), nl,
	findall(Y, q(7,Y), LQ), write(LQ), nl,
	findall(X, r(X,7), LR), write(LR), nl,
	findall(X, s(X,7), LS), write(LS), nl,
	retract(t(_,v1)),
	findall(Y, t(7,Y), LT), write(LT), nl,
	retract(u(_,vc)),
	findall(Y, u(7,Y), LU), write(LU), nl,
	findall(Y, v(7,Y,hook), LV), write(LV), nl,
	( w(shared, 7, value(7)) -> write(head_indexed) ; write(head_missing) ), nl.
%------------------------------------------------------------ 323 tests_test0110
% Trealla first-argument indexing: clauses whose first argument contains
% a variable can be lost once the predicate is indexed.
%
% small/2 and big/2 carry IDENTICAL clauses of interest, in the same
% order. big/2 also has 600 fillers, and that is the only difference: it
% pushes big/2 over INDEX_THRESHOLD (500, in assert_commit(), module.c)
% so big/2 gets a skiplist index while small/2 stays a linear chain. The
% linear chain is the oracle - whatever it answers is correct.
%
% Cause: index_cmpkey_() calls a var equal to anything, so the key [_]
% compares equal to both [a] and [b] while [a] and [b] differ from each
% other. That is not a total order, so no single position in the skiplist
% satisfies every query, and the descent walks past the var-bearing node.
%
% Both list and arity-2 compound first args must be present in the
% filler, and the var-bearing clauses must sit after them in the chain.
%
% The queries are chosen so that no filler clause can match, which keeps
% findall/3 order directly comparable - no sorting, ISO only.
%
% Run:  tpl nested_var_bug.pl -g "main,halt"


% ---- small/2: stays under the threshold, never indexed (oracle) ----
small([a],   ground).
small([_],   nested_var_tail).
small([a|_], nested_var_arg).
small([b],   other_ground).

% ---- big/2: 600 fillers first, then the same four clauses ----
big(f(k0,z), filler).
big(f(k1,z), filler).
big(f(k2,z), filler).
big(f(k3,z), filler).
big(f(k4,z), filler).
big(f(k5,z), filler).
big(f(k6,z), filler).
big(f(k7,z), filler).
big(f(k8,z), filler).
big(f(k9,z), filler).
big(f(k10,z), filler).
big(f(k11,z), filler).
big(f(k12,z), filler).
big(f(k13,z), filler).
big(f(k14,z), filler).
big(f(k15,z), filler).
big(f(k16,z), filler).
big(f(k17,z), filler).
big(f(k18,z), filler).
big(f(k19,z), filler).
big(f(k20,z), filler).
big(f(k21,z), filler).
big(f(k22,z), filler).
big(f(k23,z), filler).
big(f(k24,z), filler).
big(f(k25,z), filler).
big(f(k26,z), filler).
big(f(k27,z), filler).
big(f(k28,z), filler).
big(f(k29,z), filler).
big(f(k30,z), filler).
big(f(k31,z), filler).
big(f(k32,z), filler).
big(f(k33,z), filler).
big(f(k34,z), filler).
big(f(k35,z), filler).
big(f(k36,z), filler).
big(f(k37,z), filler).
big(f(k38,z), filler).
big(f(k39,z), filler).
big(f(k40,z), filler).
big(f(k41,z), filler).
big(f(k42,z), filler).
big(f(k43,z), filler).
big(f(k44,z), filler).
big(f(k45,z), filler).
big(f(k46,z), filler).
big(f(k47,z), filler).
big(f(k48,z), filler).
big(f(k49,z), filler).
big(f(k50,z), filler).
big(f(k51,z), filler).
big(f(k52,z), filler).
big(f(k53,z), filler).
big(f(k54,z), filler).
big(f(k55,z), filler).
big(f(k56,z), filler).
big(f(k57,z), filler).
big(f(k58,z), filler).
big(f(k59,z), filler).
big(f(k60,z), filler).
big(f(k61,z), filler).
big(f(k62,z), filler).
big(f(k63,z), filler).
big(f(k64,z), filler).
big(f(k65,z), filler).
big(f(k66,z), filler).
big(f(k67,z), filler).
big(f(k68,z), filler).
big(f(k69,z), filler).
big(f(k70,z), filler).
big(f(k71,z), filler).
big(f(k72,z), filler).
big(f(k73,z), filler).
big(f(k74,z), filler).
big(f(k75,z), filler).
big(f(k76,z), filler).
big(f(k77,z), filler).
big(f(k78,z), filler).
big(f(k79,z), filler).
big(f(k80,z), filler).
big(f(k81,z), filler).
big(f(k82,z), filler).
big(f(k83,z), filler).
big(f(k84,z), filler).
big(f(k85,z), filler).
big(f(k86,z), filler).
big(f(k87,z), filler).
big(f(k88,z), filler).
big(f(k89,z), filler).
big(f(k90,z), filler).
big(f(k91,z), filler).
big(f(k92,z), filler).
big(f(k93,z), filler).
big(f(k94,z), filler).
big(f(k95,z), filler).
big(f(k96,z), filler).
big(f(k97,z), filler).
big(f(k98,z), filler).
big(f(k99,z), filler).
big(f(k100,z), filler).
big(f(k101,z), filler).
big(f(k102,z), filler).
big(f(k103,z), filler).
big(f(k104,z), filler).
big(f(k105,z), filler).
big(f(k106,z), filler).
big(f(k107,z), filler).
big(f(k108,z), filler).
big(f(k109,z), filler).
big(f(k110,z), filler).
big(f(k111,z), filler).
big(f(k112,z), filler).
big(f(k113,z), filler).
big(f(k114,z), filler).
big(f(k115,z), filler).
big(f(k116,z), filler).
big(f(k117,z), filler).
big(f(k118,z), filler).
big(f(k119,z), filler).
big(f(k120,z), filler).
big(f(k121,z), filler).
big(f(k122,z), filler).
big(f(k123,z), filler).
big(f(k124,z), filler).
big(f(k125,z), filler).
big(f(k126,z), filler).
big(f(k127,z), filler).
big(f(k128,z), filler).
big(f(k129,z), filler).
big(f(k130,z), filler).
big(f(k131,z), filler).
big(f(k132,z), filler).
big(f(k133,z), filler).
big(f(k134,z), filler).
big(f(k135,z), filler).
big(f(k136,z), filler).
big(f(k137,z), filler).
big(f(k138,z), filler).
big(f(k139,z), filler).
big(f(k140,z), filler).
big(f(k141,z), filler).
big(f(k142,z), filler).
big(f(k143,z), filler).
big(f(k144,z), filler).
big(f(k145,z), filler).
big(f(k146,z), filler).
big(f(k147,z), filler).
big(f(k148,z), filler).
big(f(k149,z), filler).
big(f(k150,z), filler).
big(f(k151,z), filler).
big(f(k152,z), filler).
big(f(k153,z), filler).
big(f(k154,z), filler).
big(f(k155,z), filler).
big(f(k156,z), filler).
big(f(k157,z), filler).
big(f(k158,z), filler).
big(f(k159,z), filler).
big(f(k160,z), filler).
big(f(k161,z), filler).
big(f(k162,z), filler).
big(f(k163,z), filler).
big(f(k164,z), filler).
big(f(k165,z), filler).
big(f(k166,z), filler).
big(f(k167,z), filler).
big(f(k168,z), filler).
big(f(k169,z), filler).
big(f(k170,z), filler).
big(f(k171,z), filler).
big(f(k172,z), filler).
big(f(k173,z), filler).
big(f(k174,z), filler).
big(f(k175,z), filler).
big(f(k176,z), filler).
big(f(k177,z), filler).
big(f(k178,z), filler).
big(f(k179,z), filler).
big(f(k180,z), filler).
big(f(k181,z), filler).
big(f(k182,z), filler).
big(f(k183,z), filler).
big(f(k184,z), filler).
big(f(k185,z), filler).
big(f(k186,z), filler).
big(f(k187,z), filler).
big(f(k188,z), filler).
big(f(k189,z), filler).
big(f(k190,z), filler).
big(f(k191,z), filler).
big(f(k192,z), filler).
big(f(k193,z), filler).
big(f(k194,z), filler).
big(f(k195,z), filler).
big(f(k196,z), filler).
big(f(k197,z), filler).
big(f(k198,z), filler).
big(f(k199,z), filler).
big(f(k200,z), filler).
big(f(k201,z), filler).
big(f(k202,z), filler).
big(f(k203,z), filler).
big(f(k204,z), filler).
big(f(k205,z), filler).
big(f(k206,z), filler).
big(f(k207,z), filler).
big(f(k208,z), filler).
big(f(k209,z), filler).
big(f(k210,z), filler).
big(f(k211,z), filler).
big(f(k212,z), filler).
big(f(k213,z), filler).
big(f(k214,z), filler).
big(f(k215,z), filler).
big(f(k216,z), filler).
big(f(k217,z), filler).
big(f(k218,z), filler).
big(f(k219,z), filler).
big(f(k220,z), filler).
big(f(k221,z), filler).
big(f(k222,z), filler).
big(f(k223,z), filler).
big(f(k224,z), filler).
big(f(k225,z), filler).
big(f(k226,z), filler).
big(f(k227,z), filler).
big(f(k228,z), filler).
big(f(k229,z), filler).
big(f(k230,z), filler).
big(f(k231,z), filler).
big(f(k232,z), filler).
big(f(k233,z), filler).
big(f(k234,z), filler).
big(f(k235,z), filler).
big(f(k236,z), filler).
big(f(k237,z), filler).
big(f(k238,z), filler).
big(f(k239,z), filler).
big(f(k240,z), filler).
big(f(k241,z), filler).
big(f(k242,z), filler).
big(f(k243,z), filler).
big(f(k244,z), filler).
big(f(k245,z), filler).
big(f(k246,z), filler).
big(f(k247,z), filler).
big(f(k248,z), filler).
big(f(k249,z), filler).
big(f(k250,z), filler).
big(f(k251,z), filler).
big(f(k252,z), filler).
big(f(k253,z), filler).
big(f(k254,z), filler).
big(f(k255,z), filler).
big(f(k256,z), filler).
big(f(k257,z), filler).
big(f(k258,z), filler).
big(f(k259,z), filler).
big(f(k260,z), filler).
big(f(k261,z), filler).
big(f(k262,z), filler).
big(f(k263,z), filler).
big(f(k264,z), filler).
big(f(k265,z), filler).
big(f(k266,z), filler).
big(f(k267,z), filler).
big(f(k268,z), filler).
big(f(k269,z), filler).
big(f(k270,z), filler).
big(f(k271,z), filler).
big(f(k272,z), filler).
big(f(k273,z), filler).
big(f(k274,z), filler).
big(f(k275,z), filler).
big(f(k276,z), filler).
big(f(k277,z), filler).
big(f(k278,z), filler).
big(f(k279,z), filler).
big(f(k280,z), filler).
big(f(k281,z), filler).
big(f(k282,z), filler).
big(f(k283,z), filler).
big(f(k284,z), filler).
big(f(k285,z), filler).
big(f(k286,z), filler).
big(f(k287,z), filler).
big(f(k288,z), filler).
big(f(k289,z), filler).
big(f(k290,z), filler).
big(f(k291,z), filler).
big(f(k292,z), filler).
big(f(k293,z), filler).
big(f(k294,z), filler).
big(f(k295,z), filler).
big(f(k296,z), filler).
big(f(k297,z), filler).
big(f(k298,z), filler).
big(f(k299,z), filler).
big([q0], filler).
big([q1], filler).
big([q2], filler).
big([q3], filler).
big([q4], filler).
big([q5], filler).
big([q6], filler).
big([q7], filler).
big([q8], filler).
big([q9], filler).
big([q10], filler).
big([q11], filler).
big([q12], filler).
big([q13], filler).
big([q14], filler).
big([q15], filler).
big([q16], filler).
big([q17], filler).
big([q18], filler).
big([q19], filler).
big([q20], filler).
big([q21], filler).
big([q22], filler).
big([q23], filler).
big([q24], filler).
big([q25], filler).
big([q26], filler).
big([q27], filler).
big([q28], filler).
big([q29], filler).
big([q30], filler).
big([q31], filler).
big([q32], filler).
big([q33], filler).
big([q34], filler).
big([q35], filler).
big([q36], filler).
big([q37], filler).
big([q38], filler).
big([q39], filler).
big([q40], filler).
big([q41], filler).
big([q42], filler).
big([q43], filler).
big([q44], filler).
big([q45], filler).
big([q46], filler).
big([q47], filler).
big([q48], filler).
big([q49], filler).
big([q50], filler).
big([q51], filler).
big([q52], filler).
big([q53], filler).
big([q54], filler).
big([q55], filler).
big([q56], filler).
big([q57], filler).
big([q58], filler).
big([q59], filler).
big([q60], filler).
big([q61], filler).
big([q62], filler).
big([q63], filler).
big([q64], filler).
big([q65], filler).
big([q66], filler).
big([q67], filler).
big([q68], filler).
big([q69], filler).
big([q70], filler).
big([q71], filler).
big([q72], filler).
big([q73], filler).
big([q74], filler).
big([q75], filler).
big([q76], filler).
big([q77], filler).
big([q78], filler).
big([q79], filler).
big([q80], filler).
big([q81], filler).
big([q82], filler).
big([q83], filler).
big([q84], filler).
big([q85], filler).
big([q86], filler).
big([q87], filler).
big([q88], filler).
big([q89], filler).
big([q90], filler).
big([q91], filler).
big([q92], filler).
big([q93], filler).
big([q94], filler).
big([q95], filler).
big([q96], filler).
big([q97], filler).
big([q98], filler).
big([q99], filler).
big([q100], filler).
big([q101], filler).
big([q102], filler).
big([q103], filler).
big([q104], filler).
big([q105], filler).
big([q106], filler).
big([q107], filler).
big([q108], filler).
big([q109], filler).
big([q110], filler).
big([q111], filler).
big([q112], filler).
big([q113], filler).
big([q114], filler).
big([q115], filler).
big([q116], filler).
big([q117], filler).
big([q118], filler).
big([q119], filler).
big([q120], filler).
big([q121], filler).
big([q122], filler).
big([q123], filler).
big([q124], filler).
big([q125], filler).
big([q126], filler).
big([q127], filler).
big([q128], filler).
big([q129], filler).
big([q130], filler).
big([q131], filler).
big([q132], filler).
big([q133], filler).
big([q134], filler).
big([q135], filler).
big([q136], filler).
big([q137], filler).
big([q138], filler).
big([q139], filler).
big([q140], filler).
big([q141], filler).
big([q142], filler).
big([q143], filler).
big([q144], filler).
big([q145], filler).
big([q146], filler).
big([q147], filler).
big([q148], filler).
big([q149], filler).
big([q150], filler).
big([q151], filler).
big([q152], filler).
big([q153], filler).
big([q154], filler).
big([q155], filler).
big([q156], filler).
big([q157], filler).
big([q158], filler).
big([q159], filler).
big([q160], filler).
big([q161], filler).
big([q162], filler).
big([q163], filler).
big([q164], filler).
big([q165], filler).
big([q166], filler).
big([q167], filler).
big([q168], filler).
big([q169], filler).
big([q170], filler).
big([q171], filler).
big([q172], filler).
big([q173], filler).
big([q174], filler).
big([q175], filler).
big([q176], filler).
big([q177], filler).
big([q178], filler).
big([q179], filler).
big([q180], filler).
big([q181], filler).
big([q182], filler).
big([q183], filler).
big([q184], filler).
big([q185], filler).
big([q186], filler).
big([q187], filler).
big([q188], filler).
big([q189], filler).
big([q190], filler).
big([q191], filler).
big([q192], filler).
big([q193], filler).
big([q194], filler).
big([q195], filler).
big([q196], filler).
big([q197], filler).
big([q198], filler).
big([q199], filler).
big([q200], filler).
big([q201], filler).
big([q202], filler).
big([q203], filler).
big([q204], filler).
big([q205], filler).
big([q206], filler).
big([q207], filler).
big([q208], filler).
big([q209], filler).
big([q210], filler).
big([q211], filler).
big([q212], filler).
big([q213], filler).
big([q214], filler).
big([q215], filler).
big([q216], filler).
big([q217], filler).
big([q218], filler).
big([q219], filler).
big([q220], filler).
big([q221], filler).
big([q222], filler).
big([q223], filler).
big([q224], filler).
big([q225], filler).
big([q226], filler).
big([q227], filler).
big([q228], filler).
big([q229], filler).
big([q230], filler).
big([q231], filler).
big([q232], filler).
big([q233], filler).
big([q234], filler).
big([q235], filler).
big([q236], filler).
big([q237], filler).
big([q238], filler).
big([q239], filler).
big([q240], filler).
big([q241], filler).
big([q242], filler).
big([q243], filler).
big([q244], filler).
big([q245], filler).
big([q246], filler).
big([q247], filler).
big([q248], filler).
big([q249], filler).
big([q250], filler).
big([q251], filler).
big([q252], filler).
big([q253], filler).
big([q254], filler).
big([q255], filler).
big([q256], filler).
big([q257], filler).
big([q258], filler).
big([q259], filler).
big([q260], filler).
big([q261], filler).
big([q262], filler).
big([q263], filler).
big([q264], filler).
big([q265], filler).
big([q266], filler).
big([q267], filler).
big([q268], filler).
big([q269], filler).
big([q270], filler).
big([q271], filler).
big([q272], filler).
big([q273], filler).
big([q274], filler).
big([q275], filler).
big([q276], filler).
big([q277], filler).
big([q278], filler).
big([q279], filler).
big([q280], filler).
big([q281], filler).
big([q282], filler).
big([q283], filler).
big([q284], filler).
big([q285], filler).
big([q286], filler).
big([q287], filler).
big([q288], filler).
big([q289], filler).
big([q290], filler).
big([q291], filler).
big([q292], filler).
big([q293], filler).
big([q294], filler).
big([q295], filler).
big([q296], filler).
big([q297], filler).
big([q298], filler).
big([q299], filler).

big([a],   ground).
big([_],   nested_var_tail).
big([a|_], nested_var_arg).
big([b],   other_ground).


check(Query, Desc) :-
    findall(X, small(Query,X), Want),
    findall(X, big(Query,X), Got),
    (   Want == Got
    ->  write('  ok    '), write(Desc), nl,
        write('          both gave '), write(Got), nl
    ;   write('  FAIL  '), write(Desc), nl,
        write('          unindexed (correct) '), write(Want), nl,
        write('          indexed             '), write(Got), nl
    ).

main :-
    write('nested-var indexing check'), nl,
    check([a],   'query [a]    - expect [ground,nested_var_tail,nested_var_arg]'),
    check([b],   'query [b]    - expect [nested_var_tail,other_ground]'),
    check([a,c], 'query [a,c]  - expect [nested_var_arg]'),
    check([z],   'query [z]    - expect [nested_var_tail]').

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this program defines main/0 and never calls it (Trealla's runner passes -g main); the driver calls it and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
%------------------------------------------------------------ 324 tests_test0111
:- initialization(main).

% A unique clause head does not make a goal deterministic when another
% clause carries a variable in an indexed argument.
%
% p/2 below is loaded with one clause: a RULE whose head has a variable
% first argument. check_unique() runs at load time, finds nothing after
% it, and marks it is_unique - correctly, at that moment. Clauses are
% then asserted past the indexing threshold, so find_key() sets
% is_var_in_first_arg and diverts the lookup to the linear walk.
%
% The walk reaches the rule first, its head unifies (a var argument
% unifies with anything), and commit_frame() then computed
%
%     is_det = !q->has_vars && cl->is_unique
%
% as true: is_unique was stale, and q->has_vars describes the LAST
% unification rather than the goal - unify() clears it on entry and only
% sets it for variables at depth > 1, so p(target,X) against p(K,V)
% leaves it false. has_next_key() correctly reported more candidates,
% but is_det sits ahead of it in the || chain.
%
% The alternatives choicepoint was therefore dropped, the rule's body
% failed, and the walk never resumed to reach the matching fact. This is
% the shape of Logtalk's logtalk_library_path/2 - a packs rule with a var
% first argument among 500 ground facts.

:- dynamic(p/2).

p(K, V) :- helper(K, V).

helper(_, _) :- fail.

main :-
	( between(1,505,I), assertz(p(k(I), v(I))), fail ; true ),
	assertz(p(target, found)),
	findall(X, p(target,X), L),
	write(L), nl,
	halt.
%------------------------------------------------------------ 325 tests_test0113
% atomic_list_concat/3 in split mode: with the list unbound (or only
% partly bound) and the atom given, the atom is split on the separator.

:- initialization(main).

show(G) :-
	(  catch(G, E, (writeq(caught(E)), nl, fail))
	-> true
	;  writeln(fail)
	).

split(Sep, Atom) :-
	show(( atomic_list_concat(L, Sep, Atom), writeq(L), nl )).

main :-
	split('-', 'a-b-c'),
	split(-, 'a-b-c'),
	split('::', 'a::b::c'),
	split('-', 'abc'),
	split('-', ''),
	split('-', 'a--b'),
	split('-', '-a-'),
	split('é', 'aébéc'),
	split('-', 'a-bbbbbbbbbbbbbbbbbbbbbbbbbbbb-c'),

	% pieces are atoms, never numbers or strings
	show(( atomic_list_concat(L1, '-', '1-2'), maplist(atom, L1), writeln(all_atoms) )),

	% a partial list, or one with unbound elements, splits and unifies
	show(( atomic_list_concat([a|T], '-', 'a-b-c'), writeq(T), nl )),
	show(( atomic_list_concat([a,X], '-', 'a-b'), writeq(X), nl )),
	show(( atomic_list_concat([x,_], '-', 'a-b') )),
	show(( atomic_list_concat([_,_], '-', 'a-b-c') )),

	% split is semi-deterministic
	findall(L2, atomic_list_concat(L2, '-', 'a-b'), L2s),
	writeq(L2s), nl,

	% and round-trips through the concat mode
	show(( atomic_list_concat(L3, '-', 'a-b-c'), atomic_list_concat(L3, '-', A3), writeq(A3), nl )),

	% concat mode is unchanged
	show(( atomic_list_concat([a,b,c], '-', A4), writeq(A4), nl )),
	show(( atomic_list_concat([], '-', A5), writeq(A5), nl )),

	% atomic_list_concat/2 has no separator to split on, so a list that
	% isn't fully there is an error there, not a request to split
	show(( atomic_list_concat([a,b,c], A6), writeq(A6), nl )),
	show(( atomic_list_concat([_,bar], foobar) )),
	show(( atomic_list_concat([foo,bar|_], foobar) )),
	show(( atomic_list_concat(_, foobar) )),
	show(( atomic_list_concat([foo,bar], a(1)) )),

	% errors
	show(( atomic_list_concat([foo,bar], '_', a(1)) )),
	show(( atomic_list_concat([foo,bar], a(1), _) )),
	show(( atomic_list_concat(_, '', 'abc') )),
	show(( atomic_list_concat(_, '-', _) )),
	show(( atomic_list_concat(_, _, 'a-b') )),
	show(( atomic_list_concat([a|_], '-', _) )),
	show(( atomic_list_concat(foo, '-', _) )),
	show(( atomic_list_concat([a|b], '-', _) )).
%------------------------------------------------------------ 326 tests_test0114
% split_string/4 followed SWI only loosely: sep and pad were single
% characters rather than sets, pad was stripped from the front of a
% field but not the back, empty fields were dropped, and a nil argument
% reached C_STR() as the atom name "[]" - so the common SWI idiom
% split_string(S, "", " \n", [Trimmed]) split S on '[' and ']'.
%
% Expected output is SWI's, checked against it on these cases.

:- initialization(main).

canon(F, Cs) :- ( is_list(F) -> Cs = F ; atom_chars(F, Cs) ).

go(S, Sep, Pad) :-
	split_string(S, Sep, Pad, R),
	maplist(canon, R, Cs),
	format("~q~n", [Cs]).

main :-
	go("  x  ", "", " "),			% pad stripped at both ends
	go("a[b]c", "", ""),			% "" is not the set {[,]}
	go("", "", ""),				% always at least one field
	go("  ", "", " "),
	go("/home//jan///nice/path", "/", ""),	% empty fields survive
	go("a,b;c", ",;", ""),			% sep is a set
	go("a, b ; c ", ",;", " "),
	go("abc", "", "cba"),			% all padding
	go(".a.b.c.", ".", "."),		% sep and pad overlap
	go(",,,", ",", ""),
	go("xxaxx", "a", "x"),
	go("héllo·wörld", "·", ""),		% multibyte sep
	go("  héllo  ", "", " ").
%------------------------------------------------------------ 327 tests_test0115
% Regression test for a heap-use-after-free fixed in
% "An if-then-else use-after-free fix": do_if_then_else()/
% do_soft_if_then_else() (src/bif_control.c) built a barrier-protected
% continuation without marking the calling frame no_recov, so
% resume_frame()'s tail-call heap-reclaim fast path (query.c) could
% free memory the continuation still needed. Needed real thread
% concurrency to manifest - a single OS thread, however heavily
% interleaved via cooperative tasks, never reproduced it - so this
% exercises thread_send_message/thread_get_message with the receiver
% selecting on the result via if-then-else, the same shape that
% crashed 100% of the time before the fix (heap-use-after-free at
% query.c:1333 in resume_frame, under -fsanitize=address).

% Needs a threaded build - a no-threads build (e.g. WASM) has nothing
% for this shape to reproduce with, so it's skipped there rather than
% failing on a missing thread_create/1 et al.

:- initialization(main).

worker(Target, N) :-
	forall(between(1, N, I), thread_send_message(Target, msg(I))).

collector(0, _) :- !.
collector(N, Me) :-
	( thread_get_message(Me, msg(_I), [timeout(0.001)]) ->
		N1 is N - 1,
		collector(N1, Me)
	;	collector(N, Me)
	).

main :-
	( current_prolog_flag(threads, true) -> run ; true ),
	writeln(ok).

run :-
	thread_self(Me),
	NThreads = 2,
	PerThread = 200,
	findall(Id, (
		between(1, NThreads, _),
		thread_create(worker(Me, PerThread), Id, [])
	), Ids),
	Total is NThreads * PerThread,
	collector(Total, Me),
	forall(member(Id, Ids), thread_join(Id, _)).
%------------------------------------------------------------ 328 tests_test0116
:- initialization(main).

% A tail call reuses its caller's frame and winds the heap back to that
% frame's base. That is only sound while nothing outside the frame
% points into what it built. A body goal binding an *older* frame's
% variable to a compound of this clause does exactly that: the binding
% is an indirect carrying this frame's context, so reusing the frame
% makes it read the next iteration's slots.
%
% p/1 below binds V - a variable of the list main built - to g(S), where
% S is p/1's own. Answering [h(g(bar),foo),...] means the first
% element's binding followed the frame into the second iteration.
%
% set_var() did notice, but only in q->no_recov, which unify() clears on
% entry - and head unification of the very call that reuses the frame is
% one such unify(). The frame carries the pin instead.

p([]).
p([I|T]) :- I = h(V,S), V = g(S), p(T).

% The same through the THEN branch of an if-then-else, which is also a
% tail position.

q([]).
q([I|T]) :- ( I = h(V,S) -> V = g(S) ; true ), q(T).

% ... and a shape where the value binds nothing of the caller's, which
% must still be tail recursive - the pin is not meant to be catching
% ordinary accumulator loops.

count(0) :- !,
	statistics(frames, F),
	( F < 100 -> write(count_constant) ; write(count_grew) ), nl.
count(N) :- M is N-1, count(M).

main :-
	L1 = [h(_,foo), h(_,bar)], p(L1), write(L1), nl,
	L2 = [h(_,foo), h(_,bar)], q(L2), write(L2), nl,
	count(200000).
%------------------------------------------------------------ 329 tests_test0117
:- initialization(main).

% float_integer_part/1 and float_fractional_part/1 truncated through a
% cast to int64, which is undefined behaviour once the value is outside
% that range - and 1.0e30 is. Every float at or above 2^53 is already a
% whole number, so the integer part is the value itself and the
% fractional part is 0.0.

t(X) :-
	I is float_integer_part(X),
	F is float_fractional_part(X),
	write(X-I-F), nl.

main :-
	t(1.0e30),
	t(-1.0e30),
	t(1.0e300),
	t(4.5),
	t(-4.5),
	t(0.0).
