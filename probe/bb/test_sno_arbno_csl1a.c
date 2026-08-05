extern int printf(char *, ...);
extern int fprintf(void*,char*,...);
extern void* stderr;
int Δ, Ω;
int snobol(const char * Σ, int CELLSZ) {
    inline int len(const char * s){int d=0;for(;*s;d++)s++;return d;}
    char slab[64]; char * ζ = &slab[0];
    Δ = 0; Ω = len(Σ);
    goto main_α;
    POS0_α:     if (Δ != 0)                     goto POS0_ω;
                                                goto POS0_γ;
    POS0_β:                                     goto POS0_ω;
    LEN1_α:     if (Δ+1 > Ω)                    goto LEN1_ω;
                Δ += 1;                         goto LEN1_γ;
    LEN1_β:     Δ -= 1;                         goto ARBNO_retract;
    /*  ARBNO with ZERO storage of its own.  The frontier moves ONLY by the   */
    /*  BODY's own claim -- CELLSZ.  For a body that allocates nothing,       */
    /*  CELLSZ==0 and the frontier NEVER MOVES.  That is the question.        */
    ARBNO_α:                                    goto ARBNO_γ;
    ARBNO_β:    ζ += CELLSZ;                    goto LEN1_α;
    LEN1_γ:                                     goto ARBNO_γ;
    LEN1_ω:                                     goto ARBNO_retract;
    ARBNO_retract:
                ζ -= CELLSZ;
                if (ζ == &slab[0])              goto ARBNO_ω;
                                                goto LEN1_β;
    Z_α:        if (Δ+1 > Ω)                    goto Z_ω;
                if (Σ[Δ] != 'z')                goto Z_ω;
                Δ += 1;                         goto Z_γ;
    Z_β:        Δ -= 1;                         goto Z_ω;
    RPOS0_α:    if (Δ != Ω)                     goto RPOS0_ω;
                                                goto RPOS0_γ;
    RPOS0_β:                                    goto RPOS0_ω;
    /* SEQUENCE = wiring: POS0 ARBNO Z RPOS0 */
    POS0_γ:                                     goto ARBNO_α;
    ARBNO_ω:    fprintf(stderr,"   ARBNO_ω reached with Δ=%d  (correct: 0)\n",Δ);
                                                goto POS0_β;
    ARBNO_γ:                                    goto Z_α;
    Z_ω:                                        goto ARBNO_β;
    Z_γ:                                        goto RPOS0_α;
    RPOS0_ω:                                    goto Z_β;
    main_α:                                     goto POS0_α;
    RPOS0_γ:    printf("Success!\n");           return 0;
    POS0_ω:     printf("Failure.\n");           return 0;
}
int main(){
    fprintf(stderr,"A: body allocates NOTHING (CELLSZ=0) -- ARBNO owns zero bytes:\n");
    snobol("abc", 0);
    fprintf(stderr,"B: body claims 1 byte (CELLSZ=1) -- frontier moves:\n");
    snobol("abc", 1);
    return 0;
}
