/* plunit.pl — lightweight plunit shim for scrip --ir-run
 * Implements: begin_tests/1,2, end_tests/1, run_tests/0,1,
 *             test/1,2 runner, pj_* counters.
 * Usage: scrip --ir-run plunit.pl test_foo.pl
 * The test file's top-level predicate (e.g. test_arith/0) calls run_tests/1.
 * A :- initialization(test_arith). directive in the test file drives entry.
 */

/* ---- module/use_module: silently ignored ---- */
module(_, _).
use_module(_).
use_module(_, _).
ensure_loaded(_).

/* ---- suite tracking ---- */
:- dynamic pj_suite/1.
:- dynamic pj_test/4.   /* pj_test(Suite, Name, Opts, Goal) */
:- dynamic pj_current_suite/1.

begin_tests(Suite) :-
    ( pj_suite(Suite) -> true ; assertz(pj_suite(Suite)) ),
    retractall(pj_current_suite(_)),
    assertz(pj_current_suite(Suite)).
begin_tests(Suite, _Opts) :-
    ( pj_suite(Suite) -> true ; assertz(pj_suite(Suite)) ),
    retractall(pj_current_suite(_)),
    assertz(pj_current_suite(Suite)).
end_tests(_) :-
    retractall(pj_current_suite(_)).

/* ---- counters ---- */
pj_init :-
    nb_setval(pj_p, 0), nb_setval(pj_f, 0), nb_setval(pj_s, 0).
pj_inc_pass :- nb_getval(pj_p, N), N1 is N+1, nb_setval(pj_p, N1).
pj_inc_fail :- nb_getval(pj_f, N), N1 is N+1, nb_setval(pj_f, N1).
pj_inc_skip :- nb_getval(pj_s, N), N1 is N+1, nb_setval(pj_s, N1).
pj_summary :-
    nb_getval(pj_p, P), nb_getval(pj_f, F), nb_getval(pj_s, S),
    format('~n% ~w passed, ~w failed, ~w skipped~n', [P, F, S]).

/* ---- run_tests ---- */
run_tests :- pj_init, run_all_suites, pj_summary.
run_tests(Suite) :-
    is_list(Suite), !,
    pj_init, run_suites_list(Suite), pj_summary.
run_tests(Suite) :- pj_init, run_suite(Suite), pj_summary.

run_suites_list([]).
run_suites_list([H|T]) :- run_suite(H), run_suites_list(T).

run_all_suites :- pj_suite(S), run_suite(S), fail.
run_all_suites.

run_suite(Suite) :-
    format('~n% PL-Unit: ~w~n', [Suite]),
    assertz(pj_current_suite(Suite)),
    run_suite_tests(Suite),
    retractall(pj_current_suite(_)).

run_suite_tests(Suite) :-
    /* test/2: test(Name, Opts) :- Body — call each clause */
    pj_test(Suite, Name, Opts, Goal),
    run_one(Suite, Name, Opts, Goal),
    fail.
run_suite_tests(_).

/* ---- option inspection ---- */
pj_has_sto([H|_])  :- H = sto(_), !.
pj_has_sto([_|T])  :- pj_has_sto(T).

pj_skip_condition(Opts) :- member(condition(C), Opts), \+ C.

pj_has_error([error(E)|_], E) :- !.
pj_has_error([_|T], E) :- pj_has_error(T, E).
pj_has_error(error(E), E).

pj_has_throws([throws(T)|_], T) :- !.
pj_has_throws([_|T2], T) :- pj_has_throws(T2, T).
pj_has_throws(throws(T), T).

pj_wants_fail([fail|_])  :- !.
pj_wants_fail([false|_]) :- !.
pj_wants_fail([_|T])     :- pj_wants_fail(T).
pj_wants_fail(fail).
pj_wants_fail(false).

pj_has_true([true(E)|_], E) :- !.
pj_has_true([_|T], E) :- pj_has_true(T, E).

pj_has_all([all(E)|_], E) :- !.
pj_has_all([_|T], E) :- pj_has_all(T, E).

/* ---- run_one dispatch ---- */
run_one(Suite, Name, Opts, Goal) :-
    ( pj_has_sto(Opts) ->
        pj_inc_skip, format('  skip: ~w:~w  [sto]~n', [Suite, Name])
    ; pj_skip_condition(Opts) ->
        pj_inc_skip, format('  skip: ~w:~w  [condition]~n', [Suite, Name])
    ; pj_has_error(Opts, ExpErr) ->
        run_error(Suite, Name, Goal, ExpErr)
    ; pj_has_throws(Opts, ExpThrow) ->
        run_throw(Suite, Name, Goal, ExpThrow)
    ; pj_wants_fail(Opts) ->
        run_fail(Suite, Name, Goal)
    ; pj_has_true(Opts, Expr) ->
        run_true(Suite, Name, Goal, Expr)
    ; pj_has_all(Opts, AllExpr) ->
        run_all(Suite, Name, Goal, AllExpr)
    ;
        run_succeed(Suite, Name, Goal, Opts)
    ).

