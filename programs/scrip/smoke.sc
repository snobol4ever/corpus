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
_smoke_icp = icase('End');
OUTPUT = (('eNd' ? _smoke_icp) 'icase-OK', 'icase-FAIL');
