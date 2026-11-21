#!/usr/bin/env python3
# THE CROSS-LANGUAGE PAIRS (the cao 2026-11-18, on Lon's four words of that morning through the chairman).
# One table, five sets: variables and functions (two cells a pair) and records, sequences and tables (three cells a pair: A makes, B reads and makes one back, A reads it),
# the full square of the seven languages (49 ordered pairs each, a language against itself included; the tables set has no Pascal and no Prolog, which have no table). THE SOURCE OF TRUTH IS THIS TABLE: it writes each pair's SCRIPtix
# document A_to_B.md and, from the same two cells in the same order, its Jupyter notebook A_to_B.ipynb, and the one
# expected output A_to_B.out, cut by construction (no oracle runs a document of two languages).
# Every Pascal cell carries {$mode objfpc}: a Pascal text with no mode line is graded ISO (skill pascal), where an
# integer is written in a field of ten (the president 2026-11-18 10:56 CST, developer_12's measurement).
# Usage: make_pairs.py [--out DIR | --check]: no argument writes DIR/variables and DIR/functions beside this file, --out DIR elsewhere, --check
# reads what stands beside it and writes nothing (rc 0 equal, rc 1 naming the first file that drifted). No file of a set is ever edited by hand.
import json, os, sys

LANGS = ["snobol4", "snocone", "rebus", "icon", "pascal", "prolog", "raku"]

VAR_DEF = {
    "snobol4": "        COUNT = 7\n        WORD = 'seven'\nEND\n",
    "snocone": "COUNT = 7;\nWORD = 'seven';\n",
    "rebus":   "function main()\n  COUNT := 7\n  WORD := \"seven\"\nend\n",
    "icon":    "global COUNT, WORD\nprocedure main();\n  COUNT := 7;\n  WORD := \"seven\";\nend\n",
    "pascal":  "{$mode objfpc}\nprogram define;\nvar COUNT: integer;\n    WORD: string;\nbegin\n  COUNT := 7;\n  WORD := 'seven'\nend.\n",
    "prolog":  ":- nb_setval('COUNT', 7).\n:- nb_setval('WORD', seven).\n",
    "raku":    "our $COUNT = 7;\nour $WORD = 'seven';\n",
}

def var_use(b, a):
    same = a == b
    return {
        "snobol4": "        OUTPUT = 'count ' COUNT\n        OUTPUT = 'word ' WORD\nEND\n",
        "snocone": "OUTPUT = 'count ' COUNT;\nOUTPUT = 'word ' WORD;\n",
        "rebus":   "function main()\n  OUTPUT := \"count \" || COUNT\n  OUTPUT := \"word \" || WORD\nend\n",
        "icon":    "global COUNT, WORD\nprocedure main();\n  write(\"count \", COUNT);\n  write(\"word \", WORD);\nend\n",
        "pascal":  ("{$mode objfpc}\nprogram use;\nvar COUNT: integer;\n    WORD: string;\n" if same else
                    "{$mode objfpc}\nprogram use;\nvar COUNT: integer; external name 'COUNT';\n    WORD: string; external name 'WORD';\n") +
                   "begin\n  writeln('count ', COUNT);\n  writeln('word ', WORD)\nend.\n",
        "prolog":  ":- nb_getval('COUNT', C), write('count '), write(C), nl.\n:- nb_getval('WORD', W), write('word '), write(W), nl.\n",
        "raku":    "our $COUNT;\nour $WORD;\nsay \"count $COUNT\";\nsay \"word $WORD\";\n",
    }[b]

