import json,re,sys
# the outline law (skill language-server, ruling of 2026-11-25 11:3x CST, reading (i)): a Snocone outline lists what the
# program declares: a DATA struct with its fields, a function with its parameters then its locals; no assignment.
nb=sys.argv[1]
cells=[''.join(c['source']) for c in json.load(open(nb))['cells'] if c['cell_type']=='code']
syms=[]
for ci,c in enumerate(cells):
    for li,l in enumerate(c.split('\n'),1):
        m=re.match(r"\s*DATA\('(\w+)\(([^)]*)\)'\)",l)
        if m:
            syms.append([m.group(1),"Struct",ci,li,None])
            syms+=[[f.strip(),"Field",ci,li,m.group(1)] for f in m.group(2).split(',') if f.strip()]
        m=re.match(r"\s*struct\s+(\w+)\s*\{([^}]*)\}",l)
        if m:
            syms.append([m.group(1),"Struct",ci,li,None])
            syms+=[[f.strip(),"Field",ci,li,m.group(1)] for f in m.group(2).split(',') if f.strip()]
        m=re.match(r"\s*function\s+(\w+)\s*\(([^)]*)\)\s*(?:local\s*\(([^)]*)\))?",l)
        if m:
            syms.append([m.group(1),"Function",ci,li,None])
            for g in (m.group(2),m.group(3) or ''):
                syms+=[[a.strip(),"Variable",ci,li,m.group(1)] for a in g.split(',') if a.strip()]
print(json.dumps(syms))
