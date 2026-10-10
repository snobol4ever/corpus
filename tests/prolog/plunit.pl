/* PATCHED:v4 SWI-5 EMPTY verdict */
/* plunit.pl — scrip shim. No -> operator; uses nb_setval state machine only. */

module(_, _). use_module(_). use_module(_, _). ensure_loaded(_).

:- dynamic pj_suite/2.
:- dynamic pj_test/4.
:- dynamic pj_current_suite/1.

/* SWI-2b (Opus 4.7, 2026-05-28): suite registry uses nb_setval(pj_suites, [Suite-Opts|Old])
 * instead of assertz(pj_suite(Suite, Opts)).  Runtime assertz (PL-RT-ASSERTZ) is not yet
 * implemented in scrip — runtime calls fall silently — but nb_setval/getval are real
 * builtins, so the registry works there.  pj_suites_init seeds the list to [] from
 * :- initialization(pj_suites_init) so that subsequent begin_tests calls see a real list. */
pj_suites_init :- nb_setval(pj_suites, []).
:- initialization(pj_suites_init).

pj_suites_add(Suite, Opts) :-
    nb_getval(pj_suites, Old),
    nb_setval(pj_suites, [Suite-Opts|Old]).

begin_tests(Suite) :- pj_suites_add(Suite, []).
begin_tests(Suite, Opts) :- pj_suites_add(Suite, Opts).
end_tests(_).

/* SWI-5 (Opus 4.7, 2026-05-28): pj_tc counts tests that actually produced a verdict
 * (pass / fail / skip). Incrementing it on enqueue would over-count: pj_run_one can
 * fail silently when scrip's catch/once interaction misbehaves on a malformed goal,
 * leaving the test enqueued but no verdict recorded — which would falsely promote
 * a suite from EMPTY to PASS via the (TC>0, SF=0) rule. By bumping pj_tc only from
 * pj_inc_{pass,fail,skip}, "TC=0" correctly means "no test made it through to a
 * verdict line." */
pj_init :- nb_setval(pj_p,0), nb_setval(pj_f,0), nb_setval(pj_s,0), nb_setval(pj_tc,0).
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
pj_wants_fail([fail|_]).   pj_wants_fail([false|_]).   pj_wants_fail([_|T]) :- pj_wants_fail(T).
pj_wants_fail(fail).       pj_wants_fail(false).
pj_has_error([error(E)|_],E). pj_has_error([_|T],E) :- pj_has_error(T,E). pj_has_error(error(E),E).
pj_has_throws([throws(T)|_],T). pj_has_throws([_|T2],T) :- pj_has_throws(T2,T). pj_has_throws(throws(T),T).
pj_has_true([true(E)|_],E). pj_has_true([_|T],E) :- pj_has_true(T,E).
pj_has_all([all(E)|_],E).   pj_has_all([_|T],E) :- pj_has_all(T,E).
pj_has_forall([forall(G)|_],G). pj_has_forall([_|T],G) :- pj_has_forall(T,G).
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
pj_cond_fails(_) :- true.    /* unknown / undefined: assume fails => skip */


pj_run_one(Suite,Name,Opts,Goal) :- pj_has_forall(Opts,Gen), !,
    pj_del_forall(Opts,Rest),
    catch(forall(Gen, once(pj_run_one(Suite,Name,Rest,Goal))), E, pj_gen_err(Suite,Name,E)).
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
    catch((findall(Var,Goal,Actual), R = ok), E, R = err(E)),
    pj_do_all_r(Suite,Name,R,Actual,Expected).
pj_do_all_r(Suite,Name,ok,Actual,Expected) :-
    ( Actual == Expected -> pj_inc_pass, format('  pass: ~w:~w~n',[Suite,Name])
    ;                       pj_inc_fail, format('  FAIL: ~w:~w  (all mismatch)~n',[Suite,Name])
    ).
pj_do_all_r(Suite,Name,err(E),_,_) :-
    pj_inc_fail, pj_err_text(E, T), format('  FAIL: ~w:~w  (received error: ~w)~n',[Suite,Name,T]).

/* stdlib */
append([],L,L). append([H|T],L,[H|R]) :- append(T,L,R).
member(X,[X|_]). member(X,[_|T]) :- member(X,T).
is_list([]). is_list([_|T]) :- is_list(T).
forall(C,A) :- \+ (C, \+ A).
last([X],X). last([_|T],X) :- last(T,X).
msort([],[]). msort([H|T],S) :- msort(T,ST), pj_insert(H,ST,S).
pj_insert(X,[],[X]). pj_insert(X,[H|T],[X,H|T]) :- X @=< H, !. pj_insert(X,[H|T],[H|R]) :- pj_insert(X,T,R).
X =@= Y :- copy_term(X, X1), copy_term(Y, Y1), numbervars(X1,0,N), numbervars(Y1,0,N), X1 == Y1.
succ_or_zero(0,0) :- !. succ_or_zero(X,Y) :- Y is X-1.