FUN_DEF = {
    "snobol4": ("        DEFINE('TWICE(n)')                     :(TWICE_END)\nTWICE   TWICE = n * 2                          :(RETURN)\nTWICE_END\n"
                "        DEFINE('SHOUT(s)')                     :(SHOUT_END)\nSHOUT   SHOUT = s '!'                          :(RETURN)\nSHOUT_END\nEND\n"),
    "snocone": "function TWICE(n) { return n * 2; }\nfunction SHOUT(s) { return s '!'; }\n",
    "rebus":   "function TWICE(n)\n  return n * 2\nend\nfunction SHOUT(s)\n  return s || \"!\"\nend\nfunction main()\nend\n",
    "icon":    "procedure TWICE(n);\n  return n * 2;\nend\nprocedure SHOUT(s);\n  return s || \"!\";\nend\n",
    "pascal":  ("{$mode objfpc}\nprogram define;\nfunction TWICE(n: integer): integer;\nbegin\n  TWICE := n * 2\nend;\n"
                "function SHOUT(s: string): string;\nbegin\n  SHOUT := s + '!'\nend;\nbegin\nend.\n"),
    "prolog":  "'TWICE'(N, R) :- R is N * 2.\n'SHOUT'(S, R) :- atom_concat(S, '!', R).\n",
    "raku":    "sub TWICE($n) { $n * 2 }\nsub SHOUT($s) { $s ~ '!' }\n",
}

def fun_use(b, a):
    same = a == b
    return {
        "snobol4": "        OUTPUT = 'twice ' TWICE(7)\n        OUTPUT = 'shout ' SHOUT('seven')\nEND\n",
        "snocone": "OUTPUT = 'twice ' TWICE(7);\nOUTPUT = 'shout ' SHOUT('seven');\n",
        "rebus":   "function main()\n  OUTPUT := \"twice \" || TWICE(7)\n  OUTPUT := \"shout \" || SHOUT(\"seven\")\nend\n",
        "icon":    ("" if same else "global TWICE, SHOUT\n") +
                   "procedure main();\n  write(\"twice \", TWICE(7));\n  write(\"shout \", SHOUT(\"seven\"));\nend\n",
        "pascal":  ("{$mode objfpc}\nprogram use;\n" if same else
                    "{$mode objfpc}\nprogram use;\nfunction TWICE(n: integer): integer; external name 'TWICE';\nfunction SHOUT(s: string): string; external name 'SHOUT';\n") +
                   "begin\n  writeln('twice ', TWICE(7));\n  writeln('shout ', SHOUT('seven'))\nend.\n",
        "prolog":  ":- 'TWICE'(7, R), write('twice '), write(R), nl.\n:- 'SHOUT'(seven, R), write('shout '), write(R), nl.\n",
        "raku":    ("" if same else "sub TWICE($n) { ... }\nsub SHOUT($s) { ... }\n") +
                   "say \"twice {TWICE(7)}\";\nsay \"shout {SHOUT('seven')}\";\n",
    }[b]


S4 = "        "
STRUCT_LANGS = {"records": LANGS, "sequences": LANGS, "tables": ["snobol4", "snocone", "rebus", "icon", "raku"]}
PAS_TREE = "type\n  ptree = ^tree;\n  tree = record t: string; v: string; n: integer; c: array[1..2] of ptree end;\n"
PAS_NODE = "  new(%s); %s^.t := '%s'; %s^.v := '%s'; %s^.n := %s; %s^.c[1] := %s; %s^.c[2] := %s;\n"

def pas_leaf(x, v):
    return PAS_NODE % (x, x, "num", x, v, x, 0, x, "nil", x, "nil")

def pas_root(x, t, v, l, r):
    return PAS_NODE % (x, x, t, x, v, x, 2, x, l, x, r)

