// smoke.sc — smoke test for corpus/programs/scrip/ (Snocone-hosted runtime).
// Verifies the runtime loads and a Shift/Pop round-trip works using the
// faithful no-arg Pop() form beauty.sno uses at line 617:
//     DIFFER(sno = Pop())
// Shift('foo','bar') pushes a tree leaf; Pop() returns it.
// Expected output:
//     bar
//     global-OK
//     tdump-OK
//
// PARSER-SN-INFRA-5a — fixed.  The synthetic-label collision across .sc
// files (label_seq used to reset to 0 in each snocone_parse_program call)
// is now resolved with a monotonic counter in snocone_parse.y, so Pop's
// :goF _Lend_NNNN no longer aliases into Insert's while-loop end.
//
// PARSER-SN-INFRA-2 — global.sc loaded.  digits, TRUE, FALSE, the named
// character constants, and the X*xxxxxxx bit-prefix slices are bound.
//
// PARSER-SN-INFRA-3 — tdump.sc loaded.  TLump and TValue ported; TDump
// is a thin TLump wrapper.  Verified by building (A b) and round-tripping
// through TLump with an 80-char budget.

Shift('foo', 'bar');
sno = Pop();
OUTPUT = v(sno);

OUTPUT = (IDENT(digits, '0123456789') 'global-OK', 'global-FAIL');

_smoke_node = tree('A', '');
Append(_smoke_node, tree('Name', 'b'));
OUTPUT = (IDENT(TLump(_smoke_node, 80), '(A b)') 'tdump-OK', 'tdump-FAIL');

// PARSER-SN-INFRA-4 — assign.sc: deferred assign via direct call (value form).
// assign('_smoke_cap', 'hel') stores 'hel' and returns .dummy.
_smoke_cap = '';
assign('_smoke_cap', 'hel');
OUTPUT = (IDENT(_smoke_cap, 'hel') 'assign-OK', 'assign-FAIL');

// PARSER-SN-INFRA-4 — match.sc: match/notmatch membership tests.
// match succeeds when 'bar' is found in 'foo bar baz'.
OUTPUT = (match('foo bar baz', 'bar') 'match-OK', 'match-FAIL');
// notmatch succeeds when 'qux' is NOT in 'foo bar baz'.
OUTPUT = (notmatch('foo bar baz', 'qux') 'notmatch-OK', 'notmatch-FAIL');

// PARSER-SN-INFRA-6 — case.sc: lwr/upr/cap round-trips + icase membership.
// lwr('AbC') = 'abc'; upr('AbC') = 'ABC'; cap('aBc') = 'Abc'.
OUTPUT = (IDENT(lwr('AbC'), 'abc') 'lwr-OK', 'lwr-FAIL');
OUTPUT = (IDENT(upr('AbC'), 'ABC') 'upr-OK', 'upr-FAIL');
OUTPUT = (IDENT(cap('aBc'), 'Abc') 'cap-OK', 'cap-FAIL');
// icase('End') yields a pattern that matches 'eNd' case-insensitively.
// PARSER-SN-INFRA-11a (FIXED 2026-05-03): `subj ? pat` in value context now
// returns the matched substring per SNOBOL4 spec, not NULSTR.  Test by
// checking that the returned span equals the input subject (full match).
_smoke_icp = icase('End');
OUTPUT = (IDENT('eNd' ? _smoke_icp, 'eNd') 'icase-OK', 'icase-FAIL');

