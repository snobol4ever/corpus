// ShiftReduce.sc — Snocone port of ShiftReduce.sno
//
// Canonical reference: corpus/programs/snobol4/beauty/ShiftReduce.sno
//
//   Shift(t, v)   — strip leading whitespace from v, build tree(t, v), push.
//                   Returns .v(s) (NAME) if v was empty, else .dummy.
//   Reduce(t, n)  — pop n trees from the stack, build tree(t, '', n, c) with
//                   them as children (in stack order), push. Both t and n
//                   may be unevaluated expressions; they're EVAL'd in place.
//                   On EVAL failure, no reduction is performed (NRETURN).
//
// Globals required (defined in global.sc):
//   whitespace  — pattern matching ANY of the canonical whitespace chars
//   xTrace      — trace level
//
// Notes:
// - SNOBOL4 statement-form match `v POS(0) whitespace =` strips leading
//   whitespace from v in place. Snocone equivalent is the same syntax
//   in statement context.
// - `tree(t, v)` in canonical is a 2-arg DATA('tree(t,v,n,c)') ctor that
//   leaves n and c null. The Snocone struct ctor requires all four args;
//   we pass '' for the unset ones — equivalent to SNOBOL4's null fill.
// - Canonical's `t = EVAL(t) :F(NRETURN)` is statement-level failure
//   detection. Snocone's `if (assignment)` does not propagate inner
//   EVAL failure to the test (verified at /tmp/eval_detect.sc — the
//   if-arm always succeeds). EVAL failure does, however, leave the
//   LHS null, so `if (~DIFFER(t))` after the assignment catches the
//   common-case failure path. For the non-failing-but-evaluates-to-null
//   edge case (e.g. EVAL of `*('')`) the two semantics diverge: canonical
//   would proceed; the `~DIFFER` check would NRETURN. This edge case
//   does not arise in the beauty pipeline and is documented here for
//   future Snocone-EVAL-failure-detection work.

procedure Shift(t, v,   s) {
    v ? (POS(0) && whitespace) = ;
    s = tree(t, v, '', '');
    Push(s);
    OUTPUT = GT(xTrace, 3) && ('Shift(' && t && ', ' && v && ')');
    if (IDENT(v)) { Shift = .v(s); nreturn; }
    else          { Shift = .dummy; nreturn; }
}

procedure Reduce(t, n,   c, i, r) {
    Reduce = .dummy;
    if (IDENT(REPLACE(DATATYPE(t), &LCASE, &UCASE), 'EXPRESSION')) {
        t = EVAL(t);
        if (~DIFFER(t)) { nreturn; }   // canonical :F(NRETURN) on EVAL-fail
    }
    if (IDENT(REPLACE(DATATYPE(n), &LCASE, &UCASE), 'EXPRESSION')) {
        n = EVAL(n);
        if (~DIFFER(n)) { nreturn; }   // canonical :F(NRETURN) on EVAL-fail
    }
    OUTPUT = GT(xTrace, 3) && ('Reduce(' && t && ', ' && n && ')');
    if (GE(n, 1)) { c = ARRAY('1:' && n); }
    else          { c = ''; }
    i = n + 1;
    while (GT(i, 1)) {
        i = i - 1;
        c[i] = Pop('');
    }
    r = tree(t, '', n, c);
    Push(r);
    nreturn;
}
