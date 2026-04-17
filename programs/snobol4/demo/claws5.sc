// claws5.sc — CLAWS5 POS-tagged corpus tokenizer (Snocone, one-phase)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --ir-run claws5.sc < claws5.input
//
// Direct Snocone port of claws5.sno (one-phase).
// Lines joined with no separator — each .dat line already ends with a
// trailing space, so tokens are cleanly space-separated in src.
// Pattern is a faithful translation of Python claws_info (assignment3.py).
//
// Memory: scrip --ir-run needs -P 34000 for full corpus (CLAWS5inTASA.dat).
//         claws5.input (4 sentences) runs without -P flag.

DIGITS  = '0123456789';
UCASE   = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

//--- new_sent() — sentno = +num; open mem[sentno] ---------------------------

procedure new_sent() {
    sentno      = +num;
    mem[sentno] = TABLE();
    new_sent    = .dummy;
    nreturn;
}

//--- add_tok() — increment mem[sentno][wrd][tag] ----------------------------

procedure add_tok() {
    if (DIFFER(mem[sentno][wrd])) {
        mem[sentno][wrd] = TABLE();
    }
    if (DIFFER(mem[sentno][wrd][tag])) {
        mem[sentno][wrd][tag] = 1;
    } else {
        mem[sentno][wrd][tag] = mem[sentno][wrd][tag] + 1;
    }
    add_tok = .dummy;
    nreturn;
}

//--- pp_mem(mem) — print mem in Python pprint style -------------------------

procedure pp_mem(mem) {
    OUTPUT = '{';
    sk = SORT(mem);
    si = 0;
pp_s:
    si = si + 1;
    if (DIFFER(sk[si,1])) { goto pp_s_done; }
    if (GT(si, 1)) { OUTPUT = '   },'; }
    OUTPUT = '   ' sk[si,1] ': {';
    wk = SORT(mem[sk[si,1]]);
    wi = 0;
pp_w:
    wi = wi + 1;
    if (DIFFER(wk[wi,1])) { goto pp_w_done; }
    if (GT(wi, 1)) { OUTPUT = '      },'; }
    OUTPUT = '      ' wk[wi,1] ': {';
    tk = SORT(mem[sk[si,1]][wk[wi,1]]);
    ti = 0;
pp_t:
    ti = ti + 1;
    if (DIFFER(tk[ti,1])) { goto pp_t_done; }
    OUTPUT = '         ' tk[ti,1] ': '
             mem[sk[si,1]][wk[wi,1]][tk[ti,1]] ',';
    goto pp_t;
pp_t_done:
    OUTPUT = '      }';
    goto pp_w;
pp_w_done:
    OUTPUT = '   }';
    goto pp_s;
pp_s_done:
    OUTPUT = '}';
    pp_mem = .dummy;
    return;
}

//--- slurp: join lines with no separator ------------------------------------

while (src ?= '' <- src INPUT) { }

mem = TABLE();

claws_pat =
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

if (src ? claws_pat) {
    pp_mem(mem);
} else {
    OUTPUT = 'Pattern match failed';
}
