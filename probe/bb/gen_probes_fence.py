#!/usr/bin/env python3
"""gen_probes_fence.py -- families G (FENCE0, the nullary primitive) and
H (FENCE1, the FENCE(P) function), sprinkled through every position that can
hold them.

THE TWO ARE NOT THE SAME CONSTRUCT (SPITBOL manual pp.125-126, 208):

  FENCE     matches the null string; no effect moving forward; if the scanner
            BACKS UP into it, THE WHOLE MATCH FAILS.  As the first component it
            anchors the pattern regardless of &ANCHOR.

  FENCE(P)  matches P; alternatives WITHIN P are visible only while moving
            forward.  Backing up does not re-examine P's alternatives -- but it
            DOES continue back to components BEFORE the fence, which may still
            be retried.

So FENCE0 is a match-level abort and FENCE1 is a local cut.  G01/H01/the
no-fence control are built as a discriminating TRIPLE on one subject: the
control succeeds, FENCE1 still succeeds (earlier arm retried), FENCE0 fails.
Any implementation that collapses the two shows up on exactly that triple.
"""
import os, sys
OUT = sys.argv[1] if len(sys.argv) > 1 else "probes"
os.makedirs(OUT, exist_ok=True)
P = []
def p(i, fam, desc, subj, pat, setup=(), post=()):
    P.append((i, fam, desc, subj, pat, list(setup), list(post)))

# ===== THE DISCRIMINATING TRIPLE ===========================================
p("G00","G","TRIPLE control: no fence at all",      "ABCZ","POS(0) ('A' | 'AB') ('CD' | 'C') 'Z' RPOS(0)")
p("G01","G","TRIPLE FENCE0: backup aborts match",   "ABCZ","POS(0) ('A' | 'AB') FENCE ('CD' | 'C') 'Z' RPOS(0)")
p("H01","H","TRIPLE FENCE1: local cut only",        "ABCZ","POS(0) ('A' | 'AB') FENCE('CD' | 'C') 'Z' RPOS(0)")

