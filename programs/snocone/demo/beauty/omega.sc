// omega.sc — Snocone port of omega.sno
//
// Canonical reference: corpus/programs/snobol4/beauty/omega.sno
//
// TV(lvl, pat, name)  — case-folded lowercase identifier-capture variant
// TW(lvl, pat, name)  — case-folded uppercase identifier-capture variant
// TX(lvl, pat, name)  — exact-match variant
// TY(lvl, name, pat)  — pattern with T8Trace at right edge
// TZ(lvl, name, pat)  — pattern with T8Trace at both edges
//
// All five build a source-text string `omega` and then `EVAL(omega)` to
// produce the resulting pattern.  The literal three-character word `"pat"`
// is embedded in the source text; EVAL resolves it back to the parameter
// `pat` of the enclosing function in scope.  Likewise `"@txOfs"`,
// `"$ tx"`, `"$ tz"` are source-text fragments that EVAL parses as
// pattern operators referencing the caller-scope variables.
//
// Two semantic gates per procedure:
//
//   * `LE(xTrace, 0)` — if tracing is OFF, TY/TZ produce a "thin"
//     instrumented pattern that just maxes out t8Max via the
//     @txOfs $ *assign trick.  TV/TW/TX have no thin path; they always
//     build the full omega expression.
//   * `EQ(doParseTree, FALSE/TRUE)` — TV/TW/TX choose between
//     bare `"pat"` and `"(pat ~ 'identifier')"`.  doParseTree is 0
//     (FALSE) or 1 (TRUE) per global.sc.
//
// Helper for the EQ-conditional source-string select: integer-test in
// SNOBOL4 succeeds (returns null) on equality, fails on inequality.
// In Snocone, the if/else form expresses the same selection.
//
// Notes on the port:
//   * `omega` is built up as a string; only EVAL turns it back into a
//     pattern.  So all the operators in the omega text — `~`, `$`, `*`,
//     `(`, `)`, `'identifier'`, `LEQ`, etc. — are SNOBOL4 source syntax
//     parsed at EVAL time, NOT Snocone source syntax interpreted at
//     omega-build time.  This is why the prior port substituting the
//     runtime value of `pat` was a bug: it broke EVAL's source-text
//     contract.
//   * EVAL failure returns null (Snocone EVAL prints an error to stderr
//     and produces null).  Canonical's `:S(RETURN)F(error)` pattern is
//     "succeed-and-return on success, GOTO error label on failure".
//     We translate failure as "fall through to freturn" so callers see
//     a clean failure rather than a transfer to a nonexistent label.

procedure TV(lvl, pat, name,   omega) {
    if (EQ(doParseTree, FALSE)) {
        omega = 'pat';
    } else {
        omega = "(pat ~ 'identifier')";
    }
    omega = omega && ' $ tx *LEQ(lwr(tx), "' && lwr(name) && '")';
    TV = TZ(lvl, name, EVAL(omega));
    if (DIFFER(TV)) { return; } else { freturn; }
}

procedure TW(lvl, pat, name,   omega) {
    if (EQ(doParseTree, FALSE)) {
        omega = 'pat';
    } else {
        omega = "(pat ~ 'identifier')";
    }
    omega = omega && " $ tx *LEQ(upr(tx), '" && upr(name) && "')";
    TW = TZ(lvl, name, EVAL(omega));
    if (DIFFER(TW)) { return; } else { freturn; }
}

procedure TX(lvl, pat, name,   omega) {
    if (EQ(doParseTree, FALSE)) {
        omega = 'pat';
    } else {
        omega = "(pat ~ 'identifier')";
    }
    omega = omega && " $ tx *LEQ(tx, '" && name && "')";
    TX = TZ(lvl, name, EVAL(omega));
    if (DIFFER(TX)) { return; } else { freturn; }
}

procedure TY(lvl, name, pat,   omega) {
    // Thin path: tracing off — only the txOfs/t8Max bookkeeping pattern.
    if (LE(xTrace, 0)) {
        TY = pat && @txOfs . *assign(.t8Max, *(GT(txOfs, t8Max) txOfs));
        return;
    }
    omega = "pat $ tz @txOfs $ *T8Trace(" && lvl && ", "
         && Qize(name && ': ') && " tz, txOfs)";
    TY = EVAL(omega);
    if (DIFFER(TY)) { return; } else { freturn; }
}

procedure TZ(lvl, name, pat,   omega) {
    if (LE(xTrace, 0)) {
        TZ = pat && @txOfs . *assign(.t8Max, *(GT(txOfs, t8Max) txOfs));
        return;
    }
    omega = "@txOfs $ *T8Trace(" && lvl && ", '?' " && Qize(name) && ", txOfs)"
         && " pat $ tz @txOfs $ *T8Trace(" && lvl && ", "
         && Qize(name && ': ') && " tz, txOfs)";
    TZ = EVAL(omega);
    if (DIFFER(TZ)) { return; } else { freturn; }
}
