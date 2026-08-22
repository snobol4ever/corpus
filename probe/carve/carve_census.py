import re,sys
LAB=re.compile(r'^([A-Za-z_][A-Za-z0-9_]*)_(α|β|γ|ω):')
JMP=re.compile(r'jmp\s+([A-Za-z_.][A-Za-z0-9_.αβγω]*)')
def boxes(path):
    out=[];cur=None
    for ln in open(path):
        m=LAB.match(ln)
        if m:
            if cur:out.append(cur)
            cur={'port':m.group(2),'label':m.group(1)+'_'+m.group(2),'lines':[ln]}
        elif cur is not None: cur['lines'].append(ln)
    if cur:out.append(cur)
    for b in out:
        body=''.join(b['lines'])
        b['carve16']=len(re.findall(r'sub\s+rsp,\s*16\b',body))
        b['othermove']=len(re.findall(r'add\s+rsp,\s*\d+',body))+len(re.findall(r'sub\s+rsp,\s*(?!16\b)\d+',body))
        b['jmps']=JMP.findall(body)
        b['last']=b['jmps'][-1] if b['jmps'] else None
    return out
def stretches(al,strict):
    st=[];i=0
    while i<len(al):
        run=[i]
        while run[-1]+1<len(al):
            c=al[run[-1]];n=al[run[-1]+1]
            ok=(c['carve16']==1 and c['othermove']==0 and c['last']==n['label'] and n['carve16']==1)
            if strict: ok = ok and all(j==n['label'] for j in c['jmps'])
            if not ok:break
            run.append(run[-1]+1)
        if len(run)>=2: st.append([al[k] for k in run])
        i=run[-1]+1
    return st
def report(path,tag,restrict=None):
    bs=boxes(path); al=[b for b in bs if b['port']=='α']
    if restrict: al=[b for b in al if restrict(b['label'])]
    carves=sum(b['carve16'] for b in al)
    for strict,name in ((False,'BRIEF criterion'),(True,'SAFE (all exits -> next α)')):
        st=stretches(al,strict); rem=sum(len(r)-1 for r in st)
        ml=sum(len(r) for r in st)/len(st) if st else 0
        print("%-14s %-30s carves=%3d removable=%3d (%2.0f%%) stretches=%2d mean_len=%.2f"%(tag,name,carves,rem,100.0*rem/carves if carves else 0,len(st),ml))
    return al
if __name__=='__main__': report(sys.argv[1],'whole-file')
