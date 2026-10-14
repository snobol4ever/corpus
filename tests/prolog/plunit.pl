/* PATCHED:v4 SWI-5 EMPTY verdict */
/* plunit.pl — scrip shim. No -> operator; uses nb_setval state machine only. */


:- dynamic pj_suite/2.
:- dynamic pj_test/4.
:- dynamic pj_current_suite/1.

/* SWI-2b (Opus 4.7, 2026-05-28): suite registry uses nb_setval(pj_suites, [Suite-Opts|Old])
 * instead of assertz(pj_suite(Suite, Opts)).  Runtime assertz (PL-RT-ASSERTZ) is not yet
 * implemented in scrip — runtime calls fall silently — but nb_setval/getval are real
 * builtins, so the registry works there.  pj_suites_init seeds the list to [] from
 * :- pj_suites_init, a plain directive, so that subsequent begin_tests calls see a real list (CEO-1700: a directive runs
 * where the consult reaches it, as swipl and gprolog run it; an initialization(pj_suites_init) ran after the file's
 * begin_tests directives and emptied the list they had built). */
pj_suites_init :- nb_setval(pj_suites, []).
:- pj_suites_init.

pj_suites_add(Suite, Opts) :-
    nb_getval(pj_suites, Old),
    nb_setval(pj_suites, [Suite-Opts|Old]).

/* begin_tests(Unit) opens plunit's module plunit_<Unit> as the source module of the unit's clauses and directives, so
 * prolog_load_context(module, M) answers it there as swipl does (library/test_record point#11); end_tests(Unit) returns
 * to user. Both run in place, in source order (CEO-1700). */
begin_tests(Suite) :- pj_unit_open(Suite), pj_suites_add(Suite, []).
begin_tests(Suite, Opts) :- pj_unit_open(Suite), pj_suites_add(Suite, Opts).
end_tests(_) :- '$set_source_module'(user).
pj_unit_open(Suite) :- atom_concat(plunit_, Suite, M), '$set_source_module'(M).

/* SWI-5 (Opus 4.7, 2026-05-28): pj_tc counts tests that actually produced a verdict
 * (pass / fail / skip). Incrementing it on enqueue would over-count: pj_run_one can
 * fail silently when scrip's catch/once interaction misbehaves on a malformed goal,
 * leaving the test enqueued but no verdict recorded — which would falsely promote
 * a suite from EMPTY to PASS via the (TC>0, SF=0) rule. By bumping pj_tc only from
 * pj_inc_{pass,fail,skip}, "TC=0" correctly means "no test made it through to a
 * verdict line." */
pj_init :- nb_setval(pj_p,0), nb_setval(pj_f,0), nb_setval(pj_s,0), nb_setval(pj_tc,0), pj_sto_init.
/* sto(rational_trees) (ceo CEO-1684): plunit runs such a test with occurs_check=false, both engines' default, so it is an ordinary test --
 * but one that builds a cyclic term can loop or exhaust the stack and end its whole file (measured 2026-10-11 on 4783ee83e: core/test_arith
 * 221 cases -> 61, core/test_term 52 -> 9). So the file's own run DEFERS each one (skip ... [sto-deferred only(Unit,Test)]) and the SWI
 * runner runs each deferred case ALONE, in the same program, under its own timeout: a pj_sto_only.pl in the working directory holding
 * only(Unit,Test). selects it, and every other test of the run is passed over without a line. A looping case costs that case. */
pj_sto_init :- ( catch(pj_sto_read(T), _, fail) -> nb_setval(pj_sto, T) ; nb_setval(pj_sto, defer) ).
pj_sto_read(only(S,N)) :- open('pj_sto_only.pl', read, St), read(St, T), close(St), T = only(S,N).
pj_del_sto([], []).
pj_del_sto([sto(_)|T], R) :- !, pj_del_sto(T, R).
pj_del_sto([X|T], [X|R]) :- pj_del_sto(T, R).
pj_inc_pass :- nb_getval(pj_p,N), N1 is N+1, nb_setval(pj_p,N1),
               nb_getval(pj_sf,SF), nb_setval(pj_sf,SF),
               nb_getval(pj_tc,TC), TC1 is TC+1, nb_setval(pj_tc,TC1).
pj_inc_fail :- nb_getval(pj_f,N), N1 is N+1, nb_setval(pj_f,N1),
               nb_getval(pj_sf,SF), SF1 is SF+1, nb_setval(pj_sf,SF1),
               nb_getval(pj_tc,TC), TC1 is TC+1, nb_setval(pj_tc,TC1).
