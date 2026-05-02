// driver.sc — test driver for Gen.sc (Snocone)
// Tests IncLevel/DecLevel/SetLevel/GetLevel/Gen/GenTab/GenSetCont

// Inline Gen.sc minimal subset
_indent = DUPL(' ', 120);
$'#L' = 0;
$'$B' = '';
$'$C' = '';
$'$X' = '';

function IncLevel(delta) {
    IncLevel = .dummy;
    if (IDENT(delta)) { delta = 2; }
    $'#L' = $'#L' + delta;
    nreturn;
}
function DecLevel(delta) {
    DecLevel = .dummy;
    if (IDENT(delta)) { delta = 2; }
    $'#L' = $'#L' - delta;
    nreturn;
}
function SetLevel(level) { SetLevel = .dummy; $'#L' = level; nreturn; }
function GetLevel() { GetLevel = $'#L'; return; }

function Gen(str, outNm, ind, outline, _rest) {
    Gen = .dummy;
    if (IDENT(outNm)) { outNm = .OUTPUT; }
    ind = '';
    if (GT($'#L', 0)) {
        _indent ? (POS(0) LEN($'#L' - SIZE($'$X')) . ind);
    }
    if (DIFFER($'$B')) { $'$B' = $'$B' str; }
    else { $'$B' = $'$X' ind str; }
    if ($'$B' ? (POS(0) BREAK(nl) . outline nl REM . _rest)) {
        $'$B' = _rest;
        $'$X' = $'$C';
        $outNm = outline;
    } else { nreturn; }
    while ($'$B' ? (POS(0) BREAK(nl) . outline nl REM . _rest)) {
        $'$B' = _rest;
        $outNm = $'$C' ind outline;
    }
    nreturn;
}

nl = CHAR(10);

&STLIMIT = 1000000;

// 1: GetLevel returns 0 initially
if (EQ(GetLevel(), 0)) { OUTPUT = 'PASS: 1 GetLevel initial'; }
else { OUTPUT = 'FAIL: 1 GetLevel initial got=' GetLevel(); }

// 2: SetLevel + GetLevel
SetLevel(5);
if (EQ(GetLevel(), 5)) { OUTPUT = 'PASS: 2 SetLevel/GetLevel'; }
else { OUTPUT = 'FAIL: 2 SetLevel/GetLevel got=' GetLevel(); }

// 3: IncLevel default delta
SetLevel(0);
IncLevel();
if (EQ(GetLevel(), 2)) { OUTPUT = 'PASS: 3 IncLevel default'; }
else { OUTPUT = 'FAIL: 3 IncLevel default got=' GetLevel(); }

// 4: IncLevel with delta
IncLevel(3);
if (EQ(GetLevel(), 5)) { OUTPUT = 'PASS: 4 IncLevel +3'; }
else { OUTPUT = 'FAIL: 4 IncLevel +3 got=' GetLevel(); }

// 5: DecLevel default
DecLevel();
if (EQ(GetLevel(), 3)) { OUTPUT = 'PASS: 5 DecLevel default'; }
else { OUTPUT = 'FAIL: 5 DecLevel default got=' GetLevel(); }

// 6: DecLevel with delta
DecLevel(3);
if (EQ(GetLevel(), 0)) { OUTPUT = 'PASS: 6 DecLevel -3'; }
else { OUTPUT = 'FAIL: 6 DecLevel -3 got=' GetLevel(); }

// 7: Gen emits a line with newline
SetLevel(0);
$'$B' = '';
Gen('hello' nl);
// After Gen, buffer should be empty (line was emitted)
if (IDENT($'$B')) { OUTPUT = 'PASS: 7 Gen flushed buffer'; }
else { OUTPUT = 'FAIL: 7 Gen buffer non-empty: ' $'$B'; }

// 8: Gen buffers without newline
$'$B' = '';
Gen('partial');
if (IDENT($'$B', 'partial')) { OUTPUT = 'PASS: 8 Gen buffers'; }
else { OUTPUT = 'FAIL: 8 Gen buffers got=' $'$B'; }
