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
