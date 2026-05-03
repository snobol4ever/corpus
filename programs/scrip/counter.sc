// counter.sc — Stack of integer counters, Snocone port of counter.inc.
// Global: $'#N' (link_counter chain).
// Used by semantic.sc for nPush/nInc/nDec/nTop/nPop pattern actions.

struct link_counter { next, value }

function InitCounter() {
    $'#N' = '';
    return;
}

function PushCounter() {
    $'#N' = link_counter($'#N', 0);
    PushCounter = .dummy;
    nreturn;
}

function IncCounter() {
    value($'#N') = value($'#N') + 1;
    IncCounter = .dummy;
    nreturn;
}

function DecCounter() {
    value($'#N') = value($'#N') - 1;
    DecCounter = .dummy;
    nreturn;
}

function PopCounter() {
    if (DIFFER($'#N')) {
        $'#N' = next($'#N');
        PopCounter = .dummy;
        nreturn;
    } else {
        freturn;
    }
}

function TopCounter() {
    if (DIFFER($'#N')) {
        TopCounter = value($'#N');
        return;
    } else {
        freturn;
    }
}
