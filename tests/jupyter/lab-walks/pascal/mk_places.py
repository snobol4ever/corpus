#!/usr/bin/env python3
# mk_places.py: the Pascal place scripts of the six acts (references, rename, signature, highlight, outline, colouring) in the cqo's LAW-OF-A-PLACE form
# (/home/resources/evidence/cqo/editor-first-2026-11-23/LAW-OF-A-PLACE.md, colouring of the eleven classes), developer_02 2026-11-23, written FROM THE PROGRAM:
# every expectation is read off the program's own text (a word's whole-word, case-blind occurrences outside strings and brace comments, scoped by the lines of
# the routine that declares it), never from a server's answer. For each of the five programs it writes into OUT/<p>/: <p>.ipynb (the clean notebook), <p>.edit.places
# (the places on it), <p>.fence.ipynb (the same with the line %%pascal first in cell 1, a fence) and <p>.fence.edit.places (the same places, resolved on the fence's text, plus the tag).
# usage: mk_places.py [OUT]   (reads each program's PROGRAM/PROGRAM.ipynb beside this file, writes into OUT, default the folder beside this file; a program whose folder is absent is skipped)
import json, os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = sys.argv[1] if len(sys.argv) > 1 else HERE
PROGRAMS = ['queens', 'qsort', 'hanoi', 'msort', 'records']
SRC = {n: os.path.join(HERE, n, n + '.ipynb') for n in PROGRAMS if os.path.exists(os.path.join(HERE, n, n + '.ipynb'))}


def blank(line):
    s = re.sub(r"'(?:[^']|'')*'", lambda m: ' ' * len(m.group(0)), line)
    return re.sub(r"\{[^}]*\}", lambda m: ' ' * len(m.group(0)), s)


class Prog:
    def __init__(self, path, fence):
        nb = json.load(open(path))
        self.nb = nb
        self.fence = fence
        self.cells = [''.join(c['source']) for c in nb['cells'] if c['cell_type'] == 'code']
        if fence:
            self.cells[1] = '%%pascal\n' + self.cells[1]
        self.lines = [c.split('\n') for c in self.cells]

    def L(self, c, l):
        return l + 1 if (self.fence and c == 1) else l

    def text(self, c, l):
        return self.lines[c][self.L(c, l) - 1]

    def cols(self, c, l, word):
        t = blank(self.text(c, l))
        return [m.start() + 1 for m in re.finditer(r'(?<![A-Za-z0-9_])' + re.escape(word) + r'(?![A-Za-z0-9_])', t, re.I)]

    def at(self, c, l, word, occ=1):
        k = self.cols(c, l, word)
        assert len(k) >= occ, (c, l, word, occ, self.text(c, l))
        return [c, self.L(c, l), k[occ - 1]]

    def after(self, c, l, word, occ=1, comma=0):
        # the cursor just after the opening parenthesis (comma 0) or just after the comma-th comma of the call that the word starts
        k = self.cols(c, l, word)[occ - 1]
        t = blank(self.text(c, l))
        i = k - 1 + len(word)
        assert t[i] == '(', (c, l, word, t)
        if comma == 0:
            return [c, self.L(c, l), i + 2]
        depth = 0
        n = 0
        for j in range(i, len(t)):
            ch = t[j]
            if ch in '([':
                depth += 1
            elif ch in ')]':
                depth -= 1
            elif ch == ',' and depth == 1:
                n += 1
                if n == comma:
                    return [c, self.L(c, l), j + 2]
        raise AssertionError((c, l, word, comma))

    def occs(self, word, cell=None, l0=1, l1=10 ** 6):
        r = []
        for c in ([cell] if cell is not None else range(len(self.cells))):
            for l in range(l0, min(l1, len(self.lines[c]) - (1 if not self.fence or c != 1 else 0)) + 1):
                if self.L(c, l) > len(self.lines[c]):
                    break
                for k in self.cols(c, l, word):
                    r.append([c, self.L(c, l), k])
        return r

    def kinds(self, word, write, cell=None, l0=1, l1=10 ** 6):
        # write: list of (cell, base line, occurrence on the line) that assign or declare; every other occurrence is a read
        w = set((c, self.L(c, l), o) for c, l, o in write)
        out = []
        for c in ([cell] if cell is not None else range(len(self.cells))):
            for l in range(l0, l1 + 1):
                if self.L(c, l) > len(self.lines[c]):
                    break
                for o, k in enumerate(self.cols(c, l, word), 1):
                    out.append([c, self.L(c, l), k, 'write' if (c, self.L(c, l), o) in w else 'read'])
        return out

    def renamed(self, word, new):
        def sub(line):
            keep = [(m.start(), m.end()) for m in re.finditer(r"'(?:[^']|'')*'|\{[^}]*\}", line)]
            out, i = '', 0
            for m in re.finditer(r'(?<![A-Za-z0-9_])' + re.escape(word) + r'(?![A-Za-z0-9_])', line, re.I):
                if any(a <= m.start() < b for a, b in keep):
                    continue
                out += line[i:m.start()] + new
                i = m.end()
            return out + line[i:]
        return ['\n'.join(sub(x) for x in c.split('\n')) for c in self.cells]