pj_inc_skip :- nb_getval(pj_s,N), N1 is N+1, nb_setval(pj_s,N1),
               nb_getval(pj_tc,TC), TC1 is TC+1, nb_setval(pj_tc,TC1).
pj_summary  :- nb_getval(pj_p,P), nb_getval(pj_f,F), nb_getval(pj_s,S),
               format('~n% ~w passed, ~w failed, ~w skipped~n',[P,F,S]).

/* SWI-2b: run_tests reads the suite list from nb_setval(pj_suites). The list is built
 * right-to-left (newest at head) by pj_suites_add, so reverse to get source order. */
run_tests    :- pj_init, nb_getval(pj_suites, Sx), pj_reverse(Sx, Ss),
                pj_run_pairs(Ss), pj_summary.
run_tests(L) :- is_list(L), !, pj_init, pj_run_list(L), pj_summary.
run_tests(S) :- pj_init, pj_run_suite(S), pj_summary.

pj_run_pairs([]).
pj_run_pairs([Suite-_Opts|T]) :- ( pj_run_suite(Suite) -> true ; true ), !, pj_run_pairs(T).

pj_run_list([]).
pj_run_list([H|T]) :- ( pj_run_suite(H) -> true ; true ), !, pj_run_list(T).

/* SWI-2b: pj_run_suite no longer reads suite-options via pj_suite/2 (skip_cond on
 * the suite level loses its source); the per-test pj_skip_cond on Opts still fires.
 * SWI-5: reset pj_tc per suite alongside pj_sf so the verdict can tell "no tests
 * ran" from "all passed". */
pj_run_suite(Suite) :-
    format('~n% PL-Unit: ~w~n',[Suite]),
    nb_setval(pj_sf,0),
    nb_setval(pj_tc,0),
    pj_unit_opt(Suite, setup),
    findall(t(N,O,G), pj_test(Suite,N,O,G), Tests),
    ( pj_run_tests(Suite, Tests) -> true ; true ),
    pj_unit_opt(Suite, cleanup),
    nb_getval(pj_sf,SF),
    nb_getval(pj_tc,TC),
    pj_suite_verdict(Suite, TC, SF), !.

/* A unit's own setup(G) runs before its tests and cleanup(G) after them, as plunit runs begin_tests(Unit, Options)'s two
 * unit options (tabling/test_tabling.pl: 34 units declare cleanup(abolish_all_tables), and a unit that inherits the tables of
 * every unit before it counts them in its expected_variants check). A goal that fails or raises is reported to user_error and
 * the unit goes on (hq_prolog 2026-10-10, row prolog-swi-tabling-...). */
pj_unit_opt(Suite, Kind) :-
    nb_getval(pj_suites, L),
    ( memberchk(Suite-Opts0, L) -> true ; Opts0 = [] ),
    ( is_list(Opts0) -> Opts = Opts0 ; Opts = [Opts0] ),
    Opt =.. [Kind, G],
    ( memberchk(Opt, Opts) -> ( catch(G, E, (format(user_error, 'unit ~w ~w raised ~q~n', [Suite, Kind, E]), fail)) -> true ; format(user_error, 'unit ~w ~w failed~n', [Suite, Kind]) ) ; true ).

/* SWI-5 (Opus 4.7, 2026-05-28): three-way verdict.
 *   TC =:= 0           -> EMPTY  (no test bodies registered or executed)
 *   TC > 0,  SF =:= 0  -> PASS   (every test that ran succeeded)
 *   TC > 0,  SF >  0   -> FAIL   (at least one test failed)
 * Pre-SWI-5 the two-way (SF =:= 0) check printed PASS whenever no failure was
 * recorded, including when zero test bodies ran — masking the 4 expected-FAIL
 * suites in the .ref files as MISS-PASS. Multi-clause form (not nested ITE)
 * because nested `(C1 -> T1 ; C2 -> T2 ; E)` is unreliable in scrip's mode-2
 * interp (verified 2026-05-28: middle branch is skipped, control jumps to the
 * final else; see /tmp/probe_ite.pl). Each clause is independently dispatched
 * by single-rightmost choice in BB_CHOICE — robust against the ITE bug. */
pj_suite_verdict(Suite, TC, _SF) :- TC =:= 0, !,
    format('EMPTY ~w~n',[Suite]).
pj_suite_verdict(Suite, _TC, SF) :- SF =:= 0, !,
    format('PASS ~w~n',[Suite]).