run_succeed(Suite, Name, Goal, _Opts) :-
    ( catch(Goal, _E, fail) ->
        pj_inc_pass, format('  pass: ~w:~w~n', [Suite, Name])
    ;   pj_inc_fail, format('  FAIL: ~w:~w  (goal failed)~n', [Suite, Name])
    ).

run_fail(Suite, Name, Goal) :-
    ( catch(Goal, _E, true) ->
        pj_inc_fail, format('  FAIL: ~w:~w  (expected fail, succeeded)~n', [Suite, Name])
    ;   pj_inc_pass, format('  pass: ~w:~w~n', [Suite, Name])
    ).

run_error(Suite, Name, Goal, ExpErr) :-
    ( catch(Goal, error(ActErr, _), pj_match_err(Suite, Name, ExpErr, ActErr)) ->
        true
    ;   pj_inc_fail, format('  FAIL: ~w:~w  (no exception)~n', [Suite, Name])
    ).

pj_match_err(Suite, Name, Exp, Act) :-
    copy_term(Exp, ExpC),
    ( ExpC = Act ->
        pj_inc_pass, format('  pass: ~w:~w~n', [Suite, Name])
    ; functor(ExpC, F, _), functor(Act, F, _) ->
        pj_inc_pass, format('  pass: ~w:~w~n', [Suite, Name])
    ;   pj_inc_fail, format('  FAIL: ~w:~w  (error mismatch ~w vs ~w)~n',
                             [Suite, Name, Exp, Act])
    ).

run_throw(Suite, Name, Goal, ExpThrow) :-
    ( catch(Goal, Actual,
        ( Actual = ExpThrow ->
            pj_inc_pass, format('  pass: ~w:~w~n', [Suite, Name])
        ;   pj_inc_fail, format('  FAIL: ~w:~w  (throw mismatch)~n', [Suite, Name])
        )) ->
        true
    ;   pj_inc_fail, format('  FAIL: ~w:~w  (no throw)~n', [Suite, Name])
    ).

run_true(Suite, Name, Goal, Expr) :-
    ( catch(Goal, _E, fail) ->
        ( catch(Expr, _E2, fail) ->
            pj_inc_pass, format('  pass: ~w:~w~n', [Suite, Name])
        ;   pj_inc_fail, format('  FAIL: ~w:~w  (check failed: ~w)~n', [Suite, Name, Expr])
        )
    ;   pj_inc_fail, format('  FAIL: ~w:~w  (goal failed)~n', [Suite, Name])
    ).

run_all(Suite, Name, Goal, (Var == Expected)) :-
    findall(Var, Goal, Actual),
    ( Actual == Expected ->
        pj_inc_pass, format('  pass: ~w:~w~n', [Suite, Name])
    ;   pj_inc_fail, format('  FAIL: ~w:~w  (all mismatch)~n', [Suite, Name])
    ).

/* ---- stdlib helpers used by test bodies ---- */
append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

is_list([]).
is_list([_|T]) :- is_list(T).

forall(Cond, Action) :- \+ (Cond, \+ Action).

last([X], X).
last([_|T], X) :- last(T, X).

msort([], []).
msort([H|T], S) :- msort(T, ST), insert_sorted(H, ST, S).
insert_sorted(X, [], [X]).
insert_sorted(X, [H|T], [X,H|T]) :- X @=< H, !.
insert_sorted(X, [H|T], [H|R]) :- insert_sorted(X, T, R).

succ_or_zero(0, 0) :- !.
succ_or_zero(X, Y) :- Y is X - 1.

/* ---- set_prolog_flag / current_prolog_flag: silently no-op ---- */
set_prolog_flag(_, _).
current_prolog_flag(bounded, true).
current_prolog_flag(max_integer, 9007199254740992).
current_prolog_flag(min_integer, -9007199254740992).
current_prolog_flag(integer_rounding_function, toward_zero).
current_prolog_flag(max_arity, unbounded).
current_prolog_flag(_, _) :- fail.

/* ---- set_test_options: no-op ---- */
set_test_options(_).

/* ---- acyclic_term / cyclic_term ---- */
acyclic_term(_).
cyclic_term(_) :- fail.

/* ---- ground/1 ---- */
ground(X) :- \+ \+ (numbervars(X, 0, _), true).
