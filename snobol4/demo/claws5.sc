// claws5.sc — CLAWS5 POS-tagged corpus tokenizer (Snocone, one-phase)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --run claws5.sc < claws5.input
// Memory: scrip --run needs -P 34000 for full corpus (CLAWS5inTASA.dat).
//         claws5.input (4 sentences) runs without -P flag.
//------------------------------------------------------------------------------
DIGITS  = '0123456789';
UCASE   = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
//------------------------------------------------------------------------------
function new_sent() {
    sentno      = +num;
    mem[sentno] = TABLE();
    new_sent    = .dummy;
    nreturn;
}
//------------------------------------------------------------------------------
function add_tok() {
    if (DIFFER(mem[sentno][wrd])) mem[sentno][wrd] = TABLE();
    if (DIFFER(mem[sentno][wrd][tag])) mem[sentno][wrd][tag] = 1;
    else mem[sentno][wrd][tag] = mem[sentno][wrd][tag] + 1;
    add_tok = .dummy;
    nreturn;
}
//------------------------------------------------------------------------------
function pp_mem(mem,
        ssk, si, sentno, wsk, wi, wkey, wq, wrd,
        tsk, ti, tag, tv, tline, pfx, pad,
        next_wkey, last_sent, lline, ns) {
    ssk             =   SORT(mem);
    si              =   0;
    ns              =   0;
    while (DIFFER(ssk[ns + 1, 1])) {
        ns          =   ns + 1;
    }
    si              =   0;
    while (DIFFER(ssk[si + 1, 1])) {
        si          =   si + 1;
        sentno      =   ssk[si, 1];
        last_sent   =   '';
        if (IDENT(si, ns)) last_sent = 1;
        pad         =   DUPL(' ', SIZE(sentno) + 4);
        if (EQ(si, 1)) pfx = '{'   sentno   ': {';
        if (NE(si, 1)) pfx = ' '   sentno   ': {';
        wsk         =   SORT(mem[sentno]);
        wi          =   0;
        while (DIFFER(wsk[wi + 1, 1])) {
            wi          =   wi + 1;
            wkey        =   wsk[wi, 1];
            next_wkey   =   '';
            next_wkey   =   wsk[wi + 1, 1];
            wrd         =   wkey;
            if (wrd ? (ARB   "'") = '') wq = '"'   wkey   '"';
            else                         wq = "'"   wkey   "'";
            tsk         =   SORT(mem[sentno][wkey]);
            ti          =   0;
            tline       =   '{';
            while (DIFFER(tsk[ti + 1, 1])) {
                ti      =   ti + 1;
                tag     =   tsk[ti, 1];
                tv      =   mem[sentno][wkey][tag];
                if (IDENT(tline, '{'))
                    tline  = tline   "'"   tag   "': "   tv;
                else tline = tline   ', '   "'"   tag   "': "   tv;
            }
            tline = tline   '}';
            if (GT(SIZE(next_wkey), 0)) {
                if (IDENT(wi, 1))
                    OUTPUT  =   pfx   wq   ': '   tline   ',';
                else OUTPUT =   pad   wq   ': '   tline   ',';
            } else {
                if (IDENT(wi, 1))
                    lline   =   pfx   wq   ': '   tline;
                else lline  =   pad   wq   ': '   tline;
                if (IDENT(last_sent, 1))
                    OUTPUT  =   lline   '}}';
                else OUTPUT =   lline   '},';
            }
        }
    }
    pp_mem          =   .dummy;
    return;
}
//------------------------------------------------------------------------------
claws =
    POS(0)
      ARBNO(
         ( (SPAN(DIGITS) . num)   '_CRD :_PUN'
             (epsilon . *new_sent())
         | (NOTANY('_')   BREAK('_')) . wrd
             '_'
             (ANY(UCASE)   SPAN(DIGITS   UCASE)) . tag
             (epsilon . *add_tok())
         )
           ' '
       )
      RPOS(0);
//------------------------------------------------------------------------------
// Canonical Snocone slurp idiom: while (line = INPUT) — assignment expression
// evaluates to FAIL on EOF, the while-test then fails, loop exits cleanly.
// (Per programs/snocone/report.md line 1240.)
while (line = INPUT) {
    src = src   line;
}
mem = TABLE();
if (src ? claws) pp_mem(mem);
else OUTPUT = 'Pattern match failed';
