// driver.sc — test driver for Qize.sc (Snocone)
// Tests SQize, DQize, SqlSQize subset of Qize.inc

function SQize(str, part) {
    if (IDENT(str)) { return; }
    while (DIFFER(str)) {
        if (DIFFER(SQize)) { SQize = SQize ' '; }
        part = '';
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SQize = SQize "'" part "'" ' "' "'" '"';
        } else {
            part = str;
            SQize = SQize "'" part "'";
            str = '';
        }
    }
    return;
}

function DQize(str, part) {
    if (IDENT(str)) { return; }
    while (DIFFER(str)) {
        if (DIFFER(DQize)) { DQize = DQize ' '; }
        part = '';
        if (str ? (POS(0) BREAK('"') . part '"') = ) {
            DQize = DQize '"' part '"' " '" '"' "'";
        } else {
            part = str;
            DQize = DQize '"' part '"';
            str = '';
        }
    }
    return;
}

function SqlSQize(str, part) {
    SqlSQize = '';
    while (DIFFER(str)) {
        part = '';
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SqlSQize = SqlSQize part "''";
        } else {
            SqlSQize = SqlSQize str;
            str = '';
        }
    }
    return;
}

&STLIMIT = 1000000;

// 1: SQize basic
if (IDENT(SQize('hello'), "'hello'")) { OUTPUT = 'PASS: 1 SQize basic'; }
else { OUTPUT = 'FAIL: 1 SQize basic got=' SQize('hello'); }

// 2: SQize empty returns null
r = SQize('');
if (IDENT(r, '')) { OUTPUT = 'PASS: 2 SQize empty'; }
else { OUTPUT = 'FAIL: 2 SQize empty'; }

// 3: DQize basic
if (IDENT(DQize('hello'), '"hello"')) { OUTPUT = 'PASS: 3 DQize basic'; }
else { OUTPUT = 'FAIL: 3 DQize basic'; }

// 4: SqlSQize basic
if (IDENT(SqlSQize('hello'), 'hello')) { OUTPUT = 'PASS: 4 SqlSQize basic'; }
else { OUTPUT = 'FAIL: 4 SqlSQize basic got=' SqlSQize('hello'); }

// 5: SqlSQize doubles single quotes
if (IDENT(SqlSQize("it's"), "it''s")) { OUTPUT = 'PASS: 5 SqlSQize doubles quote'; }
else { OUTPUT = 'FAIL: 5 SqlSQize doubles quote got=' SqlSQize("it's"); }
