// global.sc — faithful Snocone port of beauty/global.inc, MINUS the UTF
// lookup table (beauty-specific bulk; not needed for the parser frontend).
//
// Provides the prelude every PARSER-* driver assumes is in scope before
// any pattern compiles:
//   - parser keywords      &FULLSCAN, &MAXLNGTH
//   - named char constants nul, bs, ht, tab, nl, lf, vt, ff, cr,
//                          fSlash, semicolon, bSlash
//   - bit-prefix slices    X0xxxxxxx, X1xxxxxxx, X10xxxxxx, X110xxxxx,
//                          X1110xxxx, X11110xxx, X11111xxx
//   - flags & literals     TRUE, FALSE, digits

&FULLSCAN = 1;
&MAXLNGTH = 1024;

&ALPHABET ? (POS(0)  LEN(1) . nul);          // null character
&ALPHABET ? (POS(8)  LEN(1) . bs);           // backspace
&ALPHABET ? (POS(9)  LEN(1) . ht);           // horizontal tab
&ALPHABET ? (POS(9)  LEN(1) . tab);          // tab
&ALPHABET ? (POS(10) LEN(1) . nl);           // new line
&ALPHABET ? (POS(10) LEN(1) . lf);           // line feed
&ALPHABET ? (POS(11) LEN(1) . vt);           // vertical tab
&ALPHABET ? (POS(12) LEN(1) . ff);           // form feed
&ALPHABET ? (POS(13) LEN(1) . cr);           // carriage return
&ALPHABET ? (POS(47) LEN(1) . fSlash);       // forward slash
&ALPHABET ? (POS(59) LEN(1) . semicolon);    // semi-colon
&ALPHABET ? (POS(92) LEN(1) . bSlash);       // back slash

&ALPHABET ? (POS(0)                      LEN(128) . X0xxxxxxx);
&ALPHABET ? (POS(128)                    LEN(128) . X1xxxxxxx);
&ALPHABET ? (POS(128)                    LEN(64)  . X10xxxxxx);
&ALPHABET ? (POS(128 + 64)               LEN(32)  . X110xxxxx);
&ALPHABET ? (POS(128 + 64 + 32)          LEN(16)  . X1110xxxx);
&ALPHABET ? (POS(128 + 64 + 32 + 16)     LEN(8)   . X11110xxx);
&ALPHABET ? (POS(128 + 64 + 32 + 16 + 8) LEN(8)   . X11111xxx);

TRUE   = 1;
FALSE  = 0;
digits = '0123456789';

// PARSER-SN-INFRA-8 — trace-emitter globals.  All consumed by trace.sc
// (T8Trace, T8Pos) and later by omega.sc (xTrace gates pattern-build
// trace hooks).  doDebug = 0 makes T8Trace a no-op; xTrace = 0 makes
// TZ/TY return the bare pattern without trace hooks.  Drivers that
// want output override these before loading patterns.
doDebug   = 0;
xTrace    = 0;
t8Max     = 0;
t8MaxLast = 0;
t8Map     = TABLE();
strOfs    = 0;

// PARSER-SN-INFRA-9 — omega.sc globals.  doParseTree selects between the
// bare pattern and the (pat ~ 'identifier') wrap form in TV/TW/TX (the
// case-folding identifier-checkers).  txOfs is written by the @txOfs
// cursor capture inside TY/TZ at match time; initialising it makes the
// first GT(txOfs, t8Max) probe well-defined before any match has run.
doParseTree = 0;
txOfs       = 0;
