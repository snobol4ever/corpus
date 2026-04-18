// ---------------------------------------------------------------------------------------------------------
// porter.sc -- Porter (1980) stemming algorithm in Snocone
// Snocone translation of porter.sno. Run:
//   scrip --ir-run porter.sc < porter.input | diff - porter.ref
// Oracle for .ref: SPITBOL x64 running porter.sno (23531-line voc.txt/output.txt fixture).
// ---------------------------------------------------------------------------------------------------------

epsilon = ;
VOWELS  = 'aeiou';
LC      = 'abcdefghijklmnopqrstuvwxyz';

// ---------------------------------------------------------------------------------------------------------
// cons(i): true if stem[i] is a consonant. Letters 1-indexed.
// ---------------------------------------------------------------------------------------------------------
procedure cons(i) (c) {
    c = SUBSTR(stem, i, 1);
    if (c ? ANY(VOWELS)) { freturn; }
    if (DIFFER(c, 'y'))  { return; }
    if (EQ(i, 1))        { return; }
    if (cons(i - 1))     { freturn; } else { return; }
}

// ---------------------------------------------------------------------------------------------------------
// m(): Porter's measure -- the number of VC sequences in 'stem'.
// ---------------------------------------------------------------------------------------------------------
procedure m() (i, n, L) {
    L = SIZE(stem);
    if (EQ(L, 0)) { m = 0; return; }
    i = 1;
    n = 0;
mC0:
    if (GT(i, L)) { m = n; return; }
    if (cons(i))  { i = i + 1; goto mC0; }
mV1:
    i = i + 1;
mV:
    if (GT(i, L)) { m = n; return; }
    if (cons(i))  { goto mC1; }
    i = i + 1;
    goto mV;
mC1:
    i = i + 1;
    n = n + 1;
mC:
    if (GT(i, L)) { m = n; return; }
    if (cons(i))  { i = i + 1; goto mC; }
    goto mV1;
}

// ---------------------------------------------------------------------------------------------------------
// vowelinstem(): true if any char of stem is a vowel (y after consonant counts).
// ---------------------------------------------------------------------------------------------------------
procedure vowelinstem() (i, L) {
    L = SIZE(stem);
    i = 1;
visL:
    if (GT(i, L))  { freturn; }
    if (cons(i))   { i = i + 1; goto visL; }
    return;
}

// ---------------------------------------------------------------------------------------------------------
// doublec(j): stem[j] == stem[j-1] and both consonants.
// ---------------------------------------------------------------------------------------------------------
procedure doublec(j) {
    if (LT(j, 2)) { freturn; }
    if (DIFFER(SUBSTR(stem, j, 1), SUBSTR(stem, j - 1, 1))) { freturn; }
    if (cons(j))  { return; } else { freturn; }
}

// ---------------------------------------------------------------------------------------------------------
// cvc(i): stem[i-2..i] = c-v-c and stem[i] not in {w,x,y}.
// ---------------------------------------------------------------------------------------------------------
procedure cvc(i) (c) {
    if (LT(i, 3))     { freturn; }
    if (cons(i))      { } else { freturn; }
    if (cons(i - 1))  { freturn; }
    if (cons(i - 2))  { } else { freturn; }
    c = SUBSTR(stem, i, 1);
    if (c ? ANY('wxy')) { freturn; } else { return; }
}

// ---------------------------------------------------------------------------------------------------------
// Guards -- pattern-valued. Return null pattern on success, FAIL on failure.
// Called as *gX() inside a pattern.
// ---------------------------------------------------------------------------------------------------------
procedure g_vis() {
    if (vowelinstem()) { g_vis = ; return; }
    g_vis = FAIL; return;
}

procedure g_m_gt_0() {
    if (GT(m(), 0)) { g_m_gt_0 = ; return; }
    g_m_gt_0 = FAIL; return;
}