STRUCT_DEF = {
    "records": {
        "snobol4": "        DATA('tree(t,v,n,c)')\n        K = ARRAY(2)\n        K[1] = tree('num', '1', 0)\n        K[2] = tree('num', '2', 0)\n        ROOT = tree('plus', '+', 2, K)\nEND\n",
        "snocone": "DATA('tree(t,v,n,c)');\nK = ARRAY(2);\nK[1] = tree('num', '1', 0);\nK[2] = tree('num', '2', 0);\nROOT = tree('plus', '+', 2, K);\n",
        "rebus":   "record tree(t, v, n, c)\nfunction main()\n  K := ARRAY(2)\n  K[1] := tree(\"num\", \"1\", 0)\n  K[2] := tree(\"num\", \"2\", 0)\n  ROOT := tree(\"plus\", \"+\", 2, K)\nend\n",
        "icon":    "record tree(t, v, n, c)\nglobal ROOT\nprocedure main();\n  ROOT := tree(\"plus\", \"+\", 2, [tree(\"num\", \"1\", 0), tree(\"num\", \"2\", 0)]);\nend\n",
        "pascal":  "{$mode objfpc}\nprogram define;\n" + PAS_TREE + "var ROOT: ptree;\n    a, b: ptree;\nbegin\n" + pas_leaf("a", "1") + pas_leaf("b", "2") + pas_root("ROOT", "plus", "+", "a", "b").rstrip(";\n") + "\nend.\n",
        "prolog":  ":- nb_setval('ROOT', tree(plus, '+', 2, [tree(num, '1', 0, []), tree(num, '2', 0, [])])).\n",
        "raku":    "class tree { has $.t; has $.v; has $.n; has $.c; }\nour $ROOT = tree.new(t => 'plus', v => '+', n => 2, c => [tree.new(t => 'num', v => '1', n => 0), tree.new(t => 'num', v => '2', n => 0)]);\n",
    },
    "sequences": {
        "snobol4": "        SEQ = ARRAY(3)\n        SEQ[1] = 10\n        SEQ[2] = 20\n        SEQ[3] = 30\nEND\n",
        "snocone": "SEQ = ARRAY(3);\nSEQ[1] = 10;\nSEQ[2] = 20;\nSEQ[3] = 30;\n",
        "rebus":   "function main()\n  SEQ := ARRAY(3)\n  SEQ[1] := 10\n  SEQ[2] := 20\n  SEQ[3] := 30\nend\n",
        "icon":    "global SEQ\nprocedure main();\n  SEQ := [10, 20, 30];\nend\n",
        "pascal":  "{$mode objfpc}\nprogram define;\nvar SEQ: array[1..3] of integer;\nbegin\n  SEQ[1] := 10;\n  SEQ[2] := 20;\n  SEQ[3] := 30\nend.\n",
        "prolog":  ":- nb_setval('SEQ', [10, 20, 30]).\n",
        "raku":    "our $SEQ = [10, 20, 30];\n",
    },
    "tables": {
        "snobol4": "        TAB = TABLE()\n        TAB['one'] = 1\n        TAB['two'] = 2\nEND\n",
        "snocone": "TAB = TABLE();\nTAB['one'] = 1;\nTAB['two'] = 2;\n",
        "rebus":   "function main()\n  TAB := TABLE()\n  TAB[\"one\"] := 1\n  TAB[\"two\"] := 2\nend\n",
        "icon":    "global TAB\nprocedure main();\n  TAB := table();\n  TAB[\"one\"] := 1;\n  TAB[\"two\"] := 2;\nend\n",
        "raku":    "our $TAB = {one => 1, two => 2};\n",
    },
}