pj_suite_verdict(Suite, _TC, _SF) :-
    format('FAIL ~w~n',[Suite]).

pj_run_tests(_, []).
pj_run_tests(Suite, [t(N0,O,G)|Rest]) :-
    pj_name_text(N0, N), pj_run_verdict(Suite,N,O,G), pj_run_tests(Suite,Rest).

/* A test the shim cannot grade is that test's FAIL, never the end of its suite: until 2026-10-01 a pj_run_one that
 * failed (an all(X = L) the shim had no clause for) abandoned every later test of the suite through the once/1 chain,
 * and a forall generator that raised (data/1 calling random/1) escaped and ended the whole run. plunit grades each
 * test alone and reports a raising generator as that test's error. */
pj_run_verdict(Suite,N,_,_) :- nb_getval(pj_sto, only(S,T)), \+ (Suite == S, N == T), !.
pj_run_verdict(Suite,N,O,G) :- once(pj_run_one(Suite,N,O,G)), !.
pj_run_verdict(Suite,N,_,_) :- pj_inc_fail, format('  FAIL: ~w:~w  (no verdict from the shim)~n',[Suite,N]).
pj_gen_err(Suite,Name,E) :- pj_inc_fail, pj_err_text(E, T), format('  FAIL: ~w:~w  (received error: ~w)~n',[Suite,Name,T]).

/* A test named "..." arrives as a CODE LIST under ISO's double_quotes=codes, SCRIP's default since 2026-09-23 (ISO and GNU
 * Prolog read it so); swipl reads it as a string and names the test by its text, which is the name the oracle-cut ref carries.
 * So the shim names such a test by its text, and the files keep ISO's reading everywhere else -- a DCG body and number_codes/2
 * still see "..." as codes (CEO-1308: ten library/test_apply foldl names had become code lists and no verdict matched). */
pj_name_text(N0, N) :- pj_is_codes(N0), !, atom_codes(N, N0).
pj_name_text(N, N).
pj_is_codes([C|T]) :- integer(C), C >= 0, pj_is_codes_t(T).
pj_is_codes_t([]).
pj_is_codes_t([C|T]) :- integer(C), C >= 0, pj_is_codes_t(T).

pj_has_sto([sto(_)|_]).    pj_has_sto([_|T]) :- pj_has_sto(T).
pj_has_blocked([blocked(_)|_]). pj_has_blocked([_|T]) :- pj_has_blocked(T). pj_has_blocked(blocked(_)).
pj_wants_fail([fail|_]).   pj_wants_fail([false|_]).   pj_wants_fail([_|T]) :- pj_wants_fail(T).
pj_wants_fail(fail).       pj_wants_fail(false).
pj_has_error([error(E)|_],E). pj_has_error([_|T],E) :- pj_has_error(T,E). pj_has_error(error(E),E).
/* error(Formal, Context) is plunit's SICStus 4 form and means throws(error(Formal, Context)) -- swipl's own plunit.pl:
   expand_option(error(F,C), throws(error(F,C))) -- so it is graded on the throws road, the whole ball unified */
pj_has_throws([throws(T)|_],T). pj_has_throws([error(F,C)|_],error(F,C)). pj_has_throws([_|T2],T) :- pj_has_throws(T2,T).
pj_has_throws(throws(T),T). pj_has_throws(error(F,C),error(F,C)).
/* plunit's shorthand test(Name, A Cmp B) means true(A Cmp B) for each of ==, =, =@= and =:= -- swipl's own plunit.pl, expand_option/2.
 * Until 2026-10-11 a bare comparison option had no clause here, fell through to pj_do_succeed and PASSED whenever the body succeeded,
 * whatever the value (hq_prolog's report: 733 test heads in 76 swi_tests files; core/test_arith float_compare:max_nan/min_nan). */
pj_has_true([true(E)|_],E).
pj_has_true([C|_],C) :- compound(C), functor(C,Op,2), pj_all_op(Op).
pj_has_true([_|T],E) :- pj_has_true(T,E).
pj_has_all([all(E)|_],E).   pj_has_all([_|T],E) :- pj_has_all(T,E).
pj_has_forall([forall(G)|_],G). pj_has_forall([_|T],G) :- pj_has_forall(T,G).
pj_take_setup(Opts0, S, C, Rest) :- ( is_list(Opts0) -> Opts = Opts0 ; Opts = [Opts0] ), ( memberchk(setup(_), Opts) ; memberchk(cleanup(_), Opts) ), !,
    ( memberchk(setup(S0), Opts) -> S = S0 ; S = true ), ( memberchk(cleanup(C0), Opts) -> C = C0 ; C = true ), pj_del_setup(Opts, Rest).
