// claws5.sc — CLAWS5 POS-tagged corpus tokenizer (Snocone, two-phase)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --ir-run claws5.sc < CLAWS5inTASA.dat
//
// Two-phase rewrite — no memory overflow, no -P flag needed.
//
// Phase 1: slurp all lines to string; insert CHAR(1) sentinel before each
//   sentence-start token (SPAN(DIGITS) '_CRD :_PUN '); split on sentinel
//   with BREAKX(SEP) into sent[1..n].
//
// Phase 2: run claws_pat_2 (ANCHOR=1, BREAKX('_') token scanner) per sentence.
//   Copy sent[i] to plain variable s before matching to avoid ANCHOR cursor issue.
//
// helpers: new_sent(), add_tok() — NRETURN, called via epsilon . *fn()
// printer: pp_table(tbl, depth, key) — recursive, depth*3 indent

&TRIM     = 1;
&ANCHOR   = 0;
&FULLSCAN = 1;
DIGITS    = '0123456789';
UCASE     = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
SEP       = CHAR(1);

//--- new_sent() — opens mem[sentno] -----------------------------------------

procedure new_sent() {
    sentno      = +num;
    mem[sentno] = TABLE();
    new_sent    = .dummy;
    nreturn;
}

//--- add_tok() — increments mem[sentno][wrd][tag] ---------------------------

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

//--- claws_pat_2 — per-sentence, BREAKX('_') token scanner -----------------
//  Header: SPAN(DIGITS).num '_CRD :_PUN ' epsilon.*new_sent()
//  Token:  BREAKX('_').wrd '_' BREAKX(' ').tag ' ' epsilon.*add_tok()

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

//--- Phase 1: slurp -> sentinel insert -> BREAKX(SEP) split ----------------

src = '';
while (DIFFER(line = INPUT)) {
    src = src && line && ' ';
}
src = ' ' && src;
while (src ?= (' ' && (SPAN(DIGITS) . _hdr_num) && '_CRD :_PUN ' . _hdr_full)
              <- (SEP && _hdr_full)) { }

if (src ?= SEP <- '') { }    // strip leading SEP

n    = 0;
sent = ARRAY(300);
while (src ?= (BREAKX(SEP) . _piece) && SEP <- '') {
    sent[n = n + 1] = _piece;
}
if (DIFFER(src)) {
    sent[n = n + 1] = src;
}

//--- Phase 2: match claws_pat_2 per sentence --------------------------------

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
