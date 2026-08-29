/*------------------------------------- 1 nreturn_after_indirect_assign XFAIL */
// nreturn_after_indirect_assign.sc -- PROBE, minimal repro.
// A function that sets its own return-slot to .dummy, then performs an
// INDIRECT assignment ($name = expression), then nreturns -- the caller
// (in ordinary value context, r = f(...)) incorrectly receives the
// indirectly-assigned VALUE instead of .dummy's dereferenced (empty)
// value. This is the exact shape of beauty/match.inc's canonical `assign`
// helper. See postoffice task snocone-nreturn-after-indirect-assign-wrong-value.
function setter(name, expression) {
    setter = .dummy;
    $name = expression;
    nreturn;
}
r = setter('d', 'val');
OUTPUT = "[" r "]";