pj_del_setup([], []).
pj_del_setup([setup(_)|T], R) :- !, pj_del_setup(T, R).
pj_del_setup([cleanup(_)|T], R) :- !, pj_del_setup(T, R).
pj_del_setup([H|T], [H|R]) :- pj_del_setup(T, R).
pj_del_forall([],[]).
pj_del_forall([forall(_)|T],R) :- !, pj_del_forall(T,R).
pj_del_forall([H|T],[H|R]) :- pj_del_forall(T,R).
/* pj_skip_cond — pattern-match the condition shape so we can dispatch
 * literal goals (sidesteps the Var-bound-goal limitation in scrip's \+/call).
 * Recognised shapes (only what the SWI suites actually use):
 *   condition(current_prolog_flag(F,V))   -- skip iff cpf(F,V) fails
 *   condition(<unknown_atom>)              -- always skip (assume cond fails)
 *   condition(fail)                        -- always skip
 *   condition(true)                        -- never skip
 */
pj_skip_cond(Opts) :- member(condition(C), Opts), pj_cond_fails(C).

pj_cond_fails(fail) :- !.
pj_cond_fails(false) :- !.
pj_cond_fails(true) :- !, fail.
pj_cond_fails(current_prolog_flag(F,V)) :- !, \+ current_prolog_flag(F,V).
pj_cond_fails(C) :- \+ catch(C, _, fail).    /* any other condition is CALLED, as plunit calls it; one that fails or raises skips */


pj_run_one(Suite,Name,Opts,Goal) :- pj_has_forall(Opts,Gen), !,
    pj_del_forall(Opts,Rest),
    catch(forall(Gen, once(pj_run_one(Suite,Name,Rest,Goal))), E, pj_gen_err(Suite,Name,E)).
pj_run_one(Suite,Name,Opts,Goal) :- memberchk(sto(rational_trees), Opts), !,
    (   nb_getval(pj_sto, only(_,_))
    ->  pj_del_sto(Opts, Rest), pj_run_one(Suite,Name,Rest,Goal)
    ;   pj_inc_skip, format('  skip: ~w:~w  [sto-deferred ~q]~n',[Suite,Name,only(Suite,Name)])
    ).
pj_run_one(Suite,Name,Opts,_) :- pj_has_sto(Opts), !,
    pj_inc_skip, format('  skip: ~w:~w  [sto]~n',[Suite,Name]).
pj_run_one(Suite,Name,Opts,_) :- pj_has_blocked(Opts), !,
    pj_inc_skip, format('  skip: ~w:~w  [blocked]~n',[Suite,Name]).
/* a test whose condition fails prints NOTHING, as swipl's plunit prints nothing for it (hq_prolog 2026-10-14: a printed skip took an
 * instance number, so tabling_clpfd's two fib_error tests -- #1 condition false, #2 run -- paired the oracle's one PASS with the skip) */
pj_run_one(_,_,Opts,_) :- pj_skip_cond(Opts), !,
    pj_inc_skip.
/* A case's own setup(S) and cleanup(C) run as plunit runs them (cfo 2026-10-14, the coo's ruling on CEO-1698): once(S) before the
 * body, in the same clause instance so their variables are shared -- test(n, [setup(mk(F)), cleanup(rm(F))]) :- use(F) -- and a setup
 * that fails or raises is that case's FAIL ("setup failed"), as plunit reports it; C runs after, whatever the verdict, under
 * ignore/catch. Until this clause the shim ran neither, so a body that takes its state from setup ran with it unbound (library/test_pio:
 * every phrase_from_file case read instantiation_error from open/4 on the unbound file name). After the condition, blocked and sto
 * skips, so a skipped case never runs its setup; the sto-deferred case's alone run comes back through here with its setup intact. */
pj_run_one(Suite,Name,Opts,Goal) :- pj_take_setup(Opts, S, C, Rest), !,
    catch((once(S) -> R = ok ; R = failed), E, R = raised(E)),
    (   R == ok
    ->  pj_run_one(Suite,Name,Rest,Goal)
    ;   pj_inc_fail,
        (   R = raised(E1)
        ->  pj_err_text(E1, T), format('  FAIL: ~w:~w  (setup failed: received error: ~w)~n',[Suite,Name,T])
        ;   format('  FAIL: ~w:~w  (setup failed)~n',[Suite,Name])
        )
    ),
    ignore(catch(C, _, true)).
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

