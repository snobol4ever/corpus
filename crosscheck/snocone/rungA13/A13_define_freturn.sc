// A13_define_freturn.sc — function fails via freturn, caller handles :F
procedure ispos(x) {
    if (GT(x, 0)) { return; } else { freturn; }
}
if (ispos(5)) {
    OUTPUT = 'positive';
} else {
    OUTPUT = 'wrong';
}
if (ispos(-3)) {
    OUTPUT = 'wrong';
} else {
    OUTPUT = 'not positive';
}
