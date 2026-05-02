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
        if (str ? (POS(0) ANY(&UCASE &LCASE) . letter) = ) {
            icase = icase (upr(letter) | lwr(letter));
        } else {
            str ? (POS(0) LEN(1) . character) = ;
            icase = icase character;
        }
    }
    return;
}
