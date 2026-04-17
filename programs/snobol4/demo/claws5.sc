// claws5.sc — CLAWS5 POS-tagged corpus tokenizer (Snocone, two-phase)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --ir-run claws5.sc < CLAWS5inTASA.dat
//
// Two-phase — no memory overflow, no -P flag needed.
//
// Phase 1: slurp all lines to string; prepend space; insert CHAR(1) sentinel
//   before each sentence-start token (SPAN(DIGITS) '_CRD :_PUN '); strip
//   leading sentinel; split with BREAKX(SEP) into sent[1..n].
//   TRIM each piece then append ' ' so every last token has its trailing space.
//
// Phase 2: copy sent[i] to s (avoids any cursor state issue); run claws_pat_2.
//   claws_pat_2: POS(0) header + ARBNO(BREAKX('_') token) + RPOS(0).
//
// helpers: new_sent(), add_tok() — nreturn, called via epsilon . *fn()
// printer: pp_mem(mem) — pprint-style, identical output to Python pprint(mem)

&TRIM     = 1;
&ANCHOR   = 0;
&FULLSCAN = 1;
DIGITS    = '0123456789';
SEP       = CHAR(1);

//--- new_sent() — sentno = +num; open mem[sentno] ---------------------------

procedure new_sent() {
    sentno      = +num;
    mem[sentno] = TABLE();
    new_sent    = .dummy;
    nreturn;
}

//--- add_tok() — increment mem[sentno][wrd][tag] ----------------------------

procedure add_tok() {
    if (~DIFFER(mem[sentno][wrd])) {
        mem[sentno][wrd] = TABLE();
    }
    if (~DIFFER(mem[sentno][wrd][tag])) {
        mem[sentno][wrd][tag] = 1;
    } else {
        mem[sentno][wrd][tag] = mem[sentno][wrd][tag] + 1;
    }
    add_tok = .dummy;
    nreturn;
}

//--- claws_pat_2 — per-sentence, ANCHOR=1 -----------------------------------
//  Header: SPAN(DIGITS).num '_CRD :_PUN ' epsilon.*new_sent()
//  Token:  BREAKX('_').wrd '_' BREAKX(' ').tag ' ' epsilon.*add_tok()
//  BREAKX('_') grabs word; BREAKX(' ') grabs full tag (e.g. PUN not UN).

claws_pat_2 =
    POS(0)
    && (SPAN(DIGITS) . num) && '_CRD :_PUN '
    && (epsilon . *new_sent())
    && ARBNO(
        (BREAKX('_') . wrd) && '_'
        && (BREAKX(' ') . tag) && ' '
        && (epsilon . *add_tok())
    )
    && RPOS(0);

//--- pp_mem(mem) — pprint-style TABLE printer matching Python pprint(mem) ----
// Format: {1: {'word': {'TAG': N}, ...}, 2: {...}, ...}
// Sentence keys natural width; word continuation lines SIZE(sentno)+4 spaces.
// Word keys single-quoted; double-quoted if word contains apostrophe.
// Tag dicts inline: {'TAG': N} or {'TAG1': N1, 'TAG2': N2}.

procedure pp_mem(mem,   ssk, si, ns, sentno, pad, pfx, wsk, wi, wkey, wq,
                        wrd, next_wkey, tsk, ti, tag, tv, tline, lline,
                        last_sent, dummy) {
    ssk = SORT(mem);
    // count sentences
    ns  = 0;
    while (DIFFER(ssk[ns = ns + 1, 1])) { }
    ns  = ns - 1;
    si  = 0;
    OUTPUT = '{';
    while (DIFFER(sentno = ssk[si = si + 1, 1])) {
        last_sent = '';
        if (IDENT(si, ns)) { last_sent = 1; }
        pad = DUPL(' ', SIZE(sentno) + 4);
        if (IDENT(si, 1)) {
            pfx = sentno && ': {';
        } else {
            pfx = ' ' && sentno && ': {';
        }
        wsk = SORT(mem[sentno]);
        wi  = 0;
        while (DIFFER(wkey = wsk[wi = wi + 1, 1])) {
            next_wkey = '';
            next_wkey = wsk[wi + 1, 1];
            // quote word key
            wrd = wkey;
            if (wrd ?= ARB "'" <- '') {
                wq = '"' && wkey && '"';
            } else {
                wq = "'" && wkey && "'";
            }
            // build inline tag dict
            tsk   = SORT(mem[sentno][wkey]);
            ti    = 0;
            tline = '{';
            while (DIFFER(tag = tsk[ti = ti + 1, 1])) {
                tv = mem[sentno][wkey][tag];
                if (IDENT(tline, '{')) {
                    tline = tline && "'" && tag && "': " && tv;
                } else {
                    tline = tline && ', ' && "'" && tag && "': " && tv;
                }
            }
            tline = tline && '}';
            // emit: last word gets sentence-close suffix
            if (GT(SIZE(next_wkey), 0)) {
                // not last word
                if (IDENT(wi, 1)) {
                    OUTPUT = pfx && wq && ': ' && tline && ',';
                } else {
                    OUTPUT = pad && wq && ': ' && tline && ',';
                }
            } else {
                // last word of sentence
                if (IDENT(wi, 1)) {
                    lline = pfx && wq && ': ' && tline;
                } else {
                    lline = pad && wq && ': ' && tline;
                }
                if (IDENT(last_sent, 1)) {
                    OUTPUT = lline && '}}';
                } else {
                    OUTPUT = lline && '},';
                }
            }
        }
    }
    pp_mem = .dummy;
    return;
}

//--- Phase 1: slurp -> prepend space -> sentinel insert -> TRIM+split -------

src = '';
while (DIFFER(line = INPUT)) {
    src = src && line && ' ';
}
src = ' ' && src;

while (src ?= (' ' && (SPAN(DIGITS) . hdr) && '_CRD :_PUN ' <- SEP && hdr && '_CRD :_PUN ')) { }

src ?= SEP <- '';

n    = 0;
sent = ARRAY(300);
while (src ?= (BREAKX(SEP) . piece) && SEP <- '') {
    sent[n = n + 1] = TRIM(piece) && ' ';
}
if (DIFFER(src)) {
    sent[n = n + 1] = TRIM(src) && ' ';
}

//--- Phase 2: copy sent[i] to s, run claws_pat_2 ---------------------------

mem     = TABLE();
&ANCHOR = 1;
i       = 0;
while (DIFFER(i = LT(i, n) i + 1)) {
    s = sent[i];
    if (s ? claws_pat_2) {
    } else {
        OUTPUT = 'Pattern match failed on: ' && SUBSTR(s, 1, 40);
    }
}
&ANCHOR = 0;
dummy = pp_mem(mem);
