// semantic.sc — Snocone port of semantic.inc
// Depends: counter.sc (InitCounter/PushCounter/IncCounter/DecCounter/TopCounter/PopCounter)
// Semantic action patterns for use in parser pattern building.
// shift/reduce/pop omitted (use EVAL — dynamic, not needed for non-SR-pattern callers).

epsilon = '';

function nPush() { nPush = epsilon . *PushCounter(); return; }
function nInc()  { nInc  = epsilon . *IncCounter();  return; }
function nDec()  { nDec  = epsilon . *DecCounter();  return; }
function nTop()  { nTop  = TopCounter(); return; }
function nPop()  { nPop  = epsilon . *PopCounter();  return; }
