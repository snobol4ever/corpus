#!/usr/bin/env python3
# gen_beauty_c.py — GENERATE beauty_c from ../beauty (never hand-edit beauty_c outputs; edit WAVE1 or this
# transformer and re-run).  Wave-1 = the 59 measured single-assignment grammar patterns of beauty.sno
# s145 inventory: 180 names, 137 once-assigned, 62 pattern-shaped; minus 3 call-duals (nPush/nPop/nInc) and,
# measured by beauty_c run 1 (error 341: &reduce resealed -- function-RESULT variables are assigned on every
# call), minus 7 DEFINE/OPSYN-tainted names (TV TW TX nDec pop reduce shift) = WAVE-1 the 52 pure grammar names.
# Transform: every wave-name token -> &name (defs AND refs, so *X -> *&X), skipping quoted strings, comment/
# control lines, goto fields (labels!), col-1 label tokens, call syntax name(, and already-&/captured tokens.
# Fixed point law: beauty_c beautifying CLASSIC beauty.sno must emit beauty.sno byte-identically.
import re, glob, os
WAVE1 = """BuiltinVar BuiltinVars Commands Comment Control DQ Expr Expr0 Expr1 Expr10
Expr11 Expr12 Expr13 Expr14 Expr15 Expr17 Expr2 Expr3 Expr4 Expr5
Expr6 Expr7 Expr8 Expr9 ExprList FGoto Function Functions Goto Gray
Id Integer Label Parse ProtKwd ProtKwds Real SGoto SQ SorF
Space SpecialNm SpecialNms Stmt String Target TxInList UnprotKwd White X3
X4 XList""".split()
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
    res.append(l[last:]); out=''.join(res)
    # ALIGNMENT COMPENSATION: a defining occurrence (name right after the leading indent) grew by one
    # '&' character, which would push the ppStop[2] '=' column right by one and break beauty's own
    # tab-stop convention (header: "ppStop[2] - pattern or ="). Drop one padding space to compensate,
    # restoring the original '=' column exactly -- this IS the beautified form, not a cosmetic add-on.
    m=re.match(r'^(\s+)&(\w+)( +)(=.*)$', out)
    if m and len(m.group(3))>=2: out=m.group(1)+'&'+m.group(2)+m.group(3)[:-1]+m.group(4)
    return out
here=os.path.dirname(os.path.abspath(__file__)); src=os.path.join(here,'..','beauty')
# CN-9b: the declaration statement, spliced in as the FIRST executable statement (right after the START
# label, BEFORE the -INCLUDEs whose transformed &name assignments are the constants being declared).
# Runtime-inert today (kwb_own[7] is born open) but load-bearing the day the namespace default flips to
# oracle-251 closed; also the honest program shape CN-9b's census measures against.
DECL=['* CN-9b (SN4-CONSTANTS CN-4): open the user-constant namespace before the first &name assignment',
      '                  &USER_DECLARED_CONSTANTS  =  1']
for f in ['beauty.sno']+sorted(os.path.basename(p) for p in glob.glob(src+'/*.inc')):
    lines=open(os.path.join(src,f),encoding='utf-8',errors='replace').read().split('\n')
    tl=[transform_line(l) for l in lines]
    if f=='beauty.sno':
        i=next(n for n,l in enumerate(tl) if l.rstrip()=='START'); tl[i+1:i+1]=DECL
    out='\n'.join(tl)
    open(os.path.join(here,'beauty_c.sno' if f=='beauty.sno' else f),'w',encoding='utf-8').write(out)
print("regenerated beauty_c from ../beauty")
