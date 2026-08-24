//---------------------------------------------------------------------------------------------------
// A general purpose stack. To be used directly or with conditional assignment within pattern
// matching. This stack holds the values from the pattern match which were produced as a
// result of either a Shift() or a Reduce() operation.
// Global: $'@S' -- link()
//---------------------------------------------------------------------------------------------------
struct link { next, value }

function InitStack() {
    $'@S' = ;
    return;
}
//---------------------------------------------------------------------------------------------------
function Push(x) {
    OUTPUT = GT(xTrace, 4) 'Push(' t(x) ')';
    $'@S' = link($'@S', x);
    if (Push = IDENT(x) .value($'@S')) nreturn;
    Push = DIFFER(x) .dummy;
    nreturn;
}
//---------------------------------------------------------------------------------------------------
function Pop(var) {
    if (IDENT($'@S')) freturn;
    if (IDENT(var)) {
        Pop = value($'@S');
        OUTPUT = GT(xTrace, 4) 'Pop() = ' t(Pop);
        $'@S' = next($'@S');
        return;
    }
    Pop = .dummy;
    $var = value($'@S');
    OUTPUT = GT(xTrace, 4) 'Pop() = ' t($var);
    $'@S' = next($'@S');
    nreturn;
}
//---------------------------------------------------------------------------------------------------
function Top() {
    if (IDENT($'@S')) freturn;
    Top = .value($'@S');
    OUTPUT = GT(xTrace, 4) 'Top() = ' t(Top);
    nreturn;
}
