#!/usr/bin/env python3
# projog_gen.py -- the grader 2026-11-17: Projog's Prolog test scripts (src/test/prolog/**.pl, each a program whose queries are comment lines
# "%?- GOAL" followed by Projog's own expected answers) become programs the oracle can answer. Each output program is the script's text unchanged,
# then a driver of ours: one clause per query, run in source order after the load, that prints the query, then each solution's bindings
# (writeq, at most 10 solutions, one "yes" line after each), "no" when it has none left, or "error(F)" with the error's formal term only.
# The answers are cut from the oracle (swipl), never taken from Projog's comments.
#   python3 -I projog_gen.py SRC_DIR OUT_DIR      SRC_DIR: projog/src/test/prolog
import re, sys
from pathlib import Path
src, out = Path(sys.argv[1]), Path(sys.argv[2])
out.mkdir(parents=True, exist_ok=True)
VAR = re.compile(r"\b([A-Z][A-Za-z0-9_]*)\b")
def strip_quoted(s):
    return re.sub(r"'(?:[^'\\]|\\.|'')*'|\"(?:[^\"\\]|\\.)*\"|0'.", " ", s)
def names(q):
    seen = []
    for v in VAR.findall(strip_quoted(q)):
        if v not in seen: seen.append(v)
    return seen
n_files = n_q = 0
for f in sorted(src.rglob("*.pl")):
    text = f.read_text(encoding="utf-8", errors="surrogateescape")
    qs = [l[3:].strip() for l in text.splitlines() if l.startswith("%?-")]
    if not qs:
        continue
    rel = f.relative_to(src).with_suffix("")
    name = "projog_" + "_".join(rel.parts).replace("-", "_")
    d = ["", "% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----",
         ":- dynamic('$pj_n'/1).", "'$pj_n'(0).",
         "'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.",
         "'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).",
         "'$pj_err'(error(F, _)) :- !, write(error(F)), nl.",
         "'$pj_err'(E) :- write(thrown(E)), nl."]
    for i, q in enumerate(qs, 1):
        vs = names(q)
        shows = "".join(f" write('{v} = '), writeq({v}), nl," for v in vs)
        qa = q.replace("\\", "\\\\").replace("'", "\\'")
        d.append(f"'$pj_q'({i}) :- write('?- {qa}'), nl, '$pj_reset', catch(( ( {q} ),{shows} write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.")
        d.append(f"'$pj_q'({i}).")
        n_q += 1
    d.append(f"'$pj_main' :- between(1, {len(qs)}, I), '$pj_q'(I), fail.")
    d.append("'$pj_main'.")
    d.append(":- initialization('$pj_main').")
    head = ":- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line\n" if rel.parts[0] == "clp" else ""
    (out / f"{name}.pl").write_text(head + text.rstrip("\n") + "\n" + "\n".join(d) + "\n", encoding="utf-8", errors="surrogateescape")
    n_files += 1
print(f"PROJOG_GEN files={n_files} queries={n_q} out={out}")
