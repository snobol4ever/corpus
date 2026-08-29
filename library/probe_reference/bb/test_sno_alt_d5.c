#ifdef __GNUC__
#define __kernel
#define __global
extern int printf(char *, ...);
#endif
/*----------------------------------------------------------------------------*/
typedef struct { const char * σ; int δ; } str_t;
typedef struct { unsigned int pos; __global char * buffer; } output_t;
/*----------------------------------------------------------------------------*/
void    write_sz(output_t * out, const char * s) { printf("%s\n", s); }
/*----------------------------------------------------------------------------*/
__kernel void snobol(
    __global const char * Σ,
    __global       char * buffer,
             const int    num_chars) {
    /*------------------------------------------------------------------------*/
    const char cszFailure[9] = "Failure.";
    const char cszSuccess[9] = "Success!";
    output_t output = {0, buffer};
    output_t * out = &output;
    /*------------------------------------------------------------------------*/
    inline int len(const char * s) { int δ = 0; for (; *s; δ++) s++; return δ; }
    inline str_t str(const char * σ, int δ) { return (str_t) {σ, δ}; }
    /*------------------------------------------------------------------------*/
    int Δ = 0;
    int Ω = len(Σ);
    goto main1_α;
    /*------------------------------------------------------------------------*/
    /*  SNOBOL4 SOURCE (verified against sbl -b, p4.sno):                     */
    /*      SUBJ = 'ABB'                                                      */
    /*      SUBJ ? (POS(0) ARBNO('ABC'|'AB'|'A') 'CBB' RPOS(0)) :F(FAIL) */
    /*  Oracle output: Success!                                               */
    /*                                                                        */
    /*  WHY THIS PROBE: it SUCCEEDS ONLY BY RETRACTING INTO THE ALTERNATION.  */
    /*  At the retract the LIVE arm is the MIDDLE one (arm 2, 'AB'), so the   */
    /*  three static wiring candidates for A_β -- first arm, last arm, A_ω -- */
    /*  are ALL distinguishable from the correct answer.  test_sno_1.c cannot */
    /*  distinguish them: its β selector fires ZERO times (measured).         */
    /*------------------------------------------------------------------------*/
    str_t       POS0;
    POS0_α:     if (Δ != 0)                         goto POS0_ω;
                POS0 = str(Σ+Δ, 0);                 goto POS0_γ;
    POS0_β:                                         goto POS0_ω;
    /*------------------------------------------------------------------------*/
    str_t       ABC;
    ABC_α:      if (Δ+3 > Ω)                        goto ABC_ω;
                if (Σ[Δ+0] != 'A')                  goto ABC_ω;
                if (Σ[Δ+1] != 'B')                  goto ABC_ω;
                if (Σ[Δ+2] != 'C')                  goto ABC_ω;
                ABC = str(Σ+Δ, 3);
                Δ += 3;                             goto ABC_γ;
    ABC_β:      Δ -= 3;                             goto ABC_ω;
    /*------------------------------------------------------------------------*/
    str_t       AB;
    AB_α:       if (Δ+2 > Ω)                        goto AB_ω;
                if (Σ[Δ+0] != 'A')                  goto AB_ω;
                if (Σ[Δ+1] != 'B')                  goto AB_ω;
                AB = str(Σ+Δ, 2);
                Δ += 2;                             goto AB_γ;
    AB_β:       Δ -= 2;                             goto AB_ω;
    /*------------------------------------------------------------------------*/
    str_t       A1;
    A1_α:       if (Δ+1 > Ω)                        goto A1_ω;
                if (Σ[Δ+0] != 'A')                  goto A1_ω;
                A1 = str(Σ+Δ, 1);
                Δ += 1;                             goto A1_γ;
    A1_β:       Δ -= 1;                             goto A1_ω;
    /*------------------------------------------------------------------------*/
    typedef struct _1 { int alt_i; } _1_t;
    _1_t _1[64];
    _1_t * ζ = &_1[0];
    /*------------------------------------------------------------------------*/
    alt_α:      ζ->alt_i = 1;                       goto ABC_α;
    alt_β:      if (ζ->alt_i == 1)                  goto ABC_β;
                if (ζ->alt_i == 2)                  goto AB_β;
                if (ζ->alt_i == 3)                  goto A1_β;
                                                    goto alt_ω;
    ABC_γ:                                          goto alt_γ;
    ABC_ω:      ζ->alt_i++;                         goto AB_α;
    AB_γ:                                           goto alt_γ;
    AB_ω:       ζ->alt_i++;                         goto A1_α;
    A1_γ:                                           goto alt_γ;
    A1_ω:                                           goto alt_ω;
    /*------------------------------------------------------------------------*/
    str_t       ARBNO;
    int         ARBNO_i;
    int         ARBNO_Δ0;
    ARBNO_α:    ARBNO_Δ0 = Δ; ARBNO_i = -1;
                ARBNO = str(Σ+ARBNO_Δ0, 0);         goto ARBNO_γ;
    ARBNO_β:    ζ = &_1[++ARBNO_i];                 goto alt_α;
    alt_γ:      ARBNO = str(Σ+ARBNO_Δ0,Δ-ARBNO_Δ0); goto ARBNO_γ;
    alt_ω:      if (ARBNO_i <= 0)                   goto ARBNO_ω;
                ζ = &_1[--ARBNO_i];                 goto alt_β;
    /*------------------------------------------------------------------------*/
    str_t       BB;
    BB_α:       if (Δ+3 > Ω)                        goto BB_ω;
                if (Σ[Δ+0] != 'C')                  goto BB_ω;
                if (Σ[Δ+1] != 'B')                  goto BB_ω;
                if (Σ[Δ+2] != 'B')                  goto BB_ω;
                BB = str(Σ+Δ, 3);
                Δ += 3;                             goto BB_γ;
    BB_β:       Δ -= 3;                             goto BB_ω;
    /*------------------------------------------------------------------------*/
    str_t       RPOS0;
    RPOS0_α:    if (Δ != Ω)                         goto RPOS0_ω;
                RPOS0 = str(Σ+Δ, 0);                goto RPOS0_γ;
    RPOS0_β:                                        goto RPOS0_ω;
    /*------------------------------------------------------------------------*/
    /*  SEQUENCE IS WIRING: P = POS0 ARBNO BB RPOS0 -- eight edges, no box.    */
    /*------------------------------------------------------------------------*/
    POS0_γ:                                         goto ARBNO_α;
    ARBNO_ω:                                        goto POS0_β;
    ARBNO_γ:                                        goto BB_α;
    BB_ω:                                           goto ARBNO_β;
    BB_γ:                                           goto RPOS0_α;
    RPOS0_ω:                                        goto BB_β;
    /*------------------------------------------------------------------------*/
    main1_α:                                        goto POS0_α;
    RPOS0_γ:    write_sz(out, cszSuccess);          return;
    POS0_ω:     write_sz(out, cszFailure);          return;
}

#ifdef __GNUC__
static char szOutput[1024] = {0};
static const char cszInput[] = "ABCBB";
int main() {
    snobol(cszInput, szOutput, sizeof(szOutput));
    return 0;
}
#endif
