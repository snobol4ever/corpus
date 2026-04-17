// claws5.sc — CLAWS5 POS-tagged corpus tokenizer (Snocone)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --ir-run claws5.sc < CLAWS5inTASA.dat
//
// Faithful Snocone translation of claws5.sno.
// Function names match Python lambda semantics:
//   init()      λ("mem = dict()")
//   new_sent()  λ("num=int(num)") + λ("mem[num]=dict()")
//   add_tok()   λ("mem[num][wrd][tag]+=1")
//
// Each is a single nreturn procedure called as (epsilon . *fn()) in pattern.
// Reads from stdin (pipe-compatible).

&TRIM     = 1;
&ANCHOR   = 0;
&FULLSCAN = 1;
&ALPHABET POS(10) LEN(1) . nl;
DIGITS    = '0123456789';
UCASE     = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

//--- init() — λ("mem = dict()") ---------------------------------------------

procedure init() {
    mem    = TABLE();
    sentno = 0;
    init   = .dummy;
    nreturn;
}

//--- new_sent() — λ("num=int(num)") + λ("mem[num]=dict()") -----------------
// Reads global: num (captured by SPAN(DIGITS) . num just before)

procedure new_sent() {
    sentno      = +num;
    mem[sentno] = TABLE();
    new_sent    = .dummy;
    nreturn;
}

//--- add_tok() — λ("mem[num][wrd][tag]+=1") ---------------------------------
// Reads globals: sentno, wrd, tag

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

//--- claws_pat — direct port of Python claws_info pattern -------------------

claws_pat =
    POS(0)
    && (epsilon . *init())
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

//--- pp_mem() ---------------------------------------------------------------

procedure pp_mem(   sk, wk, tk, si, wi, ti) {
    OUTPUT = '{';
    sk = SORT(mem);
    si = 0;
    while (DIFFER(si = si + 1) && sk[si,1]) {
        if (GT(si, 1)) { OUTPUT = '   },'; }
        OUTPUT = '   ' && sk[si,1] && ': {';
        wk = SORT(mem[sk[si,1]]);
        wi = 0;
        while (DIFFER(wi = wi + 1) && wk[wi,1]) {
            if (GT(wi, 1)) { OUTPUT = '      },'; }
            OUTPUT = '      ' && wk[wi,1] && ': {';
            tk = SORT(mem[sk[si,1]][wk[wi,1]]);
            ti = 0;
            while (DIFFER(ti = ti + 1) && tk[ti,1]) {
                OUTPUT = '         ' && tk[ti,1] && ': '
                         && mem[sk[si,1]][wk[wi,1]][tk[ti,1]] && ',';
            }
            OUTPUT = '      }';
        }
        OUTPUT = '   }';
    }
    OUTPUT = '}';
    pp_mem = .dummy;
    return;
}

//--- Main: slurp stdin, match, print ----------------------------------------

src = '';
while (DIFFER(line = INPUT)) {
    src = src && line && ' ';
}
if (src ? claws_pat) {
    dummy = pp_mem();
} else {
    OUTPUT = 'Pattern match failed';
}