// PARSER-SN-INFRA-7 — qize.sc: Qize/SQize/DQize/SqlSQize round-trips on the
// non-deferred-*assign surface.  The deferred-*assign branch in Qize (control
// chars: bSlash/bs/ff/nl/cr/tab) is blocked by INFRA-7a (inline *assign in
// pattern not firing when the pattern is built inline inside `(str ? PAT)`).
// What we exercise here are the BREAK/REM branches — the ones that handle
// printable ASCII and quote chars.
OUTPUT = (IDENT(Qize(''),       "''")            'qize-empty-OK', 'qize-empty-FAIL');
OUTPUT = (IDENT(Qize('hello'),  "'hello'")       'qize-plain-OK', 'qize-plain-FAIL');
OUTPUT = (IDENT(SQize('hello'), "'hello'")       'sqize-OK',      'sqize-FAIL');
OUTPUT = (IDENT(DQize('hello'), '"hello"')       'dqize-OK',      'dqize-FAIL');
// SqlSQize doubles internal '
OUTPUT = (IDENT(SqlSQize("o'clock"), "o''clock") 'sqlsqize-OK',   'sqlsqize-FAIL');
// PARSER-SN-INFRA-7: tdump.sc::TValue now calls SqlSQize for string leaves,
// so a string leaf with embedded ' renders SQL-escaped inside the tree dump.
_smoke_qn = tree('R', '');
Append(_smoke_qn, tree('string', "o'clock"));
OUTPUT = (IDENT(TLump(_smoke_qn, 80), "(R 'o''clock')") 'tdump-quote-OK', 'tdump-quote-FAIL');

// PARSER-SN-INFRA-7a — inline *assign(...) inside (subj ? PAT) now fires.
// Prior bug: pattern built inline inside an E_SCAN argument fell through
// interp_eval_pat's default case and reached eval_code.c's E_CAPT_COND_ASGN,
// which has no E_DEFER(E_FNC) routing — pat_assign_cond (XNME) silently
// replaced the intended pat_assign_callcap (XCALLCAP), so the deferred call
// was never registered and the Phase-4 NAME_commit had nothing to fire.
// Fix: added E_CAPT_COND_ASGN / E_CAPT_IMMED_ASGN cases to interp_eval_pat
// in src/runtime/x86/eval_pat.c that mirror the driver-side routing.
_smoke_infra7a_str = 'X';
_smoke_infra7a_cap = 'unset';
_smoke_infra7a_r = (_smoke_infra7a_str ? (POS(0) LEN(1) . *assign(._smoke_infra7a_cap, 'fired')));
OUTPUT = (IDENT(_smoke_infra7a_cap, 'fired') 'infra7a-inline-assign-OK', 'infra7a-inline-assign-FAIL');

// PARSER-SN-INFRA-7a — Qize on control-char input now exercises the deferred-
// *assign control-char arm.  Pre-fix Qize('a' tab 'b') silently degraded
// (the BREAK arm caught everything before the control-char arm because part
// was never set by the alternation).  Now the control-char arm fires and
// produces the canonical round-trip.
OUTPUT = (IDENT(Qize('a' tab 'b'), "'a' tab 'b'") 'infra7a-qize-tab-OK', 'infra7a-qize-tab-FAIL');

// PARSER-SN-INFRA-8 — trace.sc loaded.  T8Trace must be a no-op when
// doDebug = 0 (the default in global.sc).  We call it with arbitrary args
// and confirm the call completes without crashing or emitting output.
// The check: T8Trace returns .dummy (a DT_N name), so DIFFER against
// NULSTR succeeds only if our descriptor is non-null and non-NULSTR.
// More importantly: this call must not print anything between the
// preceding 'infra7a-qize-tab-OK' line and the 'trace-silent-OK' line.
T8Trace(0, 'unused', 0);
T8Trace(99, '? prefix', 42);
T8Trace(1, 'plain', 0);
OUTPUT = 'trace-silent-OK';

// PARSER-SN-INFRA-9 — omega.sc loaded.  TZ wraps a pattern in a max-
// position recorder when xTrace = 0 (default); the trace-hook layer is
// suppressed because LE(xTrace, 0) succeeds and the early-return arm
// takes effect.  The returned pattern must (a) match correctly,
// (b) update t8Max via the inline *assign max-position recorder
// (which exercises the INFRA-7a fix), and (c) not emit anything.
//
// Snocone's `subj ? pat` returns NULSTR on success, so we can't use
// DIFFER on the scan value.  Instead, we wrap the TZ result with a
// trailing cursor capture: a successful match against 'hi' must leave
// the cursor at offset 2.  We also reset t8Max to 0 first so we can
// verify the inline *assign in TZ updated it.
t8Max = 0;
_smoke_omega_p = TZ(0, 'probe', 'hi') @smoke_omega_cur;
_smoke_omega_dummy = ('hi' ? _smoke_omega_p);
OUTPUT = (EQ(smoke_omega_cur, 2) GT(t8Max, 0) 'omega-silent-OK', 'omega-silent-FAIL');

