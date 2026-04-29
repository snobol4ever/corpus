// case.sc — Snocone port of case.sno

procedure lwr(s) {
    lwr = REPLACE(s, &UCASE, &LCASE);
    return;
}

procedure upr(s) {
    upr = REPLACE(s, &LCASE, &UCASE);
    return;
}

procedure cap(s) {
    cap = REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE) && REPLACE(SUBSTR(s, 2), &UCASE, &LCASE);
    return;
}

procedure icase(str,   letter, character) {
    if (~DIFFER(str)) { return; }
    while (DIFFER(str)) {
        letter = '';
        str ? (POS(0) && ANY(&UCASE && &LCASE) . letter) = ;
        if (DIFFER(letter)) {
            icase = icase && (upr(letter) | lwr(letter));
        } else {
            character = '';
            str ? (POS(0) && LEN(1) . character) = ;
            icase = icase && character;
        }
    }
    return;
}
