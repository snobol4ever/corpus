/* PATCHED:determinism-cuts */
/* plunit.pl — scrip shim. No -> operator; uses nb_setval state machine only. */

module(_, _). use_module(_). use_module(_, _). ensure_loaded(_).

:- dynamic pj_suite/1.
:- dynamic pj_test/4.
:- dynamic pj_current_suite/1.

begin_tests(Suite) :-
    ( pj_suite(Suite) -> true ; assertz(pj_suite(Suite)) ),
    retractall(pj_current_suite(_)), assertz(pj_current_suite(Suite)).
begin_tests(Suite, _) :-
    ( pj_suite(Suite) -> true ; assertz(pj_suite(Suite)) ),
    retractall(pj_current_suite(_)), assertz(pj_current_suite(Suite)).
end_tests(_) :- retractall(pj_current_suite(_)).

pj_init :- nb_setval(pj_p,0), nb_setval(pj_f,0), nb_setval(pj_s,0).
pj_inc_pass :- nb_getval(pj_p,N), N1 is N+1, nb_setval(pj_p,N1),
               nb_getval(pj_sf,SF), nb_setval(pj_sf,SF).
pj_inc_fail :- nb_getval(pj_f,N), N1 is N+1, nb_setval(pj_f,N1),
               nb_getval(pj_sf,SF), SF1 is SF+1, nb_setval(pj_sf,SF1).
pj_inc_skip :- nb_getval(pj_s,N), N1 is N+1, nb_setval(pj_s,N1).
pj_summary  :- nb_getval(pj_p,P), nb_getval(pj_f,F), nb_getval(pj_s,S),
               format('~n% ~w passed, ~w failed, ~w skipped~n',[P,F,S]).

run_tests    :- pj_init, findall(S,pj_suite(S),Ss), pj_run_list(Ss), pj_summary.
run_tests(L) :- is_list(L), !, pj_init, pj_run_list(L), pj_summary.
run_tests(S) :- pj_init, pj_run_suite(S), pj_summary.

pj_run_list([]).
pj_run_list([H|T]) :- pj_run_suite(H), !, pj_run_list(T).

pj_run_suite(Suite) :-
    format('~n% PL-Unit: ~w~n',[Suite]),
    nb_setval(pj_sf,0),
    findall(t(N,O,G), pj_test(Suite,N,O,G), Tests),
    pj_run_tests(Suite, Tests),
    nb_getval(pj_sf,SF),
    pj_suite_verdict(Suite, SF), !.

pj_suite_verdict(Suite, SF) :- !
    ( SF =:= 0 -> format('PASS ~w~n',[Suite]) ; format('FAIL ~w~n',[Suite]) ).

pj_run_tests(_, []).
pj_run_tests(Suite, [t(N,O,G)|Rest]) :-
    pj_run_one(Suite,N,O,G), !, pj_run_tests(Suite,Rest).

pj_has_sto([sto(_)|_]).    pj_has_sto([_|T]) :- pj_has_sto(T).
pj_wants_fail([fail|_]).   pj_wants_fail([false|_]).   pj_wants_fail([_|T]) :- pj_wants_fail(T).
pj_wants_fail(fail).       pj_wants_fail(false).
pj_has_error([error(E)|_],E). pj_has_error([_|T],E) :- pj_has_error(T,E). pj_has_error(error(E),E).
pj_has_throws([throws(T)|_],T). pj_has_throws([_|T2],T) :- pj_has_throws(T2,T). pj_has_throws(throws(T),T).
pj_has_true([true(E)|_],E). pj_has_true([_|T],E) :- pj_has_true(T,E).
pj_has_all([all(E)|_],E).   pj_has_all([_|T],E) :- pj_has_all(T,E).
pj_skip_cond(Opts) :- member(condition(C),Opts), \+ C.

pj_run_one(Suite,Name,Opts,_) :- pj_has_sto(Opts), !,
    pj_inc_skip, format('  skip: ~w:~w  [sto]~n',[Suite,Name]).
pj_run_one(Suite,Name,Opts,_) :- pj_skip_cond(Opts), !,
    pj_inc_skip, format('  skip: ~w:~w  [cond]~n',[Suite,Name]).
pj_run_one(Suite,Name,Opts,Goal) :- pj_has_error(Opts,E), !,
    pj_do_error(Suite,Name,Goal,E).
