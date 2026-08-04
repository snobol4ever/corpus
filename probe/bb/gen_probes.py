#!/usr/bin/env python3
"""gen_probes.py -- emit the BB PROBE MATRIX.

Design law (inherited from bb_witness_ladder.sh): consecutive rows differ by
exactly ONE variable, so a failing row is bracketed by its passing neighbours.
Every probe PRINTS -- an outcome line at minimum -- because a probe that emits
nothing cannot distinguish "right" from "crashed before it got there".
"""
import os, sys

OUT = sys.argv[1] if len(sys.argv) > 1 else "probes"
os.makedirs(OUT, exist_ok=True)

# (id, family, desc, setup[list], pattern, post[list])
P = []
def p(i, fam, desc, subj, pat, setup=(), post=()):
    P.append((i, fam, desc, subj, pat, list(setup), list(post)))

# ============================ FAMILY L -- leaves & SEQUENCE, no ARBNO/ALT ====
p("L01","L","bare leaf, no capture",                 "abcd", "LEN(2)")
p("L02","L","bare leaf . OUTPUT",                    "abcd", "LEN(2) . OUTPUT")
p("L03","L","bare leaf $ OUTPUT",                    "abcd", "LEN(2) $ OUTPUT")
p("L04","L","SEQ2, no capture",                      "abcd", "LEN(2) LEN(2)")
p("L05","L","SEQ2, . on member 1",                   "abcd", "LEN(2) . OUTPUT LEN(2)")
p("L06","L","SEQ2, $ on member 1",                   "abcd", "LEN(2) $ OUTPUT LEN(2)")
p("L07","L","SEQ2, . on member 2",                   "abcd", "LEN(2) LEN(2) . OUTPUT")
p("L08","L","SEQ2, . on BOTH members",               "abcd", "LEN(2) . OUTPUT LEN(2) . OUTPUT")
p("L09","L","SEQ3 anchored, no capture",             "abcd", "POS(0) LEN(4) RPOS(0)")
p("L10","L","SEQ3 anchored, OUTER . OUTPUT",         "abcd", "(POS(0) LEN(4) RPOS(0)) . OUTPUT")
p("L11","L","SEQ3 anchored, OUTER $ OUTPUT",         "abcd", "(POS(0) LEN(4) RPOS(0)) $ OUTPUT")
p("L12","L","SEQ3 anchored, INNER member capture",   "abcd", "POS(0) LEN(4) . OUTPUT RPOS(0)")
p("L13","L","NESTED capture: inner . A, outer . B",  "abcd", "((LEN(2) . A) LEN(2)) . B",
   ["A = '<unset>'","B = '<unset>'"], ["OUTPUT = 'A=' A","OUTPUT = 'B=' B"])
p("L14","L","NESTED capture, both $",                "abcd", "((LEN(2) $ A) LEN(2)) $ B",
   ["A = '<unset>'","B = '<unset>'"], ["OUTPUT = 'A=' A","OUTPUT = 'B=' B"])
p("L15","L","@ cursor capture, three positions",     "abcd", "@P0 LEN(2) @P1 LEN(2) @P2",
   ["P0 = '?'","P1 = '?'","P2 = '?'"], ["OUTPUT = 'P=' P0 ',' P1 ',' P2"])
