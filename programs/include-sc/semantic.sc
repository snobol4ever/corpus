// semantic.sc — Snocone port of semantic.inc
// Depends: counter.sc (InitCounter/PushCounter/IncCounter/DecCounter/TopCounter/PopCounter)
// Semantic action patterns for use in parser pattern building.
// shift/reduce/pop omitted (use EVAL — dynamic, not needed for non-SR-pattern callers).

epsilon = '';

procedure nPush() { nPush = epsilon . *PushCounter(); return; }
procedure nInc()  { nInc  = epsilon . *IncCounter();  return; }
procedure nDec()  { nDec  = epsilon . *DecCounter();  return; }
procedure nTop()  { nTop  = TopCounter(); return; }
procedure nPop()  { nPop  = epsilon . *PopCounter();  return; }
