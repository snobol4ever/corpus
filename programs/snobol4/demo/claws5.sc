// claws5.sc — CLAWS5 POS-tagged corpus tokenizer (Snocone, one-phase)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --ir-run claws5.sc < claws5.input
// Memory: scrip --ir-run needs -P 34000 for full corpus (CLAWS5inTASA.dat).
//         claws5.input (4 sentences) runs without -P flag.
//------------------------------------------------------------------------------
DIGITS  = '0123456789';
UCASE   = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
//------------------------------------------------------------------------------
procedure new_sent() {
    sentno      = +num;
    mem[sentno] = TABLE();
    new_sent    = .dummy;
    nreturn;
}
//------------------------------------------------------------------------------
procedure add_tok() {
    if (DIFFER(mem[sentno][wrd])) mem[sentno][wrd] = TABLE();
    if (DIFFER(mem[sentno][wrd][tag])) mem[sentno][wrd][tag] = 1;
    else mem[sentno][wrd][tag] = mem[sentno][wrd][tag] + 1;
    add_tok = .dummy;
    nreturn;
}
//------------------------------------------------------------------------------
// SB-5c.4: faithful 1-for-1 re-port of claws5.sno::pp_mem (zero gotos).
// Procedure-locals match the canonical DEFINE() locals list:
// ssk, si, sentno, wsk, wi, wkey, wq, wrd, tsk, ti, tag, tv,
// tline, pfx, pad, next_wkey, last_sent, lline, ns.
procedure pp_mem(mem,
        ssk, si, sentno, wsk, wi, wkey, wq, wrd,
        tsk, ti, tag, tv, tline, pfx, pad,
        next_wkey, last_sent, lline, ns) {
    ssk             =   SORT(mem);
    si              =   0;
    ns              =   0;
                                                                        // pm_cnt_loop
    while (DIFFER(ssk[ns + 1, 1])) {
        ns          =   ns + 1;
    }
    si              =   0;
                                                                        // pm_sent_loop
    while (DIFFER(ssk[si + 1, 1])) {
        si          =   si + 1;
        sentno      =   ssk[si, 1];
        last_sent   =   '';
        if (IDENT(si, ns)) last_sent = 1;
        pad         =   DUPL(' ', SIZE(sentno) + 4);
        if (EQ(si, 1)) pfx = '{' && sentno && ': {';
        if (NE(si, 1)) pfx = ' ' && sentno && ': {';
        wsk         =   SORT(mem[sentno]);
        wi          =   0;
                                                                        // pm_wrd_loop
        while (DIFFER(wsk[wi + 1, 1])) {
            wi          =   wi + 1;
            wkey        =   wsk[wi, 1];
            next_wkey   =   '';
            next_wkey   =   wsk[wi + 1, 1];
            wrd         =   wkey;
            if (wrd ? (ARB && "'") = '') wq = '"' && wkey && '"';
                                                                        // pm_sq
            else                         wq = "'" && wkey && "'";
                                                                        // pm_tdict
            tsk         =   SORT(mem[sentno][wkey]);
            ti          =   0;
            tline       =   '{';
                                                                        // pm_tag_loop
            while (DIFFER(tsk[ti + 1, 1])) {
                ti      =   ti + 1;
                tag     =   tsk[ti, 1];
                tv      =   mem[sentno][wkey][tag];
                if (IDENT(tline, '{'))
                    tline = tline && "'" && tag && "': " && tv;
                                                                        // pm_tag_sep
                else
                    tline = tline && ', ' && "'" && tag && "': " && tv;
            }
                                                                        // pm_tag_close
            tline       =   tline && '}';
            if (GT(SIZE(next_wkey), 0)) {
                if (IDENT(wi, 1))
                    OUTPUT  =   pfx && wq && ': ' && tline && ',';
                                                                        // pm_mid_wrd
                else
                    OUTPUT  =   pad && wq && ': ' && tline && ',';
            } else {
                                                                        // pm_last_wrd
                if (IDENT(wi, 1))
                    lline   =   pfx && wq && ': ' && tline;
                                                                        // pm_last_mid
                else
                    lline   =   pad && wq && ': ' && tline;
                                                                        // pm_last_emit
                if (IDENT(last_sent, 1))
                    OUTPUT  =   lline && '}}';
                                                                        // pm_last_mid2
                else
                    OUTPUT  =   lline && '},';
            }
        }
    }
                                                                        // pm_done
    pp_mem          =   .dummy;
    return;
}
//------------------------------------------------------------------------------
claws =
    POS(0)
    && ARBNO(
         ( (SPAN(DIGITS) . num) && '_CRD :_PUN'
           && (epsilon . *new_sent())
         | (NOTANY('_') && BREAK('_')) . wrd
           && '_'
           && (ANY(UCASE) && SPAN(DIGITS && UCASE)) . tag
           && (epsilon . *add_tok())
         )
         && ' '
       )
    && RPOS(0);
//------------------------------------------------------------------------------
// Canonical Snocone slurp idiom: while (line = INPUT) — assignment expression
// evaluates to FAIL on EOF, the while-test then fails, loop exits cleanly.
// (Per programs/snocone/report.md line 1240.)
while (line = INPUT) {
    src = src && line;
}
mem = TABLE();
if (src ? claws) pp_mem(mem);
else OUTPUT = 'Pattern match failed';
