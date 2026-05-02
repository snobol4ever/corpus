// stack.sc — Snocone port of stack.sno

struct link { next, value }
xTrace = 0;

function InitStack() { $'@S' = ''; return; }
function Push(x) {
    OUTPUT = GT(xTrace, 4) ('Push(' t(x) ')');
    $'@S' = link($'@S', x);
    if (IDENT(x)) { Push = .value($'@S'); nreturn; }
    else { Push = .dummy; nreturn; }
}
function Pop(var) {
    if (IDENT($'@S')) { freturn; }
    if (IDENT(var)) {
        Pop = value($'@S');
        OUTPUT = GT(xTrace, 4) ('Pop() = ' t(Pop));
        $'@S' = next($'@S');
        return;
    }
    Pop = .dummy;
    $var = value($'@S');
    OUTPUT = GT(xTrace, 4) ('Pop() = ' t($var));
    $'@S' = next($'@S');
    nreturn;
}
function Top() {
    if (IDENT($'@S')) { freturn; }
    Top = .value($'@S');
    OUTPUT = GT(xTrace, 4) ('Top() = ' t(Top));
    nreturn;
}