p("L16","L","FAIL: $ fires anyway (immediate)",      "abcd", "LEN(2) $ OUTPUT 'ZZ'")
p("L17","L","FAIL: . does NOT fire (conditional)",   "abcd", "LEN(2) . W 'ZZ'",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("L18","L","FAIL then RETRY: unanchored scan, $",   "abZd", "LEN(2) $ OUTPUT 'Z'")
p("L19","L","SPAN leaf (variable extent) . OUTPUT",  "aabbc","SPAN('ab') . OUTPUT")
p("L20","L","BREAK leaf . OUTPUT",                   "abcXd","BREAK('X') . OUTPUT")

# ============================ FAMILY A -- ALTERNATE =========================
p("A01","A","ALT2 no backtrack, no capture",         "abcd", "POS(0) ('ab' | 'xy')")
p("A02","A","ALT2 . on whole alternation",           "abcd", "POS(0) ('ab' | 'xy') . OUTPUT")
p("A03","A","ALT2 $ on whole alternation",           "abcd", "POS(0) ('ab' | 'xy') $ OUTPUT")
p("A04","A","ALT2 arm2 wins (arm1 fails first)",     "xycd", "POS(0) ('ab' | 'xy') $ OUTPUT")
p("A05","A","ALT3 capture on ONE arm only",          "xycd", "POS(0) ('ab' | 'xy' . W | 'pq')",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("A06","A","ALT3 capture INSIDE every arm",         "xycd", "POS(0) ('ab' . W | 'xy' . W | 'pq' . W)",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("A07","A","ALT BACKTRACK: arm1 must resume",       "AB",   "POS(0) ('AB' | 'A' | LEN(2)) $ OUTPUT 'B' RPOS(0)")
p("A08","A","ALT BACKTRACK: arm2 must resume",       "AXB",  "POS(0) ('AB' | 'A' | LEN(2)) $ OUTPUT 'B' RPOS(0)")
p("A09","A","ALT BACKTRACK: same site, arm3 resume", "AXYB", "POS(0) ('AB' | 'A' | LEN(2) | LEN(3)) $ OUTPUT 'B' RPOS(0)")
p("A10","A","ALT exhausts entirely, $ trace",        "zzzz", "POS(0) ('ab' | 'xy' | 'pq') $ OUTPUT")
p("A11","A","ALT nested in ALT",                     "pqcd", "POS(0) (('ab' | ('pq' | 'rs')) | 'xy') $ OUTPUT")
p("A12","A","ALT of SEQUENCES",                      "abcd", "POS(0) (('ab' 'cd') | ('ab' 'zz')) $ OUTPUT")
p("A13","A","ALT unequal-length arms + subsequent",  "abcd", "POS(0) ('a' | 'ab' | 'abc') $ OUTPUT 'cd' RPOS(0)")

# ============================ FAMILY N -- ARBNO simple ======================
p("N01","N","ARBNO not retried, no capture",         "abcd", "POS(0) ARBNO(LEN(1))")
p("N02","N","ARBNO retried, no capture",             "abcd", "POS(0) ARBNO(LEN(1)) RPOS(0)")
p("N03","N","ARBNO retried, $ INSIDE body",          "abcd", "POS(0) ARBNO(LEN(1) $ OUTPUT) RPOS(0)")
p("N04","N","ARBNO retried, . INSIDE body",          "abcd", "POS(0) ARBNO(LEN(1) . W) RPOS(0)",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("N05","N","ARBNO retried, $ ON the ARBNO",         "abcd", "POS(0) ARBNO(LEN(1)) $ OUTPUT RPOS(0)")
p("N06","N","ARBNO retried, . ON the ARBNO",         "abcd", "POS(0) ARBNO(LEN(1)) . W RPOS(0)",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("N07","N","ARBNO not retried + OUTER $",           "abcd", "(POS(0) ARBNO(LEN(1))) $ OUTPUT")
p("N08","N","ARBNO retried + OUTER $",               "abcd", "(POS(0) ARBNO(LEN(1)) RPOS(0)) $ OUTPUT")
p("N09","N","ARBNO retried + OUTER .",               "abcd", "(POS(0) ARBNO(LEN(1)) RPOS(0)) . W",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("N10","N","ARBNO shy null wins immediately",       "abcd", "POS(0) ARBNO(LEN(1)) 'a'")
p("N11","N","ARBNO zero-width body",                 "abcd", "POS(0) ARBNO(POS(0)) 'a'")
p("N12","N","ARBNO variable-extent arm (SPAN)",      "12ab34","POS(0) ARBNO(SPAN('0123456789') | LEN(1)) $ OUTPUT RPOS(0)")
p("N13","N","ARBNO FAILS overall, $ inside fires",   "abcd", "POS(0) ARBNO(LEN(1) $ OUTPUT) 'ZZ'")
p("N14","N","ARBNO FAILS overall, . inside silent",  "abcd", "POS(0) ARBNO(LEN(1) . W) 'ZZ'",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("N15","N","ARBNO(*)ALT inner only (case 1 inner)", "BlueGoldBirdFish",
   "POS(0) ARBNO('Bird' | 'Blue' | LEN(1)) $ OUTPUT RPOS(0)")
p("N16","N","ARBNO(*)ALT FULL (case 1)",             "BlueGoldBirdFish",
   "(POS(0) ARBNO('Bird' | 'Blue' | LEN(1)) $ OUTPUT RPOS(0)) $ OUTPUT")
p("N17","N","ARBNO(*)ALT capture INSIDE body (case 4)","BlueGold",
   "POS(0) ARBNO(('Bird' | 'Blue' | LEN(1)) . W) RPOS(0)",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("N18","N","ARBNO with @ cursor inside body",       "abc",  "POS(0) ARBNO(@C LEN(1)) RPOS(0)",
   ["C = '?'"], ["OUTPUT = 'C=' C"])
p("N19","N","ARBNO of a SEQUENCE body",              "ababab","POS(0) ARBNO('a' 'b') $ OUTPUT RPOS(0)")
p("N20","N","ARBNO of a captured SEQUENCE body",     "ababab","POS(0) ARBNO(('a' 'b') . W) RPOS(0)",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("N21","N","two sibling ARBNOs",                    "aabb", "POS(0) ARBNO('a') $ OUTPUT ARBNO('b') $ OUTPUT RPOS(0)")

# ============================ FAMILY X -- nested ARBNO ======================
p("X01","X","nested ARBNO, degenerate inner",        "abc",  "POS(0) ARBNO(ARBNO(LEN(1))) RPOS(0)")
p("X02","X","nested ARBNO, bracketed groups",        "(ab)(c)","POS(0) ARBNO('(' ARBNO(NOTANY(')')) ')') RPOS(0)")
p("X03","X","nested ARBNO, $ in INNER body",         "(ab)(c)","POS(0) ARBNO('(' ARBNO(NOTANY(')') $ OUTPUT) ')') RPOS(0)")
p("X04","X","nested ARBNO, $ on OUTER body",         "(ab)(c)","POS(0) ARBNO(('(' ARBNO(NOTANY(')')) ')') $ OUTPUT) RPOS(0)")
p("X05","X","nested ARBNO, . in inner + . on outer", "(ab)(c)",
   "POS(0) ARBNO(('(' ARBNO(NOTANY(')') . I) ')') . O) RPOS(0)",
   ["I = '<unset>'","O = '<unset>'"], ["OUTPUT = 'I=' I","OUTPUT = 'O=' O"])
p("X06","X","nested ARBNO that FAILS overall",       "(ab)(c","POS(0) ARBNO('(' ARBNO(NOTANY(')')) ')') RPOS(0)")
p("X07","X","manual LIST: ITEM ARBNO(',' ITEM)",     "(12,345,6)",
   "POS(0) '(' ITEM ARBNO(',' ITEM) ')' RPOS(0)", ["ITEM = SPAN('0123456789')"])
p("X08","X","manual LIST negative control",          "(12,,34)",
   "POS(0) '(' ITEM ARBNO(',' ITEM) ')' RPOS(0)", ["ITEM = SPAN('0123456789')"])
p("X09","X","manual PAIRS: ARBNO of ALT, succeeds",  "CCBBAAAACC","POS(0) ARBNO('AA' | 'BB' | 'CC') RPOS(0)")
p("X10","X","manual PAIRS negative control",         "AABBB", "POS(0) ARBNO('AA' | 'BB' | 'CC') RPOS(0)")
p("X11","X","nested ARBNO + capture on inner ARBNO", "(ab)(c)",
   "POS(0) ARBNO('(' ARBNO(NOTANY(')')) . G ')') RPOS(0)",
   ["G = '<unset>'"], ["OUTPUT = 'G=' G"])

# ============================ FAMILY D -- deferred * ========================
p("D01","D","*VAR trivial, literal pattern",         "a",    "*P",            ["P = 'a'"])
p("D02","D","*VAR trivial + . OUTPUT",               "abc",  "*P . OUTPUT",   ["P = LEN(1)"])
p("D03","D","*VAR trivial + $ OUTPUT",               "abc",  "*P $ OUTPUT",   ["P = LEN(1)"])
p("D04","D","*VAR holding an ALTERNATION",           "xycd", "POS(0) *P $ OUTPUT", ["P = 'ab' | 'xy'"])
p("D05","D","*VAR holding a SEQUENCE",               "abcd", "POS(0) *P $ OUTPUT", ["P = 'ab' 'cd'"])
p("D06","D","*VAR re-evaluated: P changed between matches","abcd",
   "POS(0) *P $ OUTPUT", ["P = LEN(1)"],
   ["P = LEN(3)","SUBJ ? POS(0) *P $ OUTPUT"])
p("D07","D","LEN(*N), N fixed before the match",     "abcdef","POS(0) LEN(*N) . OUTPUT", ["N = 3"])
p("D08","D","LEN(*N), N set DURING the match (manual)","12ABCDEFGHIJKLMNOPQ",
   "SPAN('0123456789') $ N LEN(*N) . FIELD", ["FIELD = '<unset>'"],
   ["OUTPUT = 'N=' N","OUTPUT = 'FIELD=' FIELD"])
p("D09","D","ARBNO(*P) -- case 7",                   "abc",  "POS(0) ARBNO(*P) $ OUTPUT RPOS(0)", ["P = LEN(1)"])
p("D10","D","ARBNO(*P) with capture inside body",    "abc",  "POS(0) ARBNO(*P . W) RPOS(0)",
   ["P = LEN(1)","W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("D11","D","ARBNO(*P) where P is an ALTERNATION",   "BlueBird",
   "POS(0) ARBNO(*P) $ OUTPUT RPOS(0)", ["P = 'Bird' | 'Blue' | LEN(1)"])
p("D12","D","recursive pattern via * (manual LIST)", "(12,(3,45,(6)),78)",
   "POS(0) *LIST RPOS(0)",
   ["ITEM = SPAN('0123456789') | *LIST","LIST = '(' ITEM ARBNO(',' ITEM) ')'"])
p("D13","D","recursive pattern negative control",    "(12,(34)",
   "POS(0) *LIST RPOS(0)",
   ["ITEM = SPAN('0123456789') | *LIST","LIST = '(' ITEM ARBNO(',' ITEM) ')'"])

# ============================ FAMILY F -- FENCE / commit ====================
p("F01","F","FENCE forward, succeeds",               "aaaX", "POS(0) ARBNO(LEN(1)) FENCE 'X' RPOS(0)")
p("F02","F","FENCE backward abort (case 6)",         "aaaX", "POS(0) ARBNO(LEN(1)) $ OUTPUT FENCE 'X' RPOS(0)")
p("F03","F",". behind a FENCE, match then FAILS",    "ab",   "('a' . X) FENCE 'z'",
   ["X = '<unset>'"], ["OUTPUT = 'X=' X"])
p("F04","F",". behind a FENCE, match succeeds",      "ab",   "('a' . Y) FENCE 'b'",
   ["Y = '<unset>'"], ["OUTPUT = 'Y=' Y"])
p("F05","F","$ behind a FENCE, match then FAILS",    "ab",   "('a' $ OUTPUT) FENCE 'z'")
p("F06","F","FENCE INSIDE an ARBNO body",            "abc",  "POS(0) ARBNO(LEN(1) FENCE) RPOS(0)")

# ============================ emit ==========================================
SK = "*  {id} [{fam}] {desc}\n*  subject: '{subj}'\n*  pattern: {pat}\n"
n = 0
for (i, fam, desc, subj, pat, setup, post) in P:
    L = [SK.format(id=i, fam=fam, desc=desc, subj=subj, pat=pat)]
    L.append("        SUBJ = '%s'" % subj)
    for s in setup:
        L.append("        " + s)
    L.append("        SUBJ ? %s%s:F(NO)" % (pat, " " * max(1, 48 - len(pat))))
    L.append("        OUTPUT = '=S'                                   :(EN)")
    L.append("NO      OUTPUT = '=F'")
    if post:
        L.append("EN      " + post[0])
        for q in post[1:]:
            L.append("        " + q)
    else:
        L.append("EN")
    L.append("END")
    open(os.path.join(OUT, i + ".sno"), "w").write("\n".join(L) + "\n")
    n += 1
print("wrote %d probes to %s/" % (n, OUT))
for fam in "LANXDF":
    print("  %s: %d" % (fam, sum(1 for x in P if x[1] == fam)))