/* A body that RAISES is a FAIL that names the error, exactly as plunit reports it ("received error"); until 2026-09-28 the
 * recovery arm of the catch SUCCEEDED and the pass line printed, so an undefined predicate -- a whole missing library --
 * graded as a pass (hq_prolog: rbtrees printed 125 passes with library(rbtrees) absent). The outcome rides a result term,
 * never a global, and the verdict clauses are multi-clause in the shim's house style. */
pj_do_succeed(Suite,Name,Goal) :-
    catch((Goal, R = ok), E, R = err(E)), !,
    pj_do_succeed_r(Suite,Name,R).
pj_do_succeed(Suite,Name,_) :-
    pj_inc_fail, format('  FAIL: ~w:~w  (goal failed)~n',[Suite,Name]).
pj_do_succeed_r(Suite,Name,ok) :-
    pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name]).
pj_do_succeed_r(Suite,Name,err(E)) :-
    pj_inc_fail, pj_err_text(E, T), format('  FAIL: ~w:~w  (received error: ~w)~n',[Suite,Name,T]).

pj_do_fail(Suite,Name,Goal) :-
    catch((Goal, R = ok), E, R = err(E)), !,
    pj_do_fail_r(Suite,Name,R).
pj_do_fail(Suite,Name,_) :-
    pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name]).
pj_do_fail_r(Suite,Name,ok) :-
    pj_inc_fail, format('  FAIL: ~w:~w  (expected fail, succeeded)~n',[Suite,Name]).
pj_do_fail_r(Suite,Name,err(E)) :-
    pj_inc_fail, pj_err_text(E, T), format('  FAIL: ~w:~w  (received error: ~w)~n',[Suite,Name,T]).

/* the formal term alone: an error's context differs between engines and the why-text is not graded, only read */
pj_err_text(error(F,_), T) :- !, T = F.
pj_err_text(E, E).

pj_do_error(Suite,Name,Goal,Exp) :-
    catch(Goal, B, pj_err_ball(Suite,Name,Exp,B)), !.
pj_do_error(Suite,Name,_,_) :-
    pj_inc_fail, format('  FAIL: ~w:~w  (no exception)~n',[Suite,Name]).

/* a ball that is not error(_,_) is that case's FAIL, as plunit records a wrong exception; it never escapes the file's run */
pj_err_ball(Suite,Name,Exp,B) :-
    (   nonvar(B), B = error(Act,_) -> pj_match_err(Suite,Name,Exp,Act)
    ;   pj_inc_fail, format('  FAIL: ~w:~w  (received ~q)~n',[Suite,Name,B])
    ).

pj_match_err(Suite,Name,Exp,Act) :-
    copy_term(Exp,ExpC),
    ( subsumes_term(ExpC, Act) -> pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name])   /* plunit passes error(E) only when E subsumes the formal */
    ; pj_inc_fail, format('  FAIL: ~w:~w  (err mismatch ~w vs ~w)~n',[Suite,Name,Exp,Act])
    ).

pj_do_throw(Suite,Name,Goal,Exp) :-
    catch(Goal, Act, (Act=Exp -> pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name])
                                ; pj_inc_fail, format('  FAIL: ~w:~w  (throw mismatch)~n',[Suite,Name]))), !.
pj_do_throw(Suite,Name,_,_) :-
    pj_inc_fail, format('  FAIL: ~w:~w  (no throw)~n',[Suite,Name]).

/* the check is an if-then-else after the body's first answer: with the cut it had, a body that succeeded and a check that failed left
 * this predicate failing, so the test read "no verdict from the shim" instead of plunit's wrong answer (the coo, 2026-10-11) */
pj_do_true(Suite,Name,Goal,Expr) :-
    catch(Goal,_,fail), !,
    (   catch(Expr,_,fail)
    ->  pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name])
    ;   pj_inc_fail, format('  FAIL: ~w:~w  (true check failed)~n',[Suite,Name])
    ).
pj_do_true(Suite,Name,_,_) :-
    pj_inc_fail, format('  FAIL: ~w:~w  (true check failed)~n',[Suite,Name]).