procedure g_m_gt_1() {
    if (GT(m(), 1)) { g_m_gt_1 = ; return; }
    g_m_gt_1 = FAIL; return;
}

procedure g_m_eq_1() {
    if (EQ(m(), 1)) { g_m_eq_1 = ; return; }
    g_m_eq_1 = FAIL; return;
}

procedure g_not_cvc_last() (L) {
    L = SIZE(stem);
    if (cvc(L)) { g_not_cvc_last = FAIL; return; }
    g_not_cvc_last = ; return;
}

procedure g_stem_not_m() (L) {
    L = SIZE(stem);
    if (DIFFER(SUBSTR(stem, L, 1), 'm')) { g_stem_not_m = ; return; }
    g_stem_not_m = FAIL; return;
}

procedure g_stem_last_st() (L, last) {
    L = SIZE(stem);
    last = SUBSTR(stem, L, 1);
    if (last ? ANY('st')) { g_stem_last_st = ; return; }
    g_stem_last_st = FAIL; return;
}

procedure g_m_ll_gt_1() (save, r) {
    save = stem;
    stem = save && 'll';
    r = m();
    stem = save;
    if (GT(r, 1)) { g_m_ll_gt_1 = ; return; }
    g_m_ll_gt_1 = FAIL; return;
}

// ---------------------------------------------------------------------------------------------------------
// Action setters. Each sets target (and sometimes stem) at commit time.
// ---------------------------------------------------------------------------------------------------------
procedure s_ss()    { target = 'ss';   s_ss    = .dummy; nreturn; }
procedure s_i()     { target = 'i';    s_i     = .dummy; nreturn; }
procedure s_empty() { target = ;       s_empty = .dummy; nreturn; }
procedure s_ee()    { target = 'ee';   s_ee    = .dummy; nreturn; }
procedure s_ate()   { target = 'ate';  s_ate   = .dummy; nreturn; }
procedure s_tion()  { target = 'tion'; s_tion  = .dummy; nreturn; }
procedure s_ence()  { target = 'ence'; s_ence  = .dummy; nreturn; }
procedure s_ance()  { target = 'ance'; s_ance  = .dummy; nreturn; }
procedure s_ize()   { target = 'ize';  s_ize   = .dummy; nreturn; }
procedure s_ble()   { target = 'ble';  s_ble   = .dummy; nreturn; }
procedure s_al()    { target = 'al';   s_al    = .dummy; nreturn; }
procedure s_ent()   { target = 'ent';  s_ent   = .dummy; nreturn; }
procedure s_e()     { target = 'e';    s_e     = .dummy; nreturn; }
procedure s_ous()   { target = 'ous';  s_ous   = .dummy; nreturn; }
procedure s_ive()   { target = 'ive';  s_ive   = .dummy; nreturn; }
procedure s_ful()   { target = 'ful';  s_ful   = .dummy; nreturn; }
procedure s_log()   { target = 'log';  s_log   = .dummy; nreturn; }
procedure s_ic()    { target = 'ic';   s_ic    = .dummy; nreturn; }
procedure s_l()     { target = 'l';    s_l     = .dummy; nreturn; }

// step1ab_cleanup -- commit-time action that sets target and may mutate stem.
procedure a_s1ab_cleanup() (L, last, P) {
    L = SIZE(stem);
    P = RTAB(2) && ('at' | 'bl' | 'iz') && RPOS(0);
    if (stem ? P) { target = 'e'; goto a_s1_done; }
    if (doublec(L)) {
        last = SUBSTR(stem, L, 1);
        if (last ? ANY('lsz')) { } else {
            stem = SUBSTR(stem, 1, L - 1);
            target = ;
            goto a_s1_done;
        }
    }
    if (EQ(m(), 1)) {
        if (cvc(L)) { } else { target = 'e'; goto a_s1_done; }
    }
    target = ;
a_s1_done:
    a_s1ab_cleanup = .dummy;
    nreturn;
}

