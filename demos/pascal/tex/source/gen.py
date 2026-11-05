#!/usr/bin/env python3
"""gen.py -- builds tex.pas, Knuth's TeX as an ISO 7185 program, from source/tex.web and source/tex.ch.

    python3 source/gen.py tex.pas [--check]

1. TANGLE (the system tangle) applies source/tex.ch to source/tex.web and writes tex.p and tex.pool in a scratch directory.
2. Every `others:` arm of a case statement (Pascal-H's default, not ISO 7185) becomes `begin if <selector is one of the labels> then case ... end else <default> end`.
3. The embedded documents (the string pool, plain.tex, hyphen.tex, story.tex, sample.tex and the Computer Modern TFM files) replace the stub
   `procedure embload;begin end;` as calls of `embchunkin`, each a 240-character literal: ISO 7185 has no way to open a named file.
--check compares the result with the committed tex.pas and exits 1 when they differ.
"""
import os, re, subprocess, sys, tempfile
here = os.path.dirname(os.path.abspath(__file__))
TEXT_MAX = 220800
DOCS_MAX = 52
TOK = re.compile(r"\{[^}]*\}|'(?:[^']|'')*'|[A-Za-z][A-Za-z0-9]*|\d+(?:\.\d+)?(?:[eE][+-]?\d+)?|:=|<=|>=|<>|\.\.|\S")
def tokens(text):
    out = []
    for m in TOK.finditer(text):
        t = m.group(0)
        if t[0] == '{':
            continue
        out.append((t, m.start(), m.end()))
    return out
def find_case(text):
    toks = tokens(text)
    stack = []
    best = None
    i = 0
    n = len(toks)
    while i < n:
        t = toks[i][0]
        tl = t.lower()
        top = None
        for f in reversed(stack):
            if f['k'] != 'paren':
                top = f
                break
        if tl == 'case':
            if top is not None and top['k'] == 'record':
                pass
            else:
                stack.append({'k': 'case', 'start': i, 'of': None, 'state': 'sel', 'labels': [], 'cur': [], 'others': None, 'colon': None})
        elif tl == 'of' and stack and stack[-1]['k'] == 'case' and stack[-1]['of'] is None:
            stack[-1]['of'] = i
            stack[-1]['state'] = 'lab'
        elif tl in ('begin', 'record', 'repeat'):
            stack.append({'k': tl})
        elif t in ('(', '['):
            stack.append({'k': 'paren'})
        elif t in (')', ']'):
            stack.pop()
        elif tl == 'until':
            stack.pop()
        elif tl == 'end':
            f = stack.pop()
            if f['k'] == 'case' and f['others'] is not None:
                f['end'] = i
                if best is None or f['others'] > best['others']:
                    best = f
        elif stack and stack[-1]['k'] == 'case' and stack[-1]['of'] is not None:
            f = stack[-1]
            if f['state'] == 'lab':
                if t == ':':
                    f['state'] = 'stmt'
                    if f['cur'] and f['cur'][0][0].lower() == 'others':
                        f['others'] = f['cur'][0][3]
                        f['colon'] = i
                    else:
                        f['labels'].append(f['cur'])
                    f['cur'] = []
                elif t == ',':
                    f['labels'].append(f['cur'])
                    f['cur'] = []
                else:
                    f['cur'].append((t, toks[i][1], toks[i][2], i))
            elif f['state'] == 'stmt':
                if t == ';':
                    f['state'] = 'lab'
        i += 1
    return toks, best
def label_value(parts):
    s = ''.join(p[0] for p in parts)
    if re.fullmatch(r'-?\d+', s):
        return int(s)
    return None
def condition(sel, labels):
    vals = []
    other = []
    for lab in labels:
        if not lab:
            continue
        v = label_value(lab)
        text = ''.join(p[0] for p in lab)
        if v is None:
            other.append('(' + sel + '=' + text + ')')
        else:
            vals.append(v)
    vals = sorted(set(vals))
    runs = []
    for v in vals:
        if runs and runs[-1][1] + 1 == v:
            runs[-1][1] = v
        else:
            runs.append([v, v])
    cond = []
    for a, b in runs:
        if a == b:
            cond.append('(' + sel + '=' + str(a) + ')')
        elif b == a + 1:
            cond.append('(' + sel + '=' + str(a) + ')or(' + sel + '=' + str(b) + ')')
        else:
            cond.append('((' + sel + '>=' + str(a) + ')and(' + sel + '<=' + str(b) + '))')
    cond.extend(other)
    return 'or'.join(cond) if cond else 'false'
