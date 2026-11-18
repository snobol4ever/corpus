#!/usr/bin/env python3
# THE CROSS-LANGUAGE PAIRS (the cao 2026-11-18, on Lon's four words of that morning through the chairman).
# One table, two sets (variables, functions), the full square of the seven languages (49 ordered pairs each,
# a language against itself included). THE SOURCE OF TRUTH IS THIS TABLE: it writes each pair's SCRIPtix
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
    "icon":    "global COUNT, WORD;\nprocedure main();\n  COUNT := 7;\n  WORD := \"seven\";\nend\n",
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
        "icon":    "global COUNT, WORD;\nprocedure main();\n  write(\"count \", COUNT);\n  write(\"word \", WORD);\nend\n",
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
        "icon":    ("" if same else "global TWICE, SHOUT;\n") +
                   "procedure main();\n  write(\"twice \", TWICE(7));\n  write(\"shout \", SHOUT(\"seven\"));\nend\n",
        "pascal":  ("{$mode objfpc}\nprogram use;\n" if same else
                    "{$mode objfpc}\nprogram use;\nfunction TWICE(n: integer): integer; external name 'TWICE';\nfunction SHOUT(s: string): string; external name 'SHOUT';\n") +
                   "begin\n  writeln('twice ', TWICE(7));\n  writeln('shout ', SHOUT('seven'))\nend.\n",
        "prolog":  ":- 'TWICE'(7, R), write('twice '), write(R), nl.\n:- 'SHOUT'(seven, R), write('shout '), write(R), nl.\n",
        "raku":    ("" if same else "sub TWICE($n) { ... }\nsub SHOUT($s) { ... }\n") +
                   "say \"twice {TWICE(7)}\";\nsay \"shout {SHOUT('seven')}\";\n",
    }[b]

REF = {"variables": "count 7\nword seven\n", "functions": "twice 14\nshout seven!\n"}

def notebook(cells):
    return {"nbformat": 4, "nbformat_minor": 5,
            "metadata": {"kernelspec": {"name": "scrip", "display_name": "SCRIP", "language": "scrip"}},
            "cells": [{"cell_type": "code", "id": "c%d" % i, "execution_count": None, "outputs": [],
                       "metadata": {"scrip": {"language": lang}},
                       "source": src.splitlines(keepends=True)} for i, (lang, src) in enumerate(cells)]}

def pair_files(kind, defs, use):
    """{relative path: text} of one set: for each pair the SCRIPtix document, the Jupyter notebook, its one answer NAME.out (the files form's name; no NAME.ref stands
    beside it, and one on disk reads as drift), and the set's ALL.csv, the index the harness grades from."""
    files, rows = {}, []
    for a in LANGS:
        for b in LANGS:
            cells = [(a, defs[a]), (b, use(b, a))]
            n = "%s_to_%s" % (a, b)
            md = "\n".join("```%s\n%s```\n" % (l, s) for l, s in cells)
            files[n + ".md"] = md
            files[n + ".ipynb"] = json.dumps(notebook(cells), indent=1) + "\n"
            files[n + ".out"] = REF[kind]
            rows.append("%d,%s,%s.md,tests__scriptix_%s/%s,scriptix-%s,%d,0,131072,4096,120,,,kernel-road"
                        % (len(rows) + 1, n, n, kind, n, kind, md.count("\n")))
    files["ALL.csv"] = "rank,entry,path,origin,package,n_lines,want_rc,heap_kb,stack_kb,timeout_s,compile_args,fixtures,grader\n" + "\n".join(rows) + "\n"
    return files

SETS = (("variables", VAR_DEF, var_use), ("functions", FUN_DEF, fun_use))

def write_all(out):
    for kind, defs, use in SETS:
        d = os.path.join(out, kind); os.makedirs(d, exist_ok=True)
        for rel, text in pair_files(kind, defs, use).items():
            with open(os.path.join(d, rel), "w") as f:
                f.write(text)

def check(here):
    """rc 0 when every file the generator writes is on disk with its bytes and no pair file of a set is on disk that it does not write; rc 1
    naming the first file that drifted (a hand edit of a pair reads red here)."""
    for kind, defs, use in SETS:
        want, d = pair_files(kind, defs, use), os.path.join(here, kind)
        for rel, text in want.items():
            p = os.path.join(d, rel)
            if not os.path.isfile(p):
                print("DRIFT %s/%s: missing" % (kind, rel)); return 1
            if open(p).read() != text:
                print("DRIFT %s/%s: differs from what make_pairs.py writes" % (kind, rel)); return 1
        for rel in sorted(os.listdir(d)):
            if rel not in want and rel.endswith((".md", ".ipynb", ".ref", ".out")):
                print("DRIFT %s/%s: no pair writes it" % (kind, rel)); return 1
    print("PAIRS-OK %d files in %d sets equal what make_pairs.py writes" % (sum(len(pair_files(k, d, u)) for k, d, u in SETS), len(SETS)))
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