def struct_use(kind, b, a):
    same = a == b
    if kind == "records":
        return {
            "snobol4": "        DATA('tree(t,v,n,c)')\n        OUTPUT = 'root ' t(ROOT) ' ' n(ROOT)\n        K = c(ROOT)\n        OUTPUT = 'leaves ' v(K[1]) ' ' v(K[2])\n        J = ARRAY(2)\n        J[1] = tree('num', '3', 0)\n        J[2] = tree('num', '4', 0)\n        BACK = tree('times', '*', 2, J)\nEND\n",
            "snocone": "DATA('tree(t,v,n,c)');\nOUTPUT = 'root ' t(ROOT) ' ' n(ROOT);\nK = c(ROOT);\nOUTPUT = 'leaves ' v(K[1]) ' ' v(K[2]);\nJ = ARRAY(2);\nJ[1] = tree('num', '3', 0);\nJ[2] = tree('num', '4', 0);\nBACK = tree('times', '*', 2, J);\n",
            "rebus":   "record tree(t, v, n, c)\nfunction main()\n  OUTPUT := \"root \" || t(ROOT) || \" \" || n(ROOT)\n  K := c(ROOT)\n  OUTPUT := \"leaves \" || v(K[1]) || \" \" || v(K[2])\n  J := ARRAY(2)\n  J[1] := tree(\"num\", \"3\", 0)\n  J[2] := tree(\"num\", \"4\", 0)\n  BACK := tree(\"times\", \"*\", 2, J)\nend\n",
            "icon":    "record tree(t, v, n, c)\nglobal ROOT, BACK\nprocedure main();\n  write(\"root \", ROOT.t, \" \", ROOT.n);\n  write(\"leaves \", ROOT.c[1].v, \" \", ROOT.c[2].v);\n  BACK := tree(\"times\", \"*\", 2, [tree(\"num\", \"3\", 0), tree(\"num\", \"4\", 0)]);\nend\n",
            "pascal":  "{$mode objfpc}\nprogram use;\n" + PAS_TREE +
                       ("var ROOT: ptree;\n    BACK: ptree;\n" if same else "var ROOT: ptree; external name 'ROOT';\n    BACK: ptree;\n") +
                       "    a, b: ptree;\nbegin\n  writeln('root ', ROOT^.t, ' ', ROOT^.n);\n  writeln('leaves ', ROOT^.c[1]^.v, ' ', ROOT^.c[2]^.v);\n" +
                       pas_leaf("a", "3") + pas_leaf("b", "4") + pas_root("BACK", "times", "*", "a", "b").rstrip(";\n") + "\nend.\n",
            "prolog":  ":- nb_getval('ROOT', R), R = tree(T, _, N, [tree(_, V1, _, _), tree(_, V2, _, _)]), write('root '), write(T), write(' '), write(N), nl, write('leaves '), write(V1), write(' '), write(V2), nl.\n:- nb_setval('BACK', tree(times, '*', 2, [tree(num, '3', 0, []), tree(num, '4', 0, [])])).\n",
            "raku":    "class tree { has $.t; has $.v; has $.n; has $.c; }\nour $ROOT;\nour $BACK;\nsay \"root {$ROOT.t} {$ROOT.n}\";\nsay \"leaves {$ROOT.c[0].v} {$ROOT.c[1].v}\";\n$BACK = tree.new(t => 'times', v => '*', n => 2, c => [tree.new(t => 'num', v => '3', n => 0), tree.new(t => 'num', v => '4', n => 0)]);\n",
        }[b]
    if kind == "sequences":
        return {
            "snobol4": "        OUTPUT = 'size ' PROTOTYPE(SEQ)\n        OUTPUT = 'second ' SEQ[2]\n        BACK = ARRAY(3)\n        BACK[1] = 40\n        BACK[2] = 50\n        BACK[3] = 60\nEND\n",
            "snocone": "OUTPUT = 'size ' PROTOTYPE(SEQ);\nOUTPUT = 'second ' SEQ[2];\nBACK = ARRAY(3);\nBACK[1] = 40;\nBACK[2] = 50;\nBACK[3] = 60;\n",
            "rebus":   "function main()\n  OUTPUT := \"size \" || PROTOTYPE(SEQ)\n  OUTPUT := \"second \" || SEQ[2]\n  BACK := ARRAY(3)\n  BACK[1] := 40\n  BACK[2] := 50\n  BACK[3] := 60\nend\n",
            "icon":    "global SEQ, BACK\nprocedure main();\n  write(\"size \", *SEQ);\n  write(\"second \", SEQ[2]);\n  BACK := [40, 50, 60];\nend\n",
            "pascal":  "{$mode objfpc}\nprogram use;\n" +
                       ("var SEQ: array[1..3] of integer;\n    BACK: array[1..3] of integer;\n" if same else "var SEQ: array[1..3] of integer; external name 'SEQ';\n    BACK: array[1..3] of integer;\n") +
                       "begin\n  writeln('size ', high(SEQ) - low(SEQ) + 1);\n  writeln('second ', SEQ[2]);\n  BACK[1] := 40;\n  BACK[2] := 50;\n  BACK[3] := 60\nend.\n",
            "prolog":  ":- nb_getval('SEQ', S), length(S, N), write('size '), write(N), nl, nth1(2, S, E), write('second '), write(E), nl.\n:- nb_setval('BACK', [40, 50, 60]).\n",
            "raku":    "our $SEQ;\nour $BACK;\nsay \"size {$SEQ.elems}\";\nsay \"second {$SEQ[1]}\";\n$BACK = [40, 50, 60];\n",
        }[b]
    return {
        "snobol4": "        OUTPUT = 'one ' TAB['one']\n        OUTPUT = 'two ' TAB['two']\n        BACK = TABLE()\n        BACK['three'] = 3\n        BACK['four'] = 4\nEND\n",
        "snocone": "OUTPUT = 'one ' TAB['one'];\nOUTPUT = 'two ' TAB['two'];\nBACK = TABLE();\nBACK['three'] = 3;\nBACK['four'] = 4;\n",
        "rebus":   "function main()\n  OUTPUT := \"one \" || TAB[\"one\"]\n  OUTPUT := \"two \" || TAB[\"two\"]\n  BACK := TABLE()\n  BACK[\"three\"] := 3\n  BACK[\"four\"] := 4\nend\n",
        "icon":    "global TAB, BACK\nprocedure main();\n  write(\"one \", TAB[\"one\"]);\n  write(\"two \", TAB[\"two\"]);\n  BACK := table();\n  BACK[\"three\"] := 3;\n  BACK[\"four\"] := 4;\nend\n",
        "raku":    "our $TAB;\nour $BACK;\nsay \"one {$TAB<one>}\";\nsay \"two {$TAB<two>}\";\n$BACK = {three => 3, four => 4};\n",
    }[b]