set_prolog_flag(_,_).
set_test_options(_). acyclic_term(_). cyclic_term(_) :- fail.
ground(X) :- \+ \+ (numbervars(X,0,_),true).

/* PL-12 session #7: SWI-suite stdlib gap fill (paired with Fix #2 v3 bridge).
 * Naive Prolog impls — sufficient to make plunit-driven tests reach their
 * actual goal logic without tripping "undefined predicate". */

memberchk(X, L) :- member(X, L), !.
length([], 0). length([_|T], N) :- length(T, N0), N is N0 + 1.
between(L, H, X) :- integer(X), !, X >= L, X =< H.
between(L, H, L) :- L =< H.
between(L, H, X) :- L < H, L1 is L+1, between(L1, H, X).
false :- fail.
call(G) :- G.
call(G, A) :- G =.. L0, append(L0, [A], L1), G1 =.. L1, G1.
call(G, A, B) :- G =.. L0, append(L0, [A,B], L1), G1 =.. L1, G1.
call(G, A, B, C) :- G =.. L0, append(L0, [A,B,C], L1), G1 =.. L1, G1.
apply(G, Args) :- G =.. L0, append(L0, Args, L1), G1 =.. L1, G1.

/* term_variables/2 — collect unique vars in a Term (preserve order). */
term_variables(T, Vs) :- pj_tv(T, [], Vs0), pj_reverse(Vs0, Vs).
pj_tv(T, Acc, Acc) :- ground(T), !.
pj_tv(T, Acc, [T|Acc]) :- var(T), !, pj_not_member(T, Acc), !.
pj_tv(T, Acc, Acc) :- var(T), !.
pj_tv(T, Acc, R) :- compound(T), T =.. [_|Args], pj_tv_list(Args, Acc, R).
pj_tv(_, Acc, Acc).
pj_tv_list([], Acc, Acc).
pj_tv_list([H|T], Acc, R) :- pj_tv(H, Acc, Acc1), pj_tv_list(T, Acc1, R).
pj_not_member(X, [Y|_]) :- X == Y, !, fail.
pj_not_member(X, [_|T]) :- !, pj_not_member(X, T).
pj_not_member(_, []).
pj_reverse(L, R) :- pj_rev(L, [], R).
pj_rev([], R, R). pj_rev([H|T], A, R) :- pj_rev(T, [H|A], R).

/* numbervars/4 — like /3, plus options list (ignored: singletons/etc).
 * Runtime provides /3 builtin; this defines the /4 form by delegation. */
numbervars(T, S, E, _Opts) :- numbervars(T, S, E).

/* compound/term identity helpers. */
compound_name_arity(T, N, A) :- compound(T), !, functor(T, N, A).
compound_name_arity(T, N, 0) :- atom(T), !, N = T.
compound_name_arguments(T, N, Args) :- compound(T), !, T =.. [N|Args].
compound_name_arguments(T, T, []) :- atom(T).

/* is_most_general_term/1 — compound where all args are distinct unbound vars. */
is_most_general_term(T) :- compound(T), T =.. [_|Args], pj_all_unique_vars(Args, []).
is_most_general_term(T) :- atom(T).
pj_all_unique_vars([], _).
pj_all_unique_vars([V|T], Seen) :- var(V), pj_not_member(V, Seen), pj_all_unique_vars(T, [V|Seen]).

/* clause/2 is SCRIP's own builtin (static and dynamic procedures alike, as swipl's). The stub `clause(_, _) :- fail.` that
   stood here shadowed it and failed every clause/2 call in the package -- core/test_call's two clause tests read
   "goal failed" through this shim while the same goals answered in a plain program (hq_prolog 2026-10-01). */

/* op/3, user/0 — silent stubs. */
op(_, _, _).
user.

/* setof/3 — sort+dedup over findall. */
setof(T, G, S) :- findall(T, G, L), L \== [], sort(L, S).

/* setup_call_cleanup/3 — naive: setup, call, cleanup unconditionally. */
setup_call_cleanup(Setup, Goal, Cleanup) :-
    Setup, ( catch(Goal, E, (Cleanup, throw(E))) -> Cleanup ; Cleanup, fail ).

/* format/3 is SCRIP's own builtin (a stream, alias or atom/string/codes/chars sink as its first argument), so the shim defines
 * none. The stub that stood here ignored the stream and delegated to format/2: once a meta-called format/3 ran at all (SCRIP
 * 8c91eb5d6), every format(atom(A), ...) in a test body printed its text on stdout, ahead of the verdict line, and left A
 * unbound (CEO-1308: core/test_format.pl format:atom#2 and format:gmp#1). */

