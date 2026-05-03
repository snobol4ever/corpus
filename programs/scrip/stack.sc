// stack.sc — General-purpose value stack, Snocone port of stack.inc.
// Global: $'@S' (link chain).
// Pop(var): if var='' returns value as function result (return path);
//           if var≠'' assigns to $var and nreturns .dummy.

struct link { next, value }

function InitStack() {
    $'@S' = '';
    return;
}

function Push(x) {
    $'@S' = link($'@S', x);
    if (IDENT(x, '')) {
        Push = .value($'@S');
        nreturn;
    } else {
        Push = .dummy;
        nreturn;
    }
}

function Pop(var) {
    if (~DIFFER($'@S')) { freturn; }
    if (IDENT(var, '')) {
        Pop = value($'@S');
        $'@S' = next($'@S');
        return;
    } else {
        $var = value($'@S');
        $'@S' = next($'@S');
        Pop = .dummy;
        nreturn;
    }
}

function Top() {
    if (~DIFFER($'@S')) { freturn; }
    Top = .value($'@S');
    nreturn;
}
