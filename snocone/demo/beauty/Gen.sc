//---------------------------------------------------------------------------------------------------
// Routines to manage generated output. Since SNOBOL4 naturally writes one line at a time,
// a way is needed to buffer up the output until a newline character is reached, and a way
// to automatically handle the indention of each line.
//
// IncLevel(delta) -- Increment indention level by delta
// DecLevel(delta) -- Decrement indention level by delta
// SetLevel(level) -- Set indention level
// GetLevel()      -- Get current indention level
//
// Gen(string) -- Generate string
// GenTab(integer) -- Generate tab (spaces) to specified or current margin level
// GenSetCont(character) -- Set continue character and begin with 1st line.
//
// Globals:
//    $'$B' -- buffer
//    $'$C' -- continuation character
//    $'$X' -- marks the spot for $'$C'
//    $'#L' -- indention level
//---------------------------------------------------------------------------------------------------
function IncLevel(delta) {
    IncLevel = .dummy;
    delta = IDENT(delta) 2;
    $'#L' = $'#L' + delta;
    nreturn;
}
//---------------------------------------------------------------------------------------------------
function DecLevel(delta) {
    DecLevel = .dummy;
    delta = IDENT(delta) 2;
    $'#L' = $'#L' - delta;
    nreturn;
}
//---------------------------------------------------------------------------------------------------
function SetLevel(level) {
    SetLevel = .dummy;
    $'#L' = level;
    nreturn;
}
//---------------------------------------------------------------------------------------------------
function GetLevel() {
    GetLevel = $'#L';
    return;
}
//---------------------------------------------------------------------------------------------------
indent = DUPL(' ', 120);
//---------------------------------------------------------------------------------------------------
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
//---------------------------------------------------------------------------------------------------
function GenTab(pos) {
    GenTab = .dummy;
    pos = IDENT(pos) $'#L';
    if (~($'$B' = $'$B' ' ' DUPL(' ', pos - SIZE($'$B') - 1)))
        $'$B' = $'$B' ' ';
    nreturn;
}
//---------------------------------------------------------------------------------------------------
function GenSetCont(cont) {
    GenSetCont = .dummy;
    $'$X' = ;
    $'$C' = cont;
    nreturn;
}
