// case.sc — case folding helpers, ported verbatim from beauty/case.sc.
//
// PARSER-SN-INFRA-6 — beauty-source-style port.  INFRA-5a fixed the
// synthetic-label collision so one-arg IDENT(str) is safe; INFRA-5b fixed
// the if-head pattern-match-with-replacement so the `if (str ? PAT = )`
// form inside icase's while loop now consumes str and captures the letter.
//
// Public API:
//   lwr(s)    — lower-case string
//   upr(s)    — upper-case string
//   cap(s)    — capitalize first char, lower the rest
//   icase(s)  — pattern that matches s case-insensitively
//
//---------------------------------------------------------------------------------------------------
// Lower case string: string = lwr(string)
function lwr(s) {
    lwr = REPLACE(s, &UCASE, &LCASE);
    return;
}
//---------------------------------------------------------------------------------------------------
// Upper case string: string = upr(string)
function upr(s) {
    upr = REPLACE(s, &LCASE, &UCASE);
    return;
}
//---------------------------------------------------------------------------------------------------
// Capitalize string: string = cap(string)
function cap(s) {
    if (~(cap = REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE) REPLACE(SUBSTR(s, 2), &UCASE, &LCASE)))
        error();
    return;
}
//---------------------------------------------------------------------------------------------------
// Create pattern for case insensitive string match:
// pattern = icase(string)
function icase(str, letter, character) {
    while (~IDENT(str)) {
        if (str ? (POS(0) ANY(&UCASE &LCASE) . letter) = )
            icase = icase (upr(letter) | lwr(letter));
        else {
            str ? (POS(0) LEN(1) . character) = ;
            icase = icase character;
        }
    }
    return;
}
