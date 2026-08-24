#!/usr/bin/env python3
# calculator-gen.py -- deterministic input generator for calculator.sno (s144).
# Pure MINSTD LCG (no random module) so the byte stream is reproducible forever.
# Safety rules: every '/' is a term SUFFIX whose entire right tail is one
# nonzero literal digit, so under the right-associative grammar no divide by
# zero is reachable; <=4 '*' and <=2 '/' per line; atoms <=99; paren depth
# <=2; line length <=40; every line parses (the bench rep harness treats a
# parse failure as fatal, so committed input must be 100% valid).
import sys
state = 20260724
def rnd(n):
    global state
    state = (state * 48271) % 2147483647
    return state % n
LETTERS = 'abcdefghijklmnopqrstuvwxyz'
def atom(depth, muls, divs):
    r = rnd(12)
    if r < 4:
        return LETTERS[rnd(26)]
    if r < 9:
        return str(rnd(10))
    if r < 10:
        return str(10 + rnd(90))
    if depth < 2:
        return '(' + expr(depth + 1, muls, divs) + ')'
    return str(rnd(10))
def factor(depth, muls, divs):
    s = ''
    if rnd(5) == 0:
        s += '-' if rnd(3) else '+'
        if rnd(3) == 0:
            s += '-' if rnd(3) else '+'
    return s + atom(depth, muls, divs)
def term(depth, muls, divs):
    parts = [factor(depth, muls, divs)]
    while rnd(3) == 0 and muls[0] > 0:
        muls[0] -= 1
        parts.append(factor(depth, muls, divs))
    s = '*'.join(parts)
    if rnd(4) == 0 and divs[0] > 0:
        divs[0] -= 1
        s += '/' + str(1 + rnd(9))
    return s
def expr(depth, muls, divs):
    out = term(depth, muls, divs)
    nterms = 1
    while rnd(3) != 0 and nterms < 4 and len(out) < 26:
        out += ('-' if rnd(2) else '+') + term(depth, muls, divs)
        nterms += 1
    return out
def line():
    while True:
        s = expr(0, [4], [2])
        if len(s) <= 40:
            return s
n = int(sys.argv[1]) if len(sys.argv) > 1 else 2208
for _ in range(n):
    print(line())
