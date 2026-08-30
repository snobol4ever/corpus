// driver.sc — test driver for case.sc (Snocone)
// Tests lwr, upr, cap, icase from corpus/programs/snocone/demo/beauty/case.sc

function lwr(s) {
    lwr = REPLACE(s, &UCASE, &LCASE);
    return;
}

function upr(s) {
    upr = REPLACE(s, &LCASE, &UCASE);
    return;
}

function cap(s) {
    cap = REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE) REPLACE(SUBSTR(s, 2), &UCASE, &LCASE);
    if (DIFFER(cap)) { return; }
    error();
}

function icase(str, letter, character) {
    if (IDENT(str)) { return; }
    while (DIFFER(str)) {
        letter = '';
        str ? (POS(0) ANY(&UCASE &LCASE) . letter) = ;
        if (DIFFER(letter)) {
            icase = icase (upr(letter) | lwr(letter));
        } else {
            character = '';
            str ? (POS(0) LEN(1) . character) = ;
            icase = icase character;
        }
    }
    return;
}

&STLIMIT = 1000000;

// 1: lwr basic
if (IDENT(lwr('HELLO'), 'hello')) { OUTPUT = 'PASS: 1 lwr basic'; }
else { OUTPUT = 'FAIL: 1 lwr basic got=' lwr('HELLO'); }

// 2: lwr mixed
if (IDENT(lwr('HeLLo'), 'hello')) { OUTPUT = 'PASS: 2 lwr mixed'; }
else { OUTPUT = 'FAIL: 2 lwr mixed'; }

// 3: lwr already lower
if (IDENT(lwr('hello'), 'hello')) { OUTPUT = 'PASS: 3 lwr already lower'; }
else { OUTPUT = 'FAIL: 3 lwr already lower'; }

// 4: upr basic
if (IDENT(upr('hello'), 'HELLO')) { OUTPUT = 'PASS: 4 upr basic'; }
else { OUTPUT = 'FAIL: 4 upr basic'; }

// 5: upr mixed
if (IDENT(upr('HeLLo'), 'HELLO')) { OUTPUT = 'PASS: 5 upr mixed'; }
else { OUTPUT = 'FAIL: 5 upr mixed'; }

// 6: cap basic
if (IDENT(cap('hello'), 'Hello')) { OUTPUT = 'PASS: 6 cap basic'; }
else { OUTPUT = 'FAIL: 6 cap basic got=' cap('hello'); }

// 7: cap from upper
if (IDENT(cap('HELLO'), 'Hello')) { OUTPUT = 'PASS: 7 cap from upper'; }
else { OUTPUT = 'FAIL: 7 cap from upper'; }

// 8: cap mixed
if (IDENT(cap('hELLo'), 'Hello')) { OUTPUT = 'PASS: 8 cap mixed'; }
else { OUTPUT = 'FAIL: 8 cap mixed'; }

// 9: icase null returns null
r = icase('');
if (IDENT(r, '')) { OUTPUT = 'PASS: 9 icase null'; }
else { OUTPUT = 'FAIL: 9 icase null'; }

// 10: icase pattern matches both cases
p = icase('Hi');
if ('hi' ? (p)) { OUTPUT = 'PASS: 10 icase matches lower'; }
else { OUTPUT = 'FAIL: 10 icase matches lower'; }

// 11: icase pattern matches upper
if ('HI' ? (p)) { OUTPUT = 'PASS: 11 icase matches upper'; }
else { OUTPUT = 'FAIL: 11 icase matches upper'; }

// 12: icase pattern matches mixed
if ('Hi' ? (p)) { OUTPUT = 'PASS: 12 icase matches mixed'; }
else { OUTPUT = 'FAIL: 12 icase matches mixed'; }