def struct_fin(kind, a, b):
    if kind == "records":
        return {
            "snobol4": "        OUTPUT = 'back ' t(BACK) ' ' n(BACK)\n        K = c(BACK)\n        OUTPUT = 'back leaves ' v(K[1]) ' ' v(K[2])\nEND\n",
            "snocone": "OUTPUT = 'back ' t(BACK) ' ' n(BACK);\nK = c(BACK);\nOUTPUT = 'back leaves ' v(K[1]) ' ' v(K[2]);\n",
            "rebus":   "record tree(t, v, n, c)\nfunction main()\n  OUTPUT := \"back \" || t(BACK) || \" \" || n(BACK)\n  K := c(BACK)\n  OUTPUT := \"back leaves \" || v(K[1]) || \" \" || v(K[2])\nend\n",
            "icon":    "record tree(t, v, n, c)\nglobal BACK\nprocedure main();\n  write(\"back \", BACK.t, \" \", BACK.n);\n  write(\"back leaves \", BACK.c[1].v, \" \", BACK.c[2].v);\nend\n",
            "pascal":  "{$mode objfpc}\nprogram final;\n" + PAS_TREE + ("var BACK: ptree;\n" if a == b else "var BACK: ptree; external name 'BACK';\n") + "begin\n  writeln('back ', BACK^.t, ' ', BACK^.n);\n  writeln('back leaves ', BACK^.c[1]^.v, ' ', BACK^.c[2]^.v)\nend.\n",
            "prolog":  ":- nb_getval('BACK', R), R = tree(T, _, N, [tree(_, V1, _, _), tree(_, V2, _, _)]), write('back '), write(T), write(' '), write(N), nl, write('back leaves '), write(V1), write(' '), write(V2), nl.\n",
            "raku":    "our $BACK;\nsay \"back {$BACK.t} {$BACK.n}\";\nsay \"back leaves {$BACK.c[0].v} {$BACK.c[1].v}\";\n",
        }[a]
    if kind == "sequences":
        return {
            "snobol4": "        OUTPUT = 'back size ' PROTOTYPE(BACK)\n        OUTPUT = 'back second ' BACK[2]\nEND\n",
            "snocone": "OUTPUT = 'back size ' PROTOTYPE(BACK);\nOUTPUT = 'back second ' BACK[2];\n",
            "rebus":   "function main()\n  OUTPUT := \"back size \" || PROTOTYPE(BACK)\n  OUTPUT := \"back second \" || BACK[2]\nend\n",
            "icon":    "global BACK\nprocedure main();\n  write(\"back size \", *BACK);\n  write(\"back second \", BACK[2]);\nend\n",
            "pascal":  "{$mode objfpc}\nprogram final;\n" + ("var BACK: array[1..3] of integer;\n" if a == b else "var BACK: array[1..3] of integer; external name 'BACK';\n") + "begin\n  writeln('back size ', high(BACK) - low(BACK) + 1);\n  writeln('back second ', BACK[2])\nend.\n",
            "prolog":  ":- nb_getval('BACK', S), length(S, N), write('back size '), write(N), nl, nth1(2, S, E), write('back second '), write(E), nl.\n",
            "raku":    "our $BACK;\nsay \"back size {$BACK.elems}\";\nsay \"back second {$BACK[1]}\";\n",
        }[a]
    return {
        "snobol4": "        OUTPUT = 'back three ' BACK['three']\n        OUTPUT = 'back four ' BACK['four']\nEND\n",
        "snocone": "OUTPUT = 'back three ' BACK['three'];\nOUTPUT = 'back four ' BACK['four'];\n",
        "rebus":   "function main()\n  OUTPUT := \"back three \" || BACK[\"three\"]\n  OUTPUT := \"back four \" || BACK[\"four\"]\nend\n",
        "icon":    "global BACK\nprocedure main();\n  write(\"back three \", BACK[\"three\"]);\n  write(\"back four \", BACK[\"four\"]);\nend\n",
        "raku":    "our $BACK;\nsay \"back three {$BACK<three>}\";\nsay \"back four {$BACK<four>}\";\n",
    }[a]

