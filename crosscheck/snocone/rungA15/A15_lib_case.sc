// A15_lib_case.sc — case conversion: lwr, upr, cap, icase pattern
// Snocone translation of crosscheck/library/test_case.sno + lib/case.sno
&TRIM = 1;

procedure lwr(s) {
    return REPLACE(s, &UCASE, &LCASE);
}
procedure upr(s) {
    return REPLACE(s, &LCASE, &UCASE);
}
procedure cap(s) {
    return REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE) && REPLACE(SUBSTR(s, 2), &UCASE, &LCASE);
}
// icase(subject, pattern): succeed if subject matches pattern case-insensitively
procedure icase(subject, pat) {
    if (IDENT(lwr(subject), lwr(pat))) { return; } else { freturn; }
}

OUTPUT = lwr('HELLO WORLD');
OUTPUT = upr('hello world');
OUTPUT = cap('hELLO wORLD');

if (icase('Hello', 'hello')) {
    OUTPUT = 'ok: icase hello';
}
if (icase('HELLO', 'hello')) {
    OUTPUT = 'ok: icase HELLO';
}
if (icase('HeLLo', 'hello')) {
    OUTPUT = 'ok: icase HeLLo';
}
if (icase('world', 'hello')) {
    OUTPUT = 'fail: icase matched wrong string';
} else {
    OUTPUT = 'no match ok';
}
