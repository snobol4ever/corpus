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
// printer: pp_table(tbl, depth, key) — recursive, depth*3 indent

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

//--- pp_table(tbl, depth, key) — recursive TABLE pretty-printer -------------

procedure pp_table(tbl, depth, key,   pad, sk, i, k, v) {
    pad = DUPL(' ', depth * 3);
    if (IDENT(depth, 0)) {
        OUTPUT = '{';
    } else {
        OUTPUT = pad && key && ': {';
    }
    sk = SORT(tbl);
    i  = 0;
    while (DIFFER(k = sk[i = i + 1, 1])) {
        v = tbl[k];
        if (IDENT(REPLACE(DATATYPE(v), &LCASE, &UCASE), 'TABLE')) {
            dummy = pp_table(v, depth + 1, k);
        } else {
            OUTPUT = pad && '   ' && k && ': ' && v && ',';
        }
    }
    OUTPUT = pad && '}';
    pp_table = .dummy;
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
dummy = pp_table(mem, 0, '');
