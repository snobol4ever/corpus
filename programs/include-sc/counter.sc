// counter.sc — Snocone port of counter.inc
// A stack of counters. Global: $'#N' (link_counter chain).
// Also: link_tag stack for XML/HTML begin/end tags ($'@B', $'@E').
// xTrace must be set by caller (0 = no debug output).

struct link_counter { next, value }
struct link_tag { next, value }

procedure InitCounter() {
    $'#N' = '';
    return;
}

procedure PushCounter() {
    $'#N' = link_counter($'#N', 0);
    PushCounter = .dummy;
    nreturn;
}

procedure IncCounter() {
    value($'#N') = value($'#N') + 1;
    IncCounter = .dummy;
    nreturn;
}

procedure DecCounter() {
    value($'#N') = value($'#N') - 1;
    DecCounter = .dummy;
    nreturn;
}

procedure PopCounter() {
    if (DIFFER($'#N')) {
        $'#N' = next($'#N');
        PopCounter = .dummy;
        nreturn;
    } else {
        freturn;
    }
}

procedure TopCounter() {
    if (DIFFER($'#N')) {
        TopCounter = value($'#N');
        return;
    } else {
        freturn;
    }
}

// --- Tag stacks ---

procedure InitBegTag() {
    $'@B' = '';
    return;
}

procedure PushBegTag(t) {
    $'@B' = link_tag($'@B', upr(t));
    if (IDENT(t, '')) {
        PushBegTag = .value($'@B');
        nreturn;
    } else {
        PushBegTag = .dummy;
        nreturn;
    }
}

procedure PopBegTag() {
    if (DIFFER($'@B')) {
        $'@B' = next($'@B');
        PopBegTag = .dummy;
        nreturn;
    } else {
        freturn;
    }
}

procedure TopBegTag() {
    if (DIFFER($'@B')) {
        TopBegTag = value($'@B');
        return;
    } else {
        freturn;
    }
}

procedure InitEndTag() {
    $'@E' = '';
    return;
}

procedure PushEndTag(t) {
    $'@E' = link_tag($'@E', upr(t));
    if (IDENT(t, '')) {
        PushEndTag = .value($'@E');
        nreturn;
    } else {
        PushEndTag = .dummy;
        nreturn;
    }
}

procedure PopEndTag() {
    if (DIFFER($'@E')) {
        $'@E' = next($'@E');
        PopEndTag = .dummy;
        nreturn;
    } else {
        freturn;
    }
}

procedure TopEndTag() {
    if (DIFFER($'@E')) {
        TopEndTag = value($'@E');
        return;
    } else {
        freturn;
    }
}