// ---------------------------------------------------------------------------------------------------------
// Porter rule patterns.
// ---------------------------------------------------------------------------------------------------------
p1a =
    POS(0)
    && ( RTAB(4) $ stem && 'sses' && (epsilon . *s_ss())
       | RTAB(3) $ stem && 'ies'  && (epsilon . *s_i())
       | RTAB(2) $ stem && 'ss'   && (epsilon . *s_ss())
       | RTAB(1) $ stem && 's'    && (epsilon . *s_empty())
       )
    && RPOS(0);

p1b =
    POS(0)
    && ( RTAB(3) $ stem && 'eed' && (*g_m_gt_0() && (epsilon . *s_ee()) | epsilon)
       | RTAB(2) $ stem && 'ed'  && *g_vis() && (epsilon . *a_s1ab_cleanup())
       | RTAB(3) $ stem && 'ing' && *g_vis() && (epsilon . *a_s1ab_cleanup())
       )
    && RPOS(0);

p1c =
    POS(0)
    && ( RTAB(1) $ stem && 'y' && *g_vis() && (epsilon . *s_i())
       )
    && RPOS(0);

p2 =
    POS(0)
    && ( RTAB(7) $ stem && 'ational' && *g_m_gt_0() && (epsilon . *s_ate())
       | RTAB(6) $ stem && 'tional'  && *g_m_gt_0() && (epsilon . *s_tion())
       | RTAB(4) $ stem && 'enci'    && *g_m_gt_0() && (epsilon . *s_ence())
       | RTAB(4) $ stem && 'anci'    && *g_m_gt_0() && (epsilon . *s_ance())
       | RTAB(4) $ stem && 'izer'    && *g_m_gt_0() && (epsilon . *s_ize())
       | RTAB(3) $ stem && 'bli'     && *g_m_gt_0() && (epsilon . *s_ble())
       | RTAB(4) $ stem && 'alli'    && *g_m_gt_0() && (epsilon . *s_al())
       | RTAB(5) $ stem && 'entli'   && *g_m_gt_0() && (epsilon . *s_ent())
       | RTAB(3) $ stem && 'eli'     && *g_m_gt_0() && (epsilon . *s_e())
       | RTAB(5) $ stem && 'ousli'   && *g_m_gt_0() && (epsilon . *s_ous())
       | RTAB(7) $ stem && 'ization' && *g_m_gt_0() && (epsilon . *s_ize())
       | RTAB(5) $ stem && 'ation'   && *g_m_gt_0() && (epsilon . *s_ate())
       | RTAB(4) $ stem && 'ator'    && *g_m_gt_0() && (epsilon . *s_ate())
       | RTAB(5) $ stem && 'alism'   && *g_m_gt_0() && (epsilon . *s_al())
       | RTAB(7) $ stem && 'iveness' && *g_m_gt_0() && (epsilon . *s_ive())
       | RTAB(7) $ stem && 'fulness' && *g_m_gt_0() && (epsilon . *s_ful())
       | RTAB(7) $ stem && 'ousness' && *g_m_gt_0() && (epsilon . *s_ous())
       | RTAB(5) $ stem && 'aliti'   && *g_m_gt_0() && (epsilon . *s_al())
       | RTAB(5) $ stem && 'iviti'   && *g_m_gt_0() && (epsilon . *s_ive())
       | RTAB(6) $ stem && 'biliti'  && *g_m_gt_0() && (epsilon . *s_ble())
       | RTAB(4) $ stem && 'logi'    && *g_m_gt_0() && (epsilon . *s_log())
       )
    && RPOS(0);