/* expand_term/2, expand_goal/2: none. SCRIP's prelude carries both as SWI defines them (the program's term_expansion/2, then DCG,
 * then goal_expansion/2 to a fixpoint over clause bodies), so the identity stub that stood here hid the expansion SWI's tests check. */

/* string predicates: SCRIP carries them as builtins (string_chars, string_codes, string_lower, string_upper, string_length,
 * number_string), reading any text -- an atom, a number, a code or char list -- as SWI's do; the shim's atom_* rows that stood
 * here overrode them with ISO's atom-only guards, so string_codes("a", C) raised type_error(atom, [97]) under double_quotes=codes
 * (2026-09-28, library/test_utf8.pl: 28 cases). */

/* split_string/4 — naive single-separator-char splitter; pad chars stripped from
 * each part. Sufficient to define the predicate so the bridge can dispatch
 * through it without existence_error; passes simple cases like
 * split_string("a.b.c.d", ".", "", L) → L = [a,b,c,d]. */
split_string(S, Sep, Pad, Parts) :-
    atom_codes(S, Codes), atom_codes(Sep, SepCodes), atom_codes(Pad, PadCodes),
    pj_split_codes(Codes, SepCodes, [], RawParts),
    pj_strip_pad_each(RawParts, PadCodes, Parts).
pj_split_codes([], _, AccCodes, [Part]) :-
    pj_reverse_codes(AccCodes, PartCodes), atom_codes(Part, PartCodes).
pj_split_codes([C|Rest], SepCodes, AccCodes, [Part|MoreParts]) :-
    member(C, SepCodes), !,
    pj_reverse_codes(AccCodes, PartCodes), atom_codes(Part, PartCodes),
    pj_split_codes(Rest, SepCodes, [], MoreParts).
pj_split_codes([C|Rest], SepCodes, AccCodes, Parts) :-
    pj_split_codes(Rest, SepCodes, [C|AccCodes], Parts).
pj_reverse_codes(L, R) :- pj_rev(L, [], R).
pj_strip_pad_each([], _, []).
pj_strip_pad_each([P|T], PadCodes, [Stripped|TT]) :-
    atom_codes(P, Cs), pj_strip_pad_lr(Cs, PadCodes, Cs2),
    atom_codes(Stripped, Cs2), pj_strip_pad_each(T, PadCodes, TT).
pj_strip_pad_lr(Cs, PadCodes, Out) :-
    pj_strip_pad_left(Cs, PadCodes, Mid),
    pj_reverse_codes(Mid, RMid),
    pj_strip_pad_left(RMid, PadCodes, RStripped),
    pj_reverse_codes(RStripped, Out).
pj_strip_pad_left([C|T], PadCodes, Out) :- member(C, PadCodes), !, pj_strip_pad_left(T, PadCodes, Out).
pj_strip_pad_left(L, _, L).

/* string_bytes/3 — encode atom as byte list under given encoding.
 * ASCII-only is sufficient: utf8 = atom_codes; utf16be/le interleave 0-bytes.
 * Non-ASCII source is excluded by lexer constraints; non-ASCII tests are
 * already commented out in test_string.pl. */
string_bytes(S, Bytes, utf8) :- atom(S), !, atom_codes(S, Bytes).
string_bytes(S, Bytes, utf8) :- atom_codes(S, Bytes).
string_bytes(S, Bytes, utf16be) :- atom(S), !, atom_codes(S, Cs), pj_interleave_be(Cs, Bytes).
string_bytes(S, Bytes, utf16be) :- pj_uninterleave_be(Bytes, Cs), atom_codes(S, Cs).
string_bytes(S, Bytes, utf16le) :- atom(S), !, atom_codes(S, Cs), pj_interleave_le(Cs, Bytes).
string_bytes(S, Bytes, utf16le) :- pj_uninterleave_le(Bytes, Cs), atom_codes(S, Cs).
pj_interleave_be([], []).
pj_interleave_be([C|T], [0,C|TT]) :- pj_interleave_be(T, TT).
pj_interleave_le([], []).
pj_interleave_le([C|T], [C,0|TT]) :- pj_interleave_le(T, TT).
pj_uninterleave_be([], []).
pj_uninterleave_be([0,C|T], [C|TT]) :- pj_uninterleave_be(T, TT).
pj_uninterleave_le([], []).
pj_uninterleave_le([C,0|T], [C|TT]) :- pj_uninterleave_le(T, TT).

/* atom_to_term/3 — naive: only succeeds if Atom parses as a literal. */
atom_to_term(A, A, []).

/* stream_property/2 — silent-fail stub (no real stream concept here). */
stream_property(_, _) :- fail.

/* $current_prolog_flag/5 — internal SWI shim, fail silently. */
'$current_prolog_flag'(_, _, _, _, _) :- fail.

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