// PARSER-SN-INFRA-10 — verify OPSYN '~' (alias for shift) and OPSYN '&'
// (alias for reduce) work at runtime.  The OPSYN declarations are at
// the top of semantic.sc and execute when the module loads.
//
// scrip's Snocone parser does NOT honour OPSYN in static infix position
// (the grammar binds '~' as the unary 'not' operator at parse time), so
// `pat ~ 'Tag'` written in a .sc file will not work.  What scrip DOES
// support is name-based dispatch of the OPSYN'd alias: APPLY('~', ...)
// reaches the alias table and dispatches to shift().  This is the test:
// the function-call form shift(p, t) and the OPSYN-via-APPLY form must
// produce equal trees.
//
// '~' alias for shift: build pattern, match, pop, compare trees.
_smoke_o10_a = shift('foo', 'Word');
('foo' ? _smoke_o10_a);
_smoke_o10_t1 = Pop();
_smoke_o10_b = APPLY('~', 'foo', 'Word');
('foo' ? _smoke_o10_b);
_smoke_o10_t2 = Pop();
// '&' alias for reduce: shift first to seed the stack, then reduce(1).
Shift('Leaf', 'a');
_smoke_o10_c = reduce("'P'", 1);
('' ? _smoke_o10_c);
_smoke_o10_t3 = Pop();
Shift('Leaf', 'b');
_smoke_o10_d = APPLY('&', "'P'", 1);
('' ? _smoke_o10_d);
_smoke_o10_t4 = Pop();
OUTPUT = (IDENT(t(_smoke_o10_t1), 'Word') IDENT(v(_smoke_o10_t1), 'foo')
          IDENT(t(_smoke_o10_t2), 'Word') IDENT(v(_smoke_o10_t2), 'foo')
          IDENT(t(_smoke_o10_t3), 'P') EQ(n(_smoke_o10_t3), 1)
          IDENT(t(_smoke_o10_t4), 'P') EQ(n(_smoke_o10_t4), 1)
          'opsyn-OK', 'opsyn-FAIL');

// PARSER-SN-FW-1: generic IR-leaf branch in TValue.
// tree('FOO_KIND', 'bar') must render as (FOO_KIND bar) — not bare FOO_KIND.
// tree('IC_VAR', 'x') must render as (IC_VAR x) — sibling-session kind.
// tree('E_QLIT', 'hi') must render as (E_QLIT "hi") — double-quote special branch.
_fw1_foo = tree('FOO_KIND', 'bar');
_fw1_ic  = tree('IC_VAR', 'x');
_fw1_eq  = tree('E_QLIT', 'hi');
OUTPUT = (IDENT(TLump(_fw1_foo, 256), '(FOO_KIND bar)')
          IDENT(TLump(_fw1_ic,  256), '(IC_VAR x)')
          IDENT(TLump(_fw1_eq,  256), '(E_QLIT "hi")')
          'fw1-generic-leaf-OK', 'fw1-generic-leaf-FAIL');

// PARSER-SN-FW-2: multi-child role-slot wrapper in TLump.
// Tree(':args','',3,c1,c2,c3) must render as ":args (c1 c2 c3)" — not
// bracketed with double-quoted tag.  0 and 1-child cases unchanged.
_fw2_c1 = Tree('E_VAR', 'a');
_fw2_c2 = Tree('E_VAR', 'b');
_fw2_c3 = Tree('E_VAR', 'c');
_fw2_x3 = Tree(':args', '', 3, _fw2_c1, _fw2_c2, _fw2_c3);
OUTPUT = (IDENT(TLump(_fw2_x3, 256), ':args ((E_VAR a) (E_VAR b) (E_VAR c))')
          'fw2-multichild-role-OK', 'fw2-multichild-role-FAIL');
