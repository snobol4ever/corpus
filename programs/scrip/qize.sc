// qize.sc — string Quote-ize / Sql-Quote / Intize / Extize, ported
// verbatim from beauty/Qize.sc.
//
// PARSER-SN-INFRA-7 — beauty-source-style port. REM verified to terminate
// correctly (matches empty on empty subject; the IDENT(str) guard at the
// top of each while body short-circuits before REM can re-fire on empty
// str). No RTAB(0) patch needed.
//
// Public API:
//   Qize(s)     — quote-ize a string into a SNOBOL4 expression
//   SQize(s)    — single-quote escape
//   DQize(s)    — double-quote escape
//   SqlSQize(s) — SQL single-quote escape (doubles internal ')
//   Intize(...) — interpret SNOBOL4 quoted-string source back to bytes
//   Extize(s)   — placeholder (beauty parity; body is empty per source)
//   LEQ(a,b)    — SPITBOL builtin not in scrip Snocone
//   Ucvt(hex2)  — SPITBOL CHAR/INTEGER helper not in scrip Snocone
//
//---------------------------------------------------------------------------------------------------
// Qize(s) - Quote-ize a string. Make a SNOBOL4 expression from the string.
//---------------------------------------------------------------------------------------------------
QizeWierd = bSlash bs ff nl cr tab;

// LEQ, Ucvt: SPITBOL builtin and canonical-Qize.inc helper not in scrip Snocone.
// Provided here per pass #2 audit note (G-4, G-5).
function LEQ(a, b) {
    if (IDENT(a, b)) { LEQ = a; return; }
    if (LLT(a, b))   { LEQ = a; return; }
    freturn;
}
function Ucvt(hex2) {
    Ucvt = CHAR(INTEGER('0X' hex2));
    return;
}
//---------------------------------------------------------------------------------------------------
function Qize(str, part) {
    if (Qize = IDENT(str) "''") return;
    while (1) {
        if (IDENT(str)) return;
        Qize = DIFFER(Qize) Qize ' ';
        if (str ? (POS(0)
                  (  bSlash . *assign(.part, *'bSlash')
                  |  bs     . *assign(.part, *'bs')
                  |  ff     . *assign(.part, *'ff')
                  |  nl     . *assign(.part, *'nl')
                  |  cr     . *assign(.part, *'cr')
                  |  tab    . *assign(.part, *'tab')
                  )) = ) {
            Qize = Qize part;
        } else if (str ? (POS(0)
                         (BREAK('"' "'" QizeWierd) '"' ARBNO(NOTANY("'" QizeWierd))) . part
                         RTAB(0) . str)) {
            Qize = Qize "'" part "'";
        } else if (str ? (POS(0)
                         (BREAK("'" '"' QizeWierd) "'" ARBNO(NOTANY('"' QizeWierd))) . part
                         RTAB(0) . str)) {
            Qize = Qize '"' part '"';
        } else if (str ? (POS(0) BREAK(QizeWierd) . part) = ) {
            Qize = Qize "'" part "'";
        } else if (str ? (POS(0) REM . part) = ) {
            Qize = Qize "'" part "'";
        } else {
            error();
        }
    }
}
//---------------------------------------------------------------------------------------------------
function SQize(str, part) {
    while (1) {
        if (IDENT(str)) return;
        SQize = DIFFER(SQize) SQize ' ';
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SQize = SQize "'" part "'" ' "' "'" '"';
        } else if (str ? (POS(0) REM . part) = ) {
            SQize = SQize "'" part "'";
        } else {
            error();
        }
    }
}
//---------------------------------------------------------------------------------------------------
function DQize(str, part) {
    while (1) {
        if (IDENT(str)) return;
        DQize = DIFFER(DQize) DQize ' ';
        if (str ? (POS(0) BREAK('"') . part '"') = ) {
            DQize = DQize '"' part '"' " '" '"' "'";
        } else if (str ? (POS(0) REM . part) = ) {
            DQize = DQize '"' part '"';
        } else {
            error();
        }
    }
}
//---------------------------------------------------------------------------------------------------
function SqlSQize(str, part) {
    while (1) {
        if (IDENT(str)) return;
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SqlSQize = SqlSQize part "''";
        } else if (str ? (POS(0) REM . part) = ) {
            SqlSQize = SqlSQize part;
        } else {
            error();
        }
    }
}
//---------------------------------------------------------------------------------------------------
// CQize(str) — C-string escape, mirroring src/ir/ir_print.c::print_escaped:
//   "  -> \"
//   \  -> \\
//   nl -> \n      cr -> \r      tab -> \t
// Used by tdump.sc for E_QLIT / E_CSET rendering so PARSER-* output matches
// scrip's `--dump-ir` byte-for-byte when the value contains backslashes,
// quotes, or whitespace control bytes.  Other bytes < 0x20 not currently
// exercised by any PARSER-* corpus; if needed, add \xNN logic alongside.
//---------------------------------------------------------------------------------------------------
function CQize(str, part, ch) {
    while (1) {
        if (IDENT(str)) return;
        // Append any run of "safe" bytes verbatim.
        if (str ? (POS(0) BREAK(bSlash '"' nl cr tab) . part) = ) {
            CQize = CQize part;
        }
        if (IDENT(str)) return;
        // The next byte is one we must escape.
        if (str ? (POS(0) LEN(1) . ch) = ) {
            if (IDENT(ch, bSlash)) { CQize = CQize bSlash bSlash; }
            else if (IDENT(ch, '"'))  { CQize = CQize bSlash '"'; }
            else if (IDENT(ch, nl))   { CQize = CQize bSlash 'n'; }
            else if (IDENT(ch, cr))   { CQize = CQize bSlash 'r'; }
            else if (IDENT(ch, tab))  { CQize = CQize bSlash 't'; }
            else                      { CQize = CQize ch; }
        } else {
            error();
        }
    }
}
//---------------------------------------------------------------------------------------------------
function Intize(qqstr, iq, qqdlm) {
    if (~(qqstr ? (POS(0) ("'" | '"') $ qqdlm
                   ARBNO(
                      bSlash
                      (  bSlash . *assign(.Intize, *(Intize bSlash))
                      |  '"'    . *assign(.Intize, *(Intize '"'))
                      |  "'"    . *assign(.Intize, *(Intize "'"))
                      |  'b'    . *assign(.Intize, *(Intize bs))
                      |  'f'    . *assign(.Intize, *(Intize ff))
                      |  'n'    . *assign(.Intize, *(Intize lf))
                      |  'r'    . *assign(.Intize, *(Intize cr))
                      |  't'    . *assign(.Intize, *(Intize tab))
                      |  'u'
                         (  '00' LEN(2) . iq . *assign(.Intize, *(Intize Ucvt(iq)))
                         |  LEN(4) . iq . *assign(.Intize, *(Intize bSlash 'u' iq))
                         )
                      )
                   |  BREAK(*(qqdlm bSlash)) . iq . *assign(.Intize, *(Intize iq))
                   )
                   *qqdlm RPOS(0))))
        freturn;
    return;
}
//---------------------------------------------------------------------------------------------------
function Extize(str) {
    return;
}
