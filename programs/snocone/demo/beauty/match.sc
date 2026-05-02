//---------------------------------------------------------------------------------------------------
// Pattern matching during pattern matching:
// pattern $ variable $ *match(variable, pattern)
// pattern $ variable $ *notmatch(variable, pattern)
//---------------------------------------------------------------------------------------------------
function match(subject, pattern) {
    match = .dummy;
    if (subject ? pattern) nreturn;
    else freturn;
}
//---------------------------------------------------------------------------------------------------
function notmatch(subject, pattern) {
    notmatch = .dummy;
    if (subject ? pattern) freturn;
    else nreturn;
}
