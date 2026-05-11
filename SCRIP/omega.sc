// omega.sc — pattern-construction tracing wrappers, ported verbatim from
// beauty/omega.sc.
//
// PARSER-SN-INFRA-9 — Snocone-hosted runtime helper.
//
// Five functions (TV, TW, TX, TY, TZ) that wrap a parser pattern in
// runtime trace hooks (@txOfs $ *T8Trace(...)) and a max-position
// recorder.  When xTrace = 0 (the default in global.sc), TY and TZ
// return the bare pattern wrapped only with the max-position recorder
// (no T8Trace hooks); nothing hits OUTPUT.  TV/TW/TX always EVAL their
// constructed strings (case-folding identifier checks against name)
// and so always go through TZ for the trace-hook layer.
//
// Globals consumed (initialised in global.sc; drivers may override):
//   xTrace      pattern-build trace verbosity; 0 = silent
//   doParseTree FALSE/TRUE flag selecting bare 'pat' vs '(pat ~ 'identifier')'
//   doDebug     read transitively via T8Trace (INFRA-8)
//   t8Max       updated by the inline *assign at match time
//   txOfs       written by the @txOfs cursor capture at match time
//
// Dependencies: INFRA-4 (*assign), INFRA-6 (case.sc lwr/upr),
//               INFRA-7 (Qize), INFRA-8 (trace.sc T8Trace).
//               Critical: relies on INFRA-7a (inline *assign in
//               pattern body) -- without it, the max-position
//               recorder silently fails to update t8Max.

//---------------------------------------------------------------------------------------------------
function TV(lvl, pat, name, omega) {
    omega = EQ(doParseTree, FALSE) "pat";
    omega = EQ(doParseTree, TRUE)  "(pat ~ 'identifier')";
    omega = omega ' $ tx *LEQ(lwr(tx), "' lwr(name) '")';
    if (~(TV = TZ(lvl, name, EVAL(omega)))) error();   // Conflict TY also used here
    return;
}
//---------------------------------------------------------------------------------------------------
function TW(lvl, pat, name, omega) {
    omega = EQ(doParseTree, FALSE) "pat";
    omega = EQ(doParseTree, TRUE)  "(pat ~ 'identifier')";
    omega = omega " $ tx *LEQ(upr(tx), '" upr(name) "')";
    if (~(TW = TZ(lvl, name, EVAL(omega)))) error();   // Conflict TY also used here
    return;
}
//---------------------------------------------------------------------------------------------------
function TX(lvl, pat, name, omega) {
    omega = EQ(doParseTree, FALSE) "pat";
    omega = EQ(doParseTree, TRUE)  "(pat ~ 'identifier')";
    omega = omega " $ tx *LEQ(tx, '" name "')";
    if (~(TX = TZ(lvl, name, EVAL(omega)))) error();   // Conflict TY also used here
    return;
}
//---------------------------------------------------------------------------------------------------
function TY(lvl, name, pat, omega) {
    if (TY = LE(xTrace, 0) pat
                @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs)))
        return;
    omega = "pat $ tz"
            " @txOfs"
            " $ *T8Trace(" lvl ", " Qize(name ': ') " tz, txOfs)";
    if (~(TY = EVAL(omega))) error();
    return;
}
//---------------------------------------------------------------------------------------------------
//          Instrument parser patterns for tracing:
//          TZ(integer, string, pattern)
function TZ(lvl, name, pat, omega) {
    if (TZ = LE(xTrace, 0) pat
                @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs)))
        return;
    omega = "@txOfs $ *T8Trace(" lvl ", '?' " Qize(name) ", txOfs)"
            " pat $ tz"
            " @txOfs"
            " $ *T8Trace(" lvl ", " Qize(name ': ') " tz, txOfs)";
    if (~(TZ = EVAL(omega))) error();
    return;
}