def build(name, fence):
    p = Prog(SRC[name], fence)
    A = []
    note = lambda s: A.append('# ' + s)
    def refs(c, l, w, o=1, **kw):
        A.append({'at': p.at(c, l, w, o), 'act': 'references', 'expect': {'places': p.occs(w, **kw)}})
    def ren(c, l, w, new, o=1, refused=False):
        if refused:
            A.append({'at': p.at(c, l, w, o), 'act': 'rename', 'new': new, 'expect': {'refused': True}})
        else:
            A.append({'at': p.at(c, l, w, o), 'act': 'rename', 'new': new, 'expect': {'cells': p.renamed(w, new)}})
    def sig(pos, label, active):
        A.append({'at': pos, 'act': 'signature', 'expect': {'label': label, 'active': active}})
    def hl(c, l, w, write, o=1, **kw):
        A.append({'at': p.at(c, l, w, o), 'act': 'highlight', 'expect': {'places': p.kinds(w, write, **kw)}})
    def col(c, l, w, cls, o=1):
        A.append({'at': p.at(c, l, w, o), 'act': 'colouring', 'expect': {'class': cls}})
    def none(act, why):
        A.append({'act': act, 'none': why})
    def outline(*syms):
        A.append({'act': 'outline', 'expect': {'symbols': [[n, k, c, p.L(c, l), par] for n, k, c, l, par in syms]}})

    note('PLACE SCRIPT of %s, the six acts, %s, in the form of LAW-OF-A-PLACE.md (the cqo): CELL from 0 among the code cells, LINE and COL from 1, the cursor on the word first character' % (name, 'on the FENCE variant (cell 1 begins with the line %%pascal)' if fence else 'on the clean notebook'))
    note('written FROM THE PROGRAM (developer_02 2026-11-23), never from a server answer: occurrences are whole-word, case-blind (Pascal), outside strings and brace comments, scoped by the lines of the routine that declares the name')
    note('the outline lists the globals, routines and types each cell declares in the order of the text (Variable, Function, Struct with its fields as Field children), a nested routine under its parent; never the program heading, a local or a parameter (the cqo ruled 15:0x)')
    note('a function name assigned in its own body (total := 0) is a use of the function symbol, a write: references, rename and highlight include it (the cqo ruled 15:0x)')

    if name == 'queens':
        refs(0, 26, 'place'); refs(1, 14, 'place')
        refs(0, 12, 'found'); refs(1, 15, 'found')
        ren(1, 10, 'found', 'count'); ren(0, 9, 'print', 'report', o=1); ren(0, 16, 'writeln', 'say', refused=True)
        sig(p.after(1, 14, 'place'), 'place(i: integer)', 0); sig(p.after(0, 26, 'place'), 'place(i: integer)', 0)
        none('signature', 'no user routine of queens takes a second parameter, so no place after a comma; write and writeln are variadic and have no one label (the cqo ruled 15:0x)')
        hl(0, 12, 'found', [(0, 8, 1), (0, 12, 1), (1, 7, 1), (1, 10, 1)])
        hl(0, 21, 'j', [(0, 19, 1), (0, 21, 1)], cell=0, l0=19, l1=28)
        hl(1, 11, 'i', [(1, 8, 1), (1, 11, 1), (1, 12, 1), (1, 13, 1)], cell=1)
        outline(('a', 'Variable', 0, 4, None), ('b', 'Variable', 0, 5, None), ('c', 'Variable', 0, 6, None), ('x', 'Variable', 0, 7, None), ('found', 'Variable', 0, 8, None),
                ('print', 'Function', 0, 9, None), ('place', 'Function', 0, 18, None),
                ('a', 'Variable', 1, 4, None), ('b', 'Variable', 1, 5, None), ('c', 'Variable', 1, 6, None), ('found', 'Variable', 1, 7, None), ('i', 'Variable', 1, 8, None))
        col(0, 2, 'program', 'keyword'); col(0, 11, 'begin', 'keyword'); col(0, 13, "'solution '", 'string') if False else None
        A.append({'at': [0, 13, p.cols(0, 13, 'write')[0] + 6], 'act': 'colouring', 'expect': {'class': 'string'}})
        col(0, 14, '1', 'number'); col(0, 18, 'place', 'function'); col(0, 16, 'writeln', 'function'); col(0, 12, 'found', 'variable', o=1)
        col(0, 12, ':=', 'operator') if False else A.append({'at': [0, 12, p.text(0, 12).index(':=') + 1], 'act': 'colouring', 'expect': {'class': 'operator'}})
        col(0, 10, 'integer', 'type'); col(0, 25, 'false', 'constant')
        none('colouring', 'comment and label: the program holds no comment (the {$mode objfpc} directive is asserted as no class) and the Pascal grammar has no label scope')
    elif name == 'qsort':
        refs(0, 29, 'QSort'); refs(1, 7, 'QuickSort'); refs(1, 6, 'PrintArray')
        refs(1, 7, 'a', cell=1); refs(0, 19, 'A', cell=0, l0=11, l1=34)
        ren(0, 29, 'QSort', 'Part'); ren(0, 17, 'Pivot', 'Mid'); ren(1, 6, 'a', 'values'); ren(0, 7, 'High', 'Top', refused=True)
        sig(p.after(1, 6, 'PrintArray'), 'PrintArray(const A: array of Integer)', 0); sig(p.after(1, 7, 'QuickSort'), 'QuickSort(var A: array of Integer)', 0)
        sig(p.after(0, 29, 'QSort'), 'QSort(L, R: Integer)', 0); sig(p.after(0, 29, 'QSort', comma=1), 'QSort(L, R: Integer)', 1); sig(p.after(0, 33, 'QSort', comma=1), 'QSort(L, R: Integer)', 1)
        none('signature', 'the fixed builtins High, Inc and Dec: builtin label not yet ruled (the cqo); Write and WriteLn are variadic and have no one label')
        hl(0, 19, 'Pivot', [(0, 13, 1), (0, 17, 1)], cell=0, l0=13, l1=30)
        hl(0, 29, 'QSort', [(0, 12, 1)])
        outline(('PrintArray', 'Function', 0, 3, None), ('QuickSort', 'Function', 0, 11, None), ('QSort', 'Function', 0, 12, 'QuickSort'), ('a', 'Variable', 1, 4, None))
        col(0, 2, 'program', 'keyword'); col(0, 6, 'Write', 'function'); col(0, 8, "', '", 'string') if False else A.append({'at': [0, 8, p.cols(0, 8, 'Write')[0] + 11], 'act': 'colouring', 'expect': {'class': 'string'}})
        col(0, 7, '0', 'number'); col(0, 11, 'QuickSort', 'function'); col(0, 4, 'I', 'variable')
        A.append({'at': [0, 16, p.text(0, 16).index(':=') + 1], 'act': 'colouring', 'expect': {'class': 'operator'}})
        col(0, 4, 'Integer', 'type'); col(0, 18, 'repeat', 'keyword')
        none('colouring', 'constant, comment and label: the program holds no constant (no True, False or nil), no comment and the Pascal grammar has no label scope')
    elif name == 'hanoi':
        refs(0, 19, 'hanoi'); refs(1, 12, 'hanoi'); refs(0, 12, 'moves'); refs(1, 8, 'moves'); refs(0, 20, 'peg'); refs(1, 11, 'peg'); refs(0, 22, 'report')
        refs(0, 19, 'src', cell=0, l0=15, l1=25); refs(0, 13, 'src', cell=0, l0=10, l1=14)
        ren(1, 8, 'moves', 'total'); ren(0, 19, 'hanoi', 'solve'); ren(0, 12, 'disk', 'plate') if False else ren(0, 10, 'disk', 'plate'); ren(0, 8, 'chr', 'letter', refused=True)
        sig(p.after(1, 12, 'hanoi'), 'hanoi(n, src, dst, via: integer)', 0); sig(p.after(1, 12, 'hanoi', comma=1), 'hanoi(n, src, dst, via: integer)', 1)
        sig(p.after(1, 12, 'hanoi', comma=3), 'hanoi(n, src, dst, via: integer)', 3); sig(p.after(0, 22, 'report'), 'report(disk, src, dst: integer)', 0)
        sig(p.after(0, 13, 'pegname'), 'pegname(p: integer): char', 0)
        none('signature', 'the fixed builtins chr and ord: builtin label not yet ruled (the cqo); writeln is variadic and has no one label')
        refs(0, 6, 'pegname'); ren(0, 6, 'pegname', 'nameof')
        hl(0, 6, 'pegname', [(0, 6, 1), (0, 8, 1)])
        hl(0, 12, 'moves', [(0, 5, 1), (0, 12, 1), (1, 5, 1), (1, 8, 1)])
        hl(1, 9, 'rounds', [(1, 6, 1), (1, 9, 1)], cell=1)
        outline(('peg', 'Variable', 0, 4, None), ('moves', 'Variable', 0, 5, None), ('pegname', 'Function', 0, 6, None), ('report', 'Function', 0, 10, None), ('hanoi', 'Function', 0, 15, None),
                ('peg', 'Variable', 1, 4, None), ('moves', 'Variable', 1, 5, None), ('rounds', 'Variable', 1, 6, None))
        col(0, 2, 'program', 'keyword'); col(0, 17, 'then', 'keyword'); A.append({'at': [0, 13, p.cols(0, 13, 'writeln')[0] + 8], 'act': 'colouring', 'expect': {'class': 'string'}})
        col(0, 17, '0', 'number'); col(0, 15, 'hanoi', 'function'); col(0, 13, 'writeln', 'function'); col(0, 20, 'peg', 'variable', o=1)
        A.append({'at': [0, 20, p.text(0, 20).index(':=') + 1], 'act': 'colouring', 'expect': {'class': 'operator'}}); col(0, 4, 'integer', 'type')
        none('colouring', 'constant, comment and label: the program holds no constant (no True, False or nil), no comment and the Pascal grammar has no label scope')
    elif name == 'msort':
        refs(0, 49, 'msort'); refs(1, 13, 'msort'); refs(0, 6, 'merges'); refs(1, 9, 'merges'); refs(1, 12, 'show'); refs(0, 51, 'merge')
        refs(0, 48, 'mid', cell=0, l0=44, l1=53); refs(0, 19, 'mid', cell=0, l0=15, l1=42)
        ren(1, 9, 'merges', 'passes'); ren(1, 12, 'show', 'dump'); ren(0, 23, 't', 'buf'); ren(0, 10, 'write', 'put', refused=True)
        sig(p.after(1, 13, 'msort'), 'msort(lo, hi: integer)', 0); sig(p.after(1, 13, 'msort', comma=1), 'msort(lo, hi: integer)', 1)
        sig(p.after(0, 51, 'merge'), 'merge(lo, mid, hi: integer)', 0); sig(p.after(0, 51, 'merge', comma=1), 'merge(lo, mid, hi: integer)', 1); sig(p.after(0, 51, 'merge', comma=2), 'merge(lo, mid, hi: integer)', 2)
        sig(p.after(1, 12, 'show'), 'show(const msg: string)', 0)
        none('signature', 'write and writeln are variadic and have no one label (the cqo ruled 15:0x); the program calls no fixed builtin')
        hl(0, 41, 'merges', [(0, 6, 1), (0, 41, 1), (1, 6, 1), (1, 9, 1)])
        hl(0, 46, 'lo', [(0, 43, 1)], cell=0, l0=43, l1=53)
        outline(('a', 'Variable', 0, 4, None), ('t', 'Variable', 0, 5, None), ('merges', 'Variable', 0, 6, None), ('show', 'Function', 0, 7, None), ('merge', 'Function', 0, 15, None), ('msort', 'Function', 0, 43, None),
                ('a', 'Variable', 1, 4, None), ('t', 'Variable', 1, 5, None), ('merges', 'Variable', 1, 6, None), ('n', 'Variable', 1, 7, None))
        col(0, 2, 'program', 'keyword'); col(0, 19, 'while', 'keyword'); A.append({'at': [1, p.L(1, 12) if False else 12, p.cols(1, 12, 'show')[0] + 5], 'act': 'colouring', 'expect': {'class': 'string'}}) if False else A.append({'at': [1, p.L(1, 12), p.text(1, 12).index("'") + 1], 'act': 'colouring', 'expect': {'class': 'string'}})
        col(0, 11, '12', 'number'); col(0, 43, 'msort', 'function'); col(0, 10, 'write', 'function'); col(0, 41, 'merges', 'variable', o=1)
        A.append({'at': [0, 48, p.text(0, 48).index(':=') + 1], 'act': 'colouring', 'expect': {'class': 'operator'}}); col(0, 4, 'integer', 'type')
        none('colouring', 'constant, comment and label: the program holds no constant (no True, False or nil), no comment and the Pascal grammar has no label scope')
    elif name == 'records':
        refs(1, 6, 'restock'); refs(1, 4, 'setup'); refs(0, 9, 'Item'); refs(0, 33, 'count'); refs(0, 28, 'qty'); refs(0, 28, 'items'); refs(1, 5, 'show')
        refs(0, 34, 'k', cell=0, l0=30, l1=35); refs(0, 28, 'k', cell=0, l0=26, l1=29)
        ren(0, 16, 'count', 'filled'); ren(1, 6, 'restock', 'refill'); ren(0, 9, 'Item', 'Part'); ren(1, 9, 'total', 'sum'); ren(0, 34, 'writeln', 'say', refused=True)
        sig(p.after(1, 6, 'restock'), 'restock(k, n: integer)', 0); sig(p.after(1, 6, 'restock', comma=1), 'restock(k, n: integer)', 1)
        sig(p.after(0, 21, 'put'), 'put(k: integer; nm: string; q, p: integer)', 0); sig(p.after(0, 21, 'put', comma=1), 'put(k: integer; nm: string; q, p: integer)', 1)
        sig(p.after(0, 21, 'put', comma=2), 'put(k: integer; nm: string; q, p: integer)', 2); sig(p.after(0, 21, 'put', comma=3), 'put(k: integer; nm: string; q, p: integer)', 3)
        sig(p.after(1, 9, 'total'), 'total(k: integer): integer', 0)
        none('signature', 'write and writeln are variadic and have no one label (the cqo ruled 15:0x); the program calls no fixed builtin')
        refs(1, 9, 'total'); refs(0, 39, 'total')
        hl(0, 36, 'total', [(0, 36, 1), (0, 39, 1), (0, 41, 1)])
        hl(1, 9, 'total', [(0, 36, 1), (0, 39, 1), (0, 41, 1)])
        hl(0, 33, 'count', [(0, 10, 1), (0, 16, 1), (0, 20, 1)])
        hl(0, 34, 'k', [(0, 31, 1), (0, 33, 1)], cell=0, l0=30, l1=35)
        outline(('Item', 'Struct', 0, 4, None), ('name', 'Field', 0, 5, 'Item'), ('qty', 'Field', 0, 6, 'Item'), ('price', 'Field', 0, 6, 'Item'), ('items', 'Variable', 0, 9, None), ('count', 'Variable', 0, 10, None), ('put', 'Function', 0, 11, None), ('setup', 'Function', 0, 18, None),
                ('restock', 'Function', 0, 26, None), ('show', 'Function', 0, 30, None), ('total', 'Function', 0, 36, None))
        col(0, 2, 'program', 'keyword'); col(0, 4, 'Item', 'type'); col(0, 21, "'bolt'", 'string') if False else A.append({'at': [0, 21, p.text(0, 21).index("'") + 1], 'act': 'colouring', 'expect': {'class': 'string'}})
        col(0, 21, '10', 'number'); col(0, 26, 'restock', 'function'); col(0, 34, 'writeln', 'function'); col(0, 16, 'count', 'variable', o=1)
        A.append({'at': [0, 16, p.text(0, 16).index(':=') + 1], 'act': 'colouring', 'expect': {'class': 'operator'}}); col(0, 36, 'function', 'keyword')
        none('colouring', 'constant, comment and label: the program holds no constant (no True, False or nil), no comment and the Pascal grammar has no label scope')
    if fence:
        A.append({'at': [1, 1, 1], 'act': 'colouring', 'expect': {'class': 'tag'}})
    return p, A


def main():
    for name in SRC:
        d = os.path.join(OUT, name)
        os.makedirs(d, exist_ok=True)
        for fence in (False, True):
            p, A = build(name, fence)
            suffix = '.fence' if fence else ''
            if fence:
                nb = json.loads(json.dumps(p.nb))
                ci = 0
                for c in nb['cells']:
                    if c['cell_type'] == 'code':
                        c['source'] = p.cells[ci].splitlines(True)
                        ci += 1
                        c['outputs'] = []
                        c['execution_count'] = None
                json.dump(nb, open(os.path.join(d, name + suffix + '.ipynb'), 'w'), indent=1)
            with open(os.path.join(d, name + suffix + '.edit.places'), 'w') as f:
                for a in A:
                    f.write(a if isinstance(a, str) else json.dumps(a, ensure_ascii=False))
                    f.write('\n')
            print(name + suffix, len([a for a in A if not isinstance(a, str)]), 'lines')


main()