STRUCT_REF = {"records": "root plus 2\nleaves 1 2\nback times 2\nback leaves 3 4\n",
              "sequences": "size 3\nsecond 20\nback size 3\nback second 50\n",
              "tables": "one 1\ntwo 2\nback three 3\nback four 4\n"}

REF = {"variables": "count 7\nword seven\n", "functions": "twice 14\nshout seven!\n"}

# THE BACKTRACKING WITNESS (the cao's ruling 2026-11-18 18:1x CST, on the cto's ruling of 14:2x of row jupyter-a-call-crosses-between-a-function-and-a-prolog-predicate-by-name): a set of its own, three named
# entries (backtrack_past_snobol4, backtrack_past_icon, backtrack_past_raku), not a square, counted in no other set's total. THREE CELLS: Prolog defines NEXT/2 with two solutions; the function language defines STEP(n), which
# prints step and n and returns NEXT(n) * 10 by the name alone (the inner call of a function to a predicate, first solution, nothing left behind); Prolog picks X from [1, 2, 3], calls STEP, fails back past the call while
# R is not above 25, then lists every R. A choice the call wrongly left behind would read answer 1 1010. THE REF IS swipl's READING OF THE ALL-PROLOG EQUIVALENT, cut with `swipl -q -g halt FILE.pl` (swipl_bin of lib_oracle_flags.sh), run twice, equal:
#   'NEXT'(N, R) :- member(D, [1, 100]), R is N + D.
#   'STEP'(N, R) :- write('step '), write(N), nl, once('NEXT'(N, V)), R is V * 10.
#   pick(X, R) :- member(X, [1, 2, 3]), 'STEP'(X, R).
#   :- pick(X, R), R > 25, write('answer '), write(X), write(' '), write(R), nl.
#   :- findall(R, pick(_, R), L), write(L), nl.
BT_NEXT = "'NEXT'(N, R) :- member(D, [1, 100]), R is N + D.\n"
BT_STEP = {
    "snobol4": "        DEFINE('STEP(N)')                      :(STEP_END)\nSTEP    OUTPUT = 'step ' N\n        STEP = NEXT(N) * 10                    :(RETURN)\nSTEP_END\nEND\n",
    "icon":    "global NEXT\nprocedure STEP(n);\n  write(\"step \", n);\n  return NEXT(n) * 10;\nend\n",
    "raku":    "sub NEXT($n) { ... }\nsub STEP($n) { say \"step $n\"; NEXT($n) * 10 }\n",
}
BT_PICK = ("pick(X, R) :- member(X, [1, 2, 3]), 'STEP'(X, R).\n:- pick(X, R), R > 25, write('answer '), write(X), write(' '), write(R), nl.\n"
           ":- findall(R, pick(_, R), L), write(L), nl.\n")
