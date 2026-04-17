# -*- coding: utf-8 -*-
# assignment3_dump.py — dump mem and bank structures only, no classify/versus
# Patched from assignment3.py by removing classify/register/versus.
from SNOBOL4python import GLOBALS, TRACE, ε, σ, π, λ, Λ, ζ, θ, Θ, φ, Φ, α, ω
from SNOBOL4python import ABORT, ANY, ARB, ARBNO, BAL, BREAK, BREAKX, FAIL
from SNOBOL4python import FENCE, LEN, MARB, MARBNO, NOTANY, POS, REM, RPOS
from SNOBOL4python import RTAB, SPAN, SUCCEED, TAB
from SNOBOL4python import ALPHABET, DIGITS, UCASE, LCASE
from SNOBOL4python import nPush, nInc, nPop, Shift, Reduce, Pop
from pprint import pprint, PrettyPrinter
import json, sys
ppr = PrettyPrinter(indent=2, width=80)
#------------------------------------------------------------------------------
def init_list(v): return λ(f"{v} = None") + λ(f"tags = dict()") + λ(f"stack = []")
def push_list(v): return λ(f"count_tag({v})") + λ(f"stack.append(list())") + λ(f"stack[-1].append({v})")
def push_item(v): return λ(f"stack[-1].append({v})")
def pop_list():   return λ(f"stack[-2].append(tuple(stack.pop()))")
def pop_final(v): return λ(f"{v} = tuple(stack.pop())")
#------------------------------------------------------------------------------
delim       =   SPAN(" \n")
word        =   NOTANY("( )\n") + BREAK("( )\n")
group       =   ( σ('(')
                + word % "tag"
                + push_list("tag")
                + ARBNO(
                    delim
                  + ( ζ(lambda: group)
                    | word % "wrd" + push_item("wrd")
                    )
                  )
                + pop_list()
                + σ(')')
                )
treebank    =   ( POS(0)
                + init_list("bank")
                + push_list("'BANK'")
                + ARBNO(
                    push_list("'ROOT'")
                  + ARBNO(group)
                  + pop_list()
                  + delim
                  )
                + pop_final("bank")
                + RPOS(0)
                )
#------------------------------------------------------------------------------
def count_tag(tag): pass  # no-op for dump
#------------------------------------------------------------------------------
claws_info = \
    ( POS(0)
    + λ("mem = dict()")
    + ARBNO(
        ( SPAN(DIGITS) % "num" + σ('_CRD :_PUN')
        + λ("num = int(num)")
        + λ("mem[num] = dict()")
        | (NOTANY("_") + BREAK("_")) % "wrd"
        + σ('_')
        + (ANY(UCASE) + SPAN(DIGITS+UCASE)) % "tag"
        + λ("if wrd not in mem[num]:      mem[num][wrd] = dict()")
        + λ("if tag not in mem[num][wrd]: mem[num][wrd][tag] = 0")
        + λ("mem[num][wrd][tag] += 1")
        )
      + σ(' ')
      )
    + RPOS(0)
    )
#------------------------------------------------------------------------------
GLOBALS(globals())
with open("CLAWS5inTASA.dat", "r") as claws_file:
    lines = []
    while line := claws_file.readline():
        lines.append(line[0:-1])
    claws_data = ''.join(lines)
    if not claws_data in claws_info:
        print("claws_info FAIL", file=sys.stderr)
        sys.exit(1)

# Dump mem: sorted by sentence number, then word, then tag
print("=== MEM ===")
for sentno in sorted(mem.keys()):
    for wrd in sorted(mem[sentno].keys()):
        for tag in sorted(mem[sentno][wrd].keys()):
            print(f"{sentno}\t{wrd}\t{tag}\t{mem[sentno][wrd][tag]}")

#------------------------------------------------------------------------------
with open("VBGinTASA.dat", "r") as bank_file:
    bank_source = bank_file.read()
    if bank_source in POS(0) + BAL() + RPOS(0):
        if bank_source in treebank:
            print("=== BANK ===")
            ppr.pprint(bank)
        else:
            print("treebank FAIL", file=sys.stderr)
    else:
        print("BAL FAIL", file=sys.stderr)
