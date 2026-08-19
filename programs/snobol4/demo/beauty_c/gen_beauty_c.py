#!/usr/bin/env python3
# gen_beauty_c.py — GENERATE beauty_c from ../beauty (never hand-edit beauty_c outputs; edit WAVE1 or this
# transformer and re-run).  Wave-1 = the 59 measured single-assignment grammar patterns of beauty.sno
# (s145 inventory: 180 names, 137 once-assigned, 62 pattern-shaped, minus 3 call-duals nPush/nPop/nInc).
# Transform: every wave-name token -> &name (defs AND refs, so *X -> *&X), skipping quoted strings, comment/
# control lines, goto fields (labels!), col-1 label tokens, call syntax name(, and already-&/captured tokens.
# Fixed point law: beauty_c beautifying CLASSIC beauty.sno must emit beauty.sno byte-identically.
import re, glob, os
WAVE1 = """BuiltinVar BuiltinVars Commands Comment Control DQ Expr Expr0 Expr1 Expr10 Expr11 Expr12 Expr13
Expr14 Expr15 Expr17 Expr2 Expr3 Expr4 Expr5 Expr6 Expr7 Expr8 Expr9 ExprList FGoto Function Functions Goto
Gray Id Integer Label Parse ProtKwd ProtKwds Real SGoto SQ SorF Space SpecialNm SpecialNms Stmt String TV TW
TX Target TxInList UnprotKwd White X3 X4 XList nDec pop reduce shift""".split()
pat = re.compile(r'\b(' + '|'.join(map(re.escape, sorted(WAVE1, key=len, reverse=True))) + r')\b')
def transform_line(l):
    if l[:1] in ('*','-'): return l
    q=None; mask=[]
    for c in l:
        if q:
            mask.append(True)
            if c==q: q=None
        elif c in "'\"": q=c; mask.append(True)
        else: mask.append(False)
    u=''.join(' ' if m else c for c,m in zip(l,mask))
    g=re.search(r':\s*[SF]?\s*[(<]', u); limit=g.start() if g else len(l)
    lab=re.match(r'^[^\s]+', l); start=lab.end() if lab else 0
    spans=[]
    for m in pat.finditer(l):
        a,b=m.span()
        if a<start or a>=limit or any(mask[a:b]): continue
        if b<len(l) and l[b]=='(': continue
        if a>0 and l[a-1] in '&.$': continue
        spans.append((a,b))
    res=[]; last=0
    for a,b in spans: res.append(l[last:a]); res.append('&'+l[a:b]); last=b
    res.append(l[last:]); return ''.join(res)
here=os.path.dirname(os.path.abspath(__file__)); src=os.path.join(here,'..','beauty')
for f in ['beauty.sno']+sorted(os.path.basename(p) for p in glob.glob(src+'/*.inc')):
    lines=open(os.path.join(src,f),encoding='utf-8',errors='replace').read().split('\n')
    out='\n'.join(transform_line(l) for l in lines)
    open(os.path.join(here,'beauty_c.sno' if f=='beauty.sno' else f),'w',encoding='utf-8').write(out)
print("regenerated beauty_c from ../beauty")