BT_REF = "step 1\nstep 2\nanswer 2 30\nstep 1\nstep 2\nstep 3\n[20,30,40]\n"

def notebook(cells):
    return {"nbformat": 4, "nbformat_minor": 5,
            "metadata": {"kernelspec": {"name": "scrip", "display_name": "SCRIP", "language": "scrip"}},
            "cells": [{"cell_type": "code", "id": "c%d" % i, "execution_count": None, "outputs": [],
                       "metadata": {"scrip": {"language": lang}},
                       "source": ("%%" + lang + "\n" + src).splitlines(keepends=True)} for i, (lang, src) in enumerate(cells)]}

def pair_files(kind, cells_of, langs, ref):
    """{relative path: text} of one set: for each pair the SCRIPtix document, the Jupyter notebook, its one answer NAME.out (the files form's name; no NAME.ref stands
    beside it, and one on disk reads as drift), and the set's ALL.csv, the index the harness grades from. A pair of the structure sets is THREE cells: A makes the
    structure, B reads it and makes one back, A reads that; a language with no such structure (Pascal and Prolog have no table) has no pair in that set."""
    files, rows = {}, []
    for a in langs:
        for b in langs:
            cells = cells_of(a, b)
            n = "%s_to_%s" % (a, b)
            md = "\n".join("```%s\n%s```\n" % (l, s) for l, s in cells)
            files[n + ".md"] = md
            files[n + ".ipynb"] = json.dumps(notebook(cells), indent=1) + "\n"
            files[n + ".out"] = ref
            rows.append("%d,%s,%s.md,tests__scriptix_%s/%s,scriptix-%s,%d,0,131072,4096,120,,,"
                        % (len(rows) + 1, n, n, kind, n, kind, md.count("\n")))
    files["ALL.csv"] = "rank,entry,path,origin,package,n_lines,want_rc,heap_kb,stack_kb,timeout_s,compile_args,fixtures,grader\n" + "\n".join(rows) + "\n"
    return files

def backtrack_files(kind, cells_of, langs, ref):
    """{relative path: text} of the backtracking set: the same files as pair_files, the entries named backtrack_past_LANG (cell 1 is Prolog here, so A_to_B would say the wrong thing)."""
    files, rows = {}, []
    for lang in langs:
        cells = cells_of(lang, lang)
        n = "backtrack_past_%s" % lang
        md = "\n".join("```%s\n%s```\n" % (l, s) for l, s in cells)
        files[n + ".md"] = md
        files[n + ".ipynb"] = json.dumps(notebook(cells), indent=1) + "\n"
        files[n + ".out"] = ref
        rows.append("%d,%s,%s.md,tests__scriptix_%s/%s,scriptix-%s,%d,0,131072,4096,120,,," % (len(rows) + 1, n, n, kind, n, kind, md.count("\n")))
    files["ALL.csv"] = "rank,entry,path,origin,package,n_lines,want_rc,heap_kb,stack_kb,timeout_s,compile_args,fixtures,grader\n" + "\n".join(rows) + "\n"
    return files

