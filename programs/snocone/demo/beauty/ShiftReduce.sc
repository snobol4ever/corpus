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
//   detection. Snocone's `if (~(t = EVAL(t))) { nreturn; }` is the
//   direct port: the embedded assignment fails iff EVAL fails (per
//   SPITBOL's "if a function fails, the statement fails" rule, Manual
//   Ch.2 p.33), and ~ negates failure to success, firing the nreturn.
//   Verified scrip-side: matches SPITBOL `:F(NRETURN)` semantics
//   exactly. The earlier `t = EVAL(t); if (~DIFFER(t))` form was
//   wrong — when EVAL fails, the assignment is silently skipped and
//   t keeps its prior EXPRESSION value (non-null), so ~DIFFER fails
//   to fire nreturn, and execution falls through to GE(n,1) with
//   n still EXPRESSION → Error 1. SB-6.D root cause.

function Shift(t, v, s) {
    v ? (POS(0) whitespace) = ;
    s = tree(t, v, '', '');
    Push(s);
    OUTPUT = GT(xTrace, 3) ('Shift(' t ', ' v ')');
    if (IDENT(v)) { Shift = .v(s); nreturn; }
    else { Shift = .dummy; nreturn; }
}

function Reduce(t, n, c, i, r) {
    Reduce = .dummy;
    if (IDENT(REPLACE(DATATYPE(t), &LCASE, &UCASE), 'EXPRESSION')) {
        if (~(t = EVAL(t))) { nreturn; } // canonical :F(NRETURN) on EVAL-fail
    }
    if (IDENT(REPLACE(DATATYPE(n), &LCASE, &UCASE), 'EXPRESSION')) {
        if (~(n = EVAL(n))) { nreturn; } // canonical :F(NRETURN) on EVAL-fail
    }
    OUTPUT = GT(xTrace, 3) ('Reduce(' t ', ' n ')');
    if (GE(n, 1)) { c = ARRAY('1:' n); }
    else { c = ''; }
    i = n + 1;
    while (GT(i, 1)) {
        i = i - 1;
        c[i] = Pop();
    }
    r = tree(t, '', n, c);
    Push(r);
    nreturn;
}