/* all(Template Cmp Expected) takes each of plunit's comparisons, ==, =:=, = and =@=, and compares the answers element by element
 * as swipl's plunit.pl does (cmp/4, then cmp_list/3: call(Op, Expected_i, Answer_i) over two lists of one length). Until 2026-10-11
 * only == had a clause, so an all(X = L) read "no verdict from the shim" whatever the program did (hq_prolog's report:
 * library/test_yall.pl disjunction and free; the coo). */
pj_do_all(Suite,Name,Goal,Cmp) :-
    Cmp =.. [Op,Var,Expected], pj_all_op(Op), !,
    catch((findall(Var,Goal,Actual), R = ok), E, R = err(E)),
    pj_do_all_r(Suite,Name,R,Op,Actual,Expected).
pj_all_op('==').  pj_all_op('=:=').  pj_all_op('=').  pj_all_op('=@=').
pj_all_cmp([], [], _).
pj_all_cmp([E|ET], [V|VT], Op) :- G =.. [Op,E,V], G, pj_all_cmp(ET, VT, Op).
pj_do_all_r(Suite,Name,ok,Op,Actual,Expected) :-
    ( catch(pj_all_cmp(Expected,Actual,Op), _, fail) -> pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name])
    ;                                                  pj_inc_fail, format('  FAIL: ~w:~w  (all mismatch)~n',[Suite,Name])
    ).
pj_do_all_r(Suite,Name,err(E),_,_,_) :-
    pj_inc_fail, pj_err_text(E, T), format('  FAIL: ~w:~w  (received error: ~w)~n',[Suite,Name,T]).

/* THE SHIM IS THE HARNESS AND NOTHING ELSE (ceo CEO-1678, 2026-10-11; hq_prolog's finding of 13:2x): it defines no predicate SCRIP
   defines and no builtin SCRIP lacks. A user-file definition overrides SCRIP's own, so the ~30 builtin stubs that stood here (append/3,
   member/2, is_list/1, forall/2, last/2, msort/2, =@=/2, set_prolog_flag/2, acyclic_term/1, cyclic_term/1, ground/1, memberchk/2,
   length/2, between/3, false/0, call/1..4, apply/2, term_variables/2, numbervars/4, compound_name_arity/3, compound_name_arguments/3,
   is_most_general_term/1, op/3, setof/3, setup_call_cleanup/3, split_string/4, string_bytes/3, atom_to_term/3, stream_property/2,
   '$current_prolog_flag'/5, the directive-goal stubs module/2, use_module/1,2 and ensure_loaded/1 -- SCRIP reads those directives itself --
   and the non-SWI succ_or_zero/2 and user/0) graded every SWI file against the stub, not SCRIP: under the shim
   findall(K-L, setof(X, p(X,K), L), R) answered [_G0-[1,2,3]] where SCRIP and swipl answer [a-[1,3],b-[2]]. A builtin SCRIP still
   lacks (apply/2, is_most_general_term/1, '$current_prolog_flag'/5, and module/2, use_module/1,2, ensure_loaded/1 called as goals, on 4783ee83e) is a SCRIP row for hq_prolog, never shim code. */
set_test_options(_).
pj_reverse(L, R) :- pj_rev(L, [], R).
pj_rev([], R, R). pj_rev([H|T], A, R) :- pj_rev(T, [H|A], R).

run_suite(S) :- pj_run_suite(S).

/* THE SWI RUNNER'S DIRECTIVE (hq_prolog 2026-10-01; RULES.md, the superset: a conflict between SWI and ISO goes through ISO's
   own set_prolog_flag/2, set by the program or by a suite runner's directive). swipl reads "..." as a string; SCRIP's default
   is ISO's codes (since 2026-09-23). This shim is the SWI runner's companion and is read FIRST, so this directive -- its last
   term, after every "..." of its own has been read as codes -- makes every file read after it, the test file and wrap.pl, see
   "..." as swipl does (SCRIP's string type is the atom), and at run time sets the flag the same way for read/1.
   library/test_utf8 read hit=45 of 94 before it: every utf8_to_unicode_string and unicode_string_to_utf8 case compared a
   generator string the test file spelled "..." (a code list here) against string_codes/2's atom. */
:- set_prolog_flag(double_quotes, string).
/* The same road for clause/2 on static code: gprolog raises permission_error(access, private_procedure, PI), swipl answers unless
   its flag protect_static_code is true (default false). SCRIP's default is swipl's since CEO-1467 (the superset: iso=true or
   protect_static_code=true raises); the SWI runner declares swipl's explicitly here so the grade does not ride on a default. */
:- set_prolog_flag(protect_static_code, false).