def set_files(kind, cells_of, langs, ref):
    return (backtrack_files if kind == "backtracking" else pair_files)(kind, cells_of, langs, ref)

TREE_DECL = {
    "snobol4": "        DATA('tree(t,v,n,c)')\nEND\n",
    "snocone": "DATA('tree(t,v,n,c)');\n",
    "rebus":   "record tree(t, v, n, c)\nfunction main()\nend\n",
    "icon":    "record tree(t, v, n, c)\n",
    "pascal":  "{$mode objfpc}\nprogram decl;\n" + PAS_TREE + "begin\nend.\n",
    "raku":    "class tree { has $.t; has $.v; has $.n; has $.c; }\n",
}

def structure_cells(kind):
    def cells(a, b):
        three = [(a, STRUCT_DEF[kind][a]), (b, struct_use(kind, b, a)), (a, struct_fin(kind, a, b))]
        return [(b, TREE_DECL[b])] + three if kind == "records" and a == "prolog" and b != "prolog" else three
    return cells

SETS = tuple((k, (lambda d, u: (lambda a, b: [(a, d[a]), (b, u(b, a))]))(dd, uu), LANGS, REF[k]) for k, dd, uu in (("variables", VAR_DEF, var_use), ("functions", FUN_DEF, fun_use))) + \
       tuple((k, structure_cells(k), STRUCT_LANGS[k], STRUCT_REF[k]) for k in ("records", "sequences", "tables")) + \
       (("backtracking", lambda a, b: [("prolog", BT_NEXT), (a, BT_STEP[a]), ("prolog", BT_PICK)], ["snobol4", "icon", "raku"], BT_REF),)

def write_all(out):
    for kind, cells_of, langs, ref in SETS:
        d = os.path.join(out, kind); os.makedirs(d, exist_ok=True)
        for rel, text in set_files(kind, cells_of, langs, ref).items():
            with open(os.path.join(d, rel), "w") as f:
                f.write(text)

def check(here):
    """rc 0 when every file the generator writes is on disk with its bytes and no pair file of a set is on disk that it does not write; rc 1
    naming the first file that drifted (a hand edit of a pair reads red here)."""
    for kind, cells_of, langs, ref in SETS:
        want, d = set_files(kind, cells_of, langs, ref), os.path.join(here, kind)
        for rel, text in want.items():
            p = os.path.join(d, rel)
            if not os.path.isfile(p):
                print("DRIFT %s/%s: missing" % (kind, rel)); return 1
            if open(p).read() != text:
                print("DRIFT %s/%s: differs from what make_pairs.py writes" % (kind, rel)); return 1
        for rel in sorted(os.listdir(d)):
            if rel not in want and rel.endswith((".md", ".ipynb", ".ref", ".out")):
                print("DRIFT %s/%s: no pair writes it" % (kind, rel)); return 1
    print("PAIRS-OK %d files in %d sets equal what make_pairs.py writes" % (sum(len(set_files(k, c, l, r)) for k, c, l, r in SETS), len(SETS)))
    return 0

def main():
    here = os.path.dirname(os.path.abspath(__file__))
    a = sys.argv[1:]
    if a == ["--check"]:
        return check(here)
    if len(a) == 2 and a[0] == "--out":
        write_all(a[1]); return 0
    if not a:
        write_all(here); return 0
    print("usage: make_pairs.py [--out DIR | --check]   (no argument writes beside this file; --check reads the files beside it and writes nothing)", file=sys.stderr)
    return 2

sys.exit(main())