# ===== FAMILY G -- FENCE0 in every position ================================
p("G02","G","FENCE0 as FIRST component (anchors)",  "ABC", "FENCE 'B'")
p("G03","G","control for G02: no fence, unanchored","ABC", "'B'")
p("G04","G","FENCE0 as LAST component",             "abcd","POS(0) LEN(2) FENCE")
p("G05","G","FENCE0 between two SEQ members",       "abcd","POS(0) LEN(2) FENCE LEN(2) RPOS(0)")
p("G06","G","FENCE0 manual example ANY FENCE '+'",  "1AB+","ANY('AB') FENCE '+'")
p("G07","G","control for G06: no fence",            "1AB+","ANY('AB') '+'")
p("G08","G","FENCE0 INSIDE an ALT arm",             "abcd","POS(0) (('ab' FENCE) | 'xy') 'cd' RPOS(0)")
p("G09","G","FENCE0 AFTER an alternation",          "abcd","POS(0) ('ab' | 'a') FENCE 'cd' RPOS(0)")
p("G10","G","control for G09: no fence",            "abcd","POS(0) ('ab' | 'a') 'cd' RPOS(0)")
p("G11","G","FENCE0 at START of ARBNO body",        "abc", "POS(0) ARBNO(FENCE LEN(1)) RPOS(0)")
p("G12","G","FENCE0 at END of ARBNO body",          "abc", "POS(0) ARBNO(LEN(1) FENCE) RPOS(0)")
p("G13","G","FENCE0 AFTER an ARBNO",                "abc", "POS(0) ARBNO(LEN(1)) FENCE RPOS(0)")
p("G14","G","FENCE0 BEFORE an ARBNO",               "abc", "POS(0) FENCE ARBNO(LEN(1)) RPOS(0)")
p("G15","G","FENCE0 + $ capture BEFORE it",         "aaaX","POS(0) ARBNO(LEN(1)) $ OUTPUT FENCE 'X' RPOS(0)")
p("G16","G","FENCE0 + $ capture AFTER it",          "aaaX","POS(0) ARBNO(LEN(1)) FENCE LEN(1) $ OUTPUT RPOS(0)")
p("G17","G","FENCE0 inside a captured GROUP",       "abcd","(POS(0) LEN(2) FENCE LEN(2)) . OUTPUT")
p("G18","G","FENCE0 inside group, group is $-cap",  "abcd","(POS(0) LEN(2) FENCE LEN(2)) $ OUTPUT")
p("G19","G","FENCE0 in INNER of nested ARBNO",      "(ab)(c)","POS(0) ARBNO('(' ARBNO(NOTANY(')') FENCE) ')') RPOS(0)")
p("G20","G","FENCE0 in OUTER of nested ARBNO",      "(ab)(c)","POS(0) ARBNO('(' ARBNO(NOTANY(')')) ')' FENCE) RPOS(0)")
p("G21","G","TWO FENCE0 in one pattern",            "abcd","POS(0) LEN(1) FENCE LEN(1) FENCE LEN(2) RPOS(0)")
p("G22","G","FENCE0 then a FAILING tail, . silent", "abcd","POS(0) LEN(2) . W FENCE 'ZZ'",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("G23","G","FENCE0 then a FAILING tail, $ fired",  "abcd","POS(0) LEN(2) $ OUTPUT FENCE 'ZZ'")
p("G24","G","FENCE0 with deferred *P",              "abc", "POS(0) *P FENCE RPOS(0)", ["P = LEN(3)"])
p("G25","G","FENCE0 blocks unanchored restart",     "xabc","LEN(1) FENCE 'abc'")
p("G26","G","control for G25: no fence",            "xabc","LEN(1) 'abc'")

# ===== FAMILY H -- FENCE1, FENCE(P), in every position =====================
p("H02","H","FENCE1 over a bare literal",           "abcd","POS(0) FENCE('ab') 'cd' RPOS(0)")
p("H03","H","FENCE1 over a SEQUENCE",               "abcd","POS(0) FENCE(LEN(2) LEN(2)) RPOS(0)")
p("H04","H","FENCE1 over an ALTERNATION (the cut)", "abcd","POS(0) FENCE('ab' | 'a') 'cd' RPOS(0)")
p("H05","H","control for H04: no fence",            "abcd","POS(0) ('ab' | 'a') 'cd' RPOS(0)")
p("H06","H","FENCE1 cut BITES (later arm needed)",  "abcd","POS(0) FENCE('ab' | 'a') 'bcd' RPOS(0)")
p("H07","H","control for H06: no fence, succeeds",  "abcd","POS(0) ('ab' | 'a') 'bcd' RPOS(0)")
p("H08","H","FENCE1 over an ARBNO (cuts retries)",  "abcd","POS(0) FENCE(ARBNO(LEN(1))) RPOS(0)")
p("H09","H","control for H08: bare ARBNO",          "abcd","POS(0) ARBNO(LEN(1)) RPOS(0)")
p("H10","H","FENCE1 over ARBNO, $ inside",          "abcd","POS(0) FENCE(ARBNO(LEN(1)) $ OUTPUT) RPOS(0)")
p("H11","H","FENCE1 INSIDE an ARBNO body",          "abc", "POS(0) ARBNO(FENCE(LEN(1))) RPOS(0)")
p("H12","H","FENCE1 over an ALT inside ARBNO body", "BlueBird","POS(0) ARBNO(FENCE('Bird' | 'Blue' | LEN(1))) $ OUTPUT RPOS(0)")
p("H13","H","control for H12: no fence",            "BlueBird","POS(0) ARBNO('Bird' | 'Blue' | LEN(1)) $ OUTPUT RPOS(0)")
p("H14","H","FENCE1 with . capture INSIDE",         "abcd","POS(0) FENCE(LEN(2) . W) LEN(2) RPOS(0)",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("H15","H","FENCE1 with $ capture INSIDE",         "abcd","POS(0) FENCE(LEN(2) $ OUTPUT) LEN(2) RPOS(0)")
p("H16","H",". capture ON the FENCE1",              "abcd","POS(0) FENCE(LEN(2)) . W LEN(2) RPOS(0)",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("H17","H","$ capture ON the FENCE1",              "abcd","POS(0) FENCE(LEN(2)) $ OUTPUT LEN(2) RPOS(0)")
p("H18","H","FENCE1 nested in FENCE1",              "abcd","POS(0) FENCE(FENCE('ab' | 'a')) 'cd' RPOS(0)")
p("H19","H","FENCE1 containing a FENCE0",           "abcd","POS(0) FENCE(LEN(2) FENCE) LEN(2) RPOS(0)")
p("H20","H","FENCE1 over a deferred *P",            "abc", "POS(0) FENCE(*P) RPOS(0)", ["P = LEN(3)"])
p("H21","H","FENCE1 over deferred ALT *P",          "BlueBird","POS(0) ARBNO(FENCE(*P)) $ OUTPUT RPOS(0)",
   ["P = 'Bird' | 'Blue' | LEN(1)"])
p("H22","H","FENCE1 inside a captured GROUP",       "abcd","(POS(0) FENCE(LEN(2)) LEN(2)) . OUTPUT")
p("H23","H","FENCE1 wrapping a captured GROUP",     "abcd","POS(0) FENCE((LEN(2) LEN(2)) . W) RPOS(0)",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("H24","H","FENCE1 in INNER of nested ARBNO",      "(ab)(c)","POS(0) ARBNO('(' ARBNO(FENCE(NOTANY(')'))) ')') RPOS(0)")
p("H25","H","FENCE1 in OUTER of nested ARBNO",      "(ab)(c)","POS(0) ARBNO(FENCE('(' ARBNO(NOTANY(')')) ')')) RPOS(0)")
p("H26","H","FENCE1 that FAILS overall, $ fired",   "abcd","POS(0) FENCE(LEN(2) $ OUTPUT) 'ZZ'")
p("H27","H","FENCE1 that FAILS overall, . silent",  "abcd","POS(0) FENCE(LEN(2) . W) 'ZZ'",
   ["W = '<unset>'"], ["OUTPUT = 'W=' W"])
p("H28","H","FENCE1 over an empty-match POS",       "abcd","POS(0) FENCE(POS(0)) LEN(4) RPOS(0)")
p("H29","H","FENCE1 manual idiom TAB/ABORT shape",  "abcd","POS(0) FENCE(TAB(2) $ OUTPUT | ABORT) LEN(2) RPOS(0)")
p("H30","H","two sibling FENCE1s",                  "abcd","POS(0) FENCE(LEN(2)) FENCE(LEN(2)) RPOS(0)")

SK = "*  {id} [{fam}] {desc}\n*  subject: '{subj}'\n*  pattern: {pat}\n"
for (i, fam, desc, subj, pat, setup, post) in P:
    L = [SK.format(id=i, fam=fam, desc=desc, subj=subj, pat=pat)]
    L.append("        SUBJ = '%s'" % subj)
    for s in setup: L.append("        " + s)
    L.append("        SUBJ ? %s%s:F(NO)" % (pat, " " * max(1, 48 - len(pat))))
    L.append("        OUTPUT = '=S'                                   :(EN)")
    L.append("NO      OUTPUT = '=F'")
    if post:
        L.append("EN      " + post[0])
        for q in post[1:]: L.append("        " + q)
    else:
        L.append("EN")
    L.append("END")
    open(os.path.join(OUT, i + ".sno"), "w").write("\n".join(L) + "\n")
print("wrote %d fence probes" % len(P))
for f in "GH": print("  %s: %d" % (f, sum(1 for x in P if x[1] == f)))