def one(text):
    toks, f = find_case(text)
    if f is None:
        return text, None
    sel = re.sub(r'\s*\n\s*', ' ', text[toks[f['start']][2]:toks[f['of']][1]].strip())
    arms_a = toks[f['of']][2]
    others_tok = f['others']
    arms = text[arms_a:toks[others_tok][1]]
    dflt = text[toks[f['colon']][2]:toks[f['end']][1]].strip()
    arms_s = arms.strip()
    if arms_s.endswith(';'):
        arms_s = arms_s[:-1]
    labels = f['labels']
    if not any(labels):
        new = 'begin ' + dflt + ' end'
    else:
        cond = condition(sel, labels)
        new = 'begin if ' + cond + ' then case ' + sel + ' of ' + arms_s + ' end'
        if dflt:
            new += ' else ' + dflt
        new += ' end'
    return text[:toks[f['start']][1]] + new + text[toks[f['end']][2]:], sel
def convert(text):
    sels = []
    while True:
        text, sel = one(text)
        if sel is None:
            break
        sels.append(sel)
    return text, sels

CH = 240
def text_doc(path):
    lines = open(path, 'rb').read().decode('latin-1').split('\n')
    if lines and lines[-1] == '':
        lines.pop()
    out = []
    for ln in lines:
        ln = ln.rstrip(' ').rstrip('\r')
        assert len(ln) <= 90, (path, ln)
        for c in ln:
            assert 32 <= ord(c) < 127, (path, repr(ln))
        out.append(chr(32 + len(ln)) + ln)
    return ''.join(out)
def tfm_doc(path):
    return open(path, 'rb').read().hex()
def build(docs):
    stream = ''
    table = []
    for name, data in docs:
        table.append((name, len(stream) + 1, len(data)))
        stream += data
    return stream, table
def pascal_literal(s):
    return "'" + s.replace("'", "''") + "'"
def procedure(stream, table, text_max, docs_max):
    chunks = [stream[i:i + CH] for i in range(0, len(stream), CH)]
    chunks[-1] = chunks[-1].ljust(CH, ' ')
    assert len(chunks) * CH <= text_max, (len(chunks) * CH, text_max)
    assert len(table) <= docs_max
    lines = []
    per = 40
    parts = (len(chunks) + per - 1) // per
    for p in range(parts):
        lines.append('procedure embpart%d;' % p)
        lines.append('begin')
        for c in chunks[p * per:(p + 1) * per]:
            lines.append('embchunkin(%s);' % pascal_literal(c))
        lines.append('end;')
    lines.append('procedure embload;')
    lines.append('begin embtotal:=0;')
    for p in range(parts):
        lines.append('embpart%d;' % p)
    lines.append('embdocs:=%d;' % len(table))
    for i, (name, start, ln) in enumerate(table, 1):
        lines.append("embdoc(%d,%s,%d,%d);" % (i, pascal_literal(name.ljust(16)), start, ln))
    lines.append('end;')
    return '\n'.join(lines) + '\n'

def main():
    out = sys.argv[1]
    work = tempfile.mkdtemp(prefix='texgen.')
    r = subprocess.run(['tangle', os.path.join(here, 'tex.web'), os.path.join(here, 'tex.ch')], cwd=work, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    if r.returncode != 0 or 'No errors were found' not in r.stdout:
        sys.stderr.write(r.stdout)
        raise SystemExit(2)
    p = open(os.path.join(work, 'tex.p')).read()
    p, sels = convert(p)
    docs = [('TEX.POOL', text_doc(os.path.join(work, 'tex.pool')))]
    for n in ('plain.tex', 'hyphen.tex', 'story.tex', 'sample.tex'):
        docs.append((n, text_doc(os.path.join(here, n))))
    for f in sorted(os.listdir(os.path.join(here, 'tfm'))):
        docs.append((f, tfm_doc(os.path.join(here, 'tfm', f))))
    stream, table = build(docs)
    stub = 'procedure embload;begin end;'
    assert p.count(stub) == 1
    p = p.replace(stub, procedure(stream, table, TEXT_MAX, DOCS_MAX).rstrip('\n'))
    if len(sys.argv) > 2 and sys.argv[2] == '--check':
        same = os.path.exists(out) and open(out).read() == p
        print('tex.pas %s' % ('is current' if same else 'DIFFERS from the generator output'))
        raise SystemExit(0 if same else 1)
    open(out, 'w').write(p)
    print('%d cases, %d documents, %d embedded characters, %s %d bytes' % (len(sels), len(table), len(stream), out, len(p)))
if __name__ == '__main__':
    main()
