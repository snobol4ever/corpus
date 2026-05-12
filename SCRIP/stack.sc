
struct link { next, value }

// InitStack
function InitStack() {
    $'@S' = ;
    return;
}

// Push
function Push(x) {
    OUTPUT = GT(xTrace, 4) 'Push(' t(x) ')';
    $'@S' = link($'@S', x);
    if (Push = IDENT(x) .value($'@S')) { nreturn; }
    Push = DIFFER(x) .dummy;
    nreturn;
}

// Pop
function Pop(var) {
    if (~DIFFER($'@S')) { freturn; }
    if (~IDENT(var)) { goto Pop1; }
    Pop = value($'@S');
    OUTPUT = GT(xTrace, 4) 'Pop() = ' t(Pop);
    $'@S' = next($'@S');
    return;
Pop1:
    Pop = .dummy;
    $var = value($'@S');
    OUTPUT = GT(xTrace, 4) 'Pop() = ' t($var);
    $'@S' = next($'@S');
    nreturn;
}

// Top
function Top() {
    if (~DIFFER($'@S')) { freturn; }
    Top = .value($'@S');
    OUTPUT = GT(xTrace, 4) 'Top() = ' t(Top);
    nreturn;
}
