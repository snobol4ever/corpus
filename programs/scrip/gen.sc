// gen.sc — Snocone port of beauty/Gen.sc: buffered output with indentation.
//
// Manages generated output.  Since SNOBOL4 naturally writes one line at a time,
// this buffers up the output until a newline character is reached, and handles
// indentation of each line automatically.
//
// API:
//   IncLevel(delta)    — Increment indentation level by delta (default 2)
//   DecLevel(delta)    — Decrement indentation level by delta (default 2)
//   SetLevel(level)    — Set indentation level
//   GetLevel()         — Return current indentation level
//   Gen(str, outNm)    — Generate string (flush on nl); outNm defaults to .OUTPUT
//   GenTab(pos)        — Generate spaces to specified or current margin level
//   GenSetCont(cont)   — Set continuation character and begin first line
//
// Globals:
//   $'$B' — line buffer
//   $'$C' — continuation character
//   $'$X' — marks the spot for $'$C'
//   $'#L' — indentation level
//
// Ported from corpus/programs/snocone/demo/beauty/Gen.sc by PARSER-SC-INFRA-1.
// No behaviour change from the beauty original — compatible with TDump.sc upgrade.

function IncLevel(delta) {
    IncLevel = .dummy;
    delta = IDENT(delta) 2;
    $'#L' = $'#L' + delta;
    nreturn;
}

function DecLevel(delta) {
    DecLevel = .dummy;
    delta = IDENT(delta) 2;
    $'#L' = $'#L' - delta;
    nreturn;
}

function SetLevel(level) {
    SetLevel = .dummy;
    $'#L' = level;
    nreturn;
}

function GetLevel() {
    GetLevel = $'#L';
    return;
}

indent = DUPL(' ', 120);

function Gen(str, outNm, ind, outline) {
    Gen = .dummy;
    outNm = IDENT(outNm) .OUTPUT;
    indent ? (GT($'#L', 0) LEN($'#L' - SIZE($'$X')) . ind);
    $'$B' = DIFFER($'$B') $'$B' str;
    $'$B' = IDENT($'$B') $'$X' ind str;
    if (~($'$B' ? (BREAK(nl) . outline nl REM . $'$B'))) nreturn;
    $'$X' = $'$C';
    $outNm = outline;
    while ($'$B' ? (BREAK(nl) . outline nl REM . $'$B'))
        $outNm = $'$C' ind outline;
    nreturn;
}

function GenTab(pos) {
    GenTab = .dummy;
    pos = IDENT(pos) $'#L';
    if (~($'$B' = $'$B' ' ' DUPL(' ', pos - SIZE($'$B') - 1)))
        $'$B' = $'$B' ' ';
    nreturn;
}

function GenSetCont(cont) {
    GenSetCont = .dummy;
    $'$X' = ;
    $'$C' = cont;
    nreturn;
}