p3 =
    POS(0)
    && ( RTAB(5) $ stem && 'icate' && *g_m_gt_0() && (epsilon . *s_ic())
       | RTAB(5) $ stem && 'ative' && *g_m_gt_0() && (epsilon . *s_empty())
       | RTAB(5) $ stem && 'alize' && *g_m_gt_0() && (epsilon . *s_al())
       | RTAB(5) $ stem && 'iciti' && *g_m_gt_0() && (epsilon . *s_ic())
       | RTAB(4) $ stem && 'ical'  && *g_m_gt_0() && (epsilon . *s_ic())
       | RTAB(3) $ stem && 'ful'   && *g_m_gt_0() && (epsilon . *s_empty())
       | RTAB(4) $ stem && 'ness'  && *g_m_gt_0() && (epsilon . *s_empty())
       )
    && RPOS(0);

p4 =
    POS(0)
    && ( RTAB(2) $ stem && 'al'    && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(4) $ stem && 'ance'  && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(4) $ stem && 'ence'  && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(2) $ stem && 'er'    && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(2) $ stem && 'ic'    && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(4) $ stem && 'able'  && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(4) $ stem && 'ible'  && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(3) $ stem && 'ant'   && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(5) $ stem && 'ement' && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(4) $ stem && 'ment'  && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(3) $ stem && 'ent'   && *g_m_gt_1() && *g_stem_not_m() && (epsilon . *s_empty())
       | RTAB(3) $ stem && 'ion'   && *g_m_gt_1() && *g_stem_last_st() && (epsilon . *s_empty())
       | RTAB(2) $ stem && 'ou'    && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(3) $ stem && 'ism'   && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(3) $ stem && 'ate'   && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(3) $ stem && 'iti'   && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(3) $ stem && 'ous'   && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(3) $ stem && 'ive'   && *g_m_gt_1() && (epsilon . *s_empty())
       | RTAB(3) $ stem && 'ize'   && *g_m_gt_1() && (epsilon . *s_empty())
       )
    && RPOS(0);

p5a =
    POS(0)
    && ( RTAB(1) $ stem && 'e'
         && ( *g_m_gt_1()
            | *g_m_eq_1() && *g_not_cvc_last()
            )
         && (epsilon . *s_empty())
       )
    && RPOS(0);

p5b =
    POS(0)
    && ( RTAB(2) $ stem && 'll' && *g_m_ll_gt_1() && (epsilon . *s_l())
       )
    && RPOS(0);

// ---------------------------------------------------------------------------------------------------------
// stemmer(token): run the Porter pipeline.
// ---------------------------------------------------------------------------------------------------------
procedure stemmer(token) {
    if (LE(SIZE(token), 2)) { stemmer = token; return; }
    token = REPLACE(token, &UCASE, LC);

    target = 'UNSET';
    if (token ? p1a) {
        if (DIFFER(target, 'UNSET')) { token = stem && target; }
    }

    target = 'UNSET';
    if (token ? p1b) {
        if (DIFFER(target, 'UNSET')) { token = stem && target; }
    }

    target = 'UNSET';
    if (token ? p1c) {
        if (DIFFER(target, 'UNSET')) { token = stem && target; }
    }

    target = 'UNSET';
    if (token ? p2) {
        if (DIFFER(target, 'UNSET')) { token = stem && target; }
    }

    target = 'UNSET';
    if (token ? p3) {
        if (DIFFER(target, 'UNSET')) { token = stem && target; }
    }

    target = 'UNSET';
    if (token ? p4) {
        if (DIFFER(target, 'UNSET')) { token = stem && target; }
    }

    target = 'UNSET';
    if (token ? p5a) {
        if (DIFFER(target, 'UNSET')) { token = stem && target; }
    }

    target = 'UNSET';
    if (token ? p5b) {
        if (DIFFER(target, 'UNSET')) { token = stem && target; }
    }

    stemmer = token;
    return;
}

// ---------------------------------------------------------------------------------------------------------
// Driver: read each word from INPUT, write its stem to OUTPUT.
// ---------------------------------------------------------------------------------------------------------
word = INPUT;
while (DIFFER(word)) {
    OUTPUT = stemmer(word);
    word = INPUT;
}