pj_run_one(Suite,Name,Opts,Goal) :- pj_has_throws(Opts,T), !,
    pj_do_throw(Suite,Name,Goal,T).
pj_run_one(Suite,Name,Opts,Goal) :- pj_wants_fail(Opts), !,
    pj_do_fail(Suite,Name,Goal).
pj_run_one(Suite,Name,Opts,Goal) :- pj_has_true(Opts,Expr), !,
    pj_do_true(Suite,Name,Goal,Expr).
pj_run_one(Suite,Name,Opts,Goal) :- pj_has_all(Opts,AE), !,
    pj_do_all(Suite,Name,Goal,AE).
pj_run_one(Suite,Name,_,Goal) :-
    pj_do_succeed(Suite,Name,Goal).

pj_do_succeed(Suite,Name,Goal) :-
    catch(Goal, _, nb_setval(pj__ok, 0)),
    !, pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name]).
pj_do_succeed(Suite,Name,_) :-
    pj_inc_fail, format('  FAIL: ~w:~w  (goal failed)~n',[Suite,Name]).

pj_do_fail(Suite,Name,Goal) :-
    catch(Goal, _, true), !,
    pj_inc_fail, format('  FAIL: ~w:~w  (expected fail, succeeded)~n',[Suite,Name]).
pj_do_fail(Suite,Name,_) :-
    pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name]).

pj_do_error(Suite,Name,Goal,Exp) :-
    catch(Goal, error(Act,_), pj_match_err(Suite,Name,Exp,Act)), !.
pj_do_error(Suite,Name,_,_) :-
    pj_inc_fail, format('  FAIL: ~w:~w  (no exception)~n',[Suite,Name]).

pj_match_err(Suite,Name,Exp,Act) :-
    copy_term(Exp,ExpC),
    ( ExpC = Act -> pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name])
    ; functor(ExpC,F,_), functor(Act,F,_) -> pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name])
    ; pj_inc_fail, format('  FAIL: ~w:~w  (err mismatch ~w vs ~w)~n',[Suite,Name,Exp,Act])
    ).

pj_do_throw(Suite,Name,Goal,Exp) :-
    catch(Goal, Act, (Act=Exp -> pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name])
                                ; pj_inc_fail, format('  FAIL: ~w:~w  (throw mismatch)~n',[Suite,Name]))), !.
pj_do_throw(Suite,Name,_,_) :-
    pj_inc_fail, format('  FAIL: ~w:~w  (no throw)~n',[Suite,Name]).

pj_do_true(Suite,Name,Goal,Expr) :-
    catch(Goal,_,fail), !, catch(Expr,_,fail), !,
    pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name]).
pj_do_true(Suite,Name,_,_) :-
    pj_inc_fail, format('  FAIL: ~w:~w  (true check failed)~n',[Suite,Name]).

pj_do_all(Suite,Name,Goal,(Var==Expected)) :-
    findall(Var,Goal,Actual),
    ( Actual == Expected -> pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name])
    ;                       pj_inc_fail, format('  FAIL: ~w:~w  (all mismatch)~n',[Suite,Name])
    ).

/* stdlib */
append([],L,L). append([H|T],L,[H|R]) :- append(T,L,R).
member(X,[X|_]). member(X,[_|T]) :- member(X,T).
is_list([]). is_list([_|T]) :- is_list(T).
forall(C,A) :- \+ (C, \+ A).
last([X],X). last([_|T],X) :- last(T,X).
msort([],[]). msort([H|T],S) :- msort(T,ST), pj_insert(H,ST,S).
pj_insert(X,[],[X]). pj_insert(X,[H|T],[X,H|T]) :- X @=< H, !. pj_insert(X,[H|T],[H|R]) :- pj_insert(X,T,R).
succ_or_zero(0,0) :- !. succ_or_zero(X,Y) :- Y is X-1.

set_prolog_flag(_,_).
current_prolog_flag(bounded,true).
current_prolog_flag(max_integer,9007199254740992).
current_prolog_flag(min_integer,-9007199254740992).
current_prolog_flag(integer_rounding_function,toward_zero).
current_prolog_flag(max_arity,unbounded).
current_prolog_flag(_,_) :- fail.
set_test_options(_). acyclic_term(_). cyclic_term(_) :- fail.
ground(X) :- \+ \+ (numbervars(X,0,_),true).

run_suite(S) :- pj_run_suite(S).
