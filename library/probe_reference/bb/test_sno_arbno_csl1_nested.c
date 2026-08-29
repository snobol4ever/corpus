extern int printf(char *, ...);
extern int fprintf(void*,char*,...);
extern void* stderr;
/*  CSL-1 -- X02 nested ARBNO:  POS(0) ARBNO('(' ARBNO(NOTANY(')')) ')') RPOS(0)
    on '(ab)(c)'  -> SPITBOL oracle: =S
    BOTH bodies are zero-claiming: inner body NOTANY is a {0,1} matcher; outer
    body is LP + innerARBNO + RP.  Per CSL-1a a zero grant corrupts the cursor.
    IG/OG = inner/outer per-iteration grant, in bytes.                        */
int snobol(const char * Σ, int IG, int OG) {
    inline int len(const char * s){int d=0;for(;*s;d++)s++;return d;}
    char islab[256]; char * ιζ = &islab[0];
    char oslab[256]; char * οζ = &oslab[0];
    int Δ = 0, Ω = len(Σ);
    goto main_α;
    POS0_α:     if (Δ != 0)                     goto POS0_ω;
                                                goto POS0_γ;
    POS0_β:                                     goto POS0_ω;
    LP_α:       if (Δ+1 > Ω)                    goto LP_ω;
                if (Σ[Δ] != '(')                goto LP_ω;
                Δ += 1;                         goto LP_γ;
    LP_β:       Δ -= 1;                         goto LP_ω;
    NOT_α:      if (Δ+1 > Ω)                    goto NOT_ω;
                if (Σ[Δ] == ')')                goto NOT_ω;
                Δ += 1;                         goto NOT_γ;
    NOT_β:      Δ -= 1;                         goto IARB_retract;
    /*  INNER ARBNO -- body NOTANY claims IG bytes                            */
    IARB_α:     ιζ = &islab[0];                 goto IARB_γ;
    IARB_β:     ιζ += IG;                       goto NOT_α;
    NOT_γ:                                      goto IARB_γ;
    NOT_ω:                                      goto IARB_retract;
    IARB_retract:
                ιζ -= IG;
                if (ιζ == &islab[0])            goto IARB_ω;
                                                goto NOT_β;
    RP_α:       if (Δ+1 > Ω)                    goto RP_ω;
                if (Σ[Δ] != ')')                goto RP_ω;
                Δ += 1;                         goto RP_γ;
    RP_β:       Δ -= 1;                         goto RP_ω;
    /*  OUTER body SEQUENCE = wiring:  LP  IARB  RP                           */
    LP_γ:                                       goto IARB_α;
    IARB_ω:                                     goto LP_β;
    IARB_γ:                                     goto RP_α;
    RP_ω:                                       goto IARB_β;
    /*  OUTER ARBNO -- body is that sequence, claims OG bytes                 */
    OARB_α:                                     goto OARB_γ;
    OARB_β:     οζ += OG;                       goto LP_α;
    RP_γ:                                       goto OARB_γ;
    LP_ω:                                       goto OARB_retract;
    OARB_retract:
                οζ -= OG;
                if (οζ == &oslab[0])            goto OARB_ω;
                                                goto RP_β;
    RPOS0_α:    if (Δ != Ω)                     goto RPOS0_ω;
                                                goto RPOS0_γ;
    RPOS0_β:                                    goto RPOS0_ω;
    /*  TOP SEQUENCE = wiring:  POS0  OARB  RPOS0                             */
    POS0_γ:                                     goto OARB_α;
    OARB_ω:     fprintf(stderr,"      [OARB_ω Δ=%d (correct 0)]  ",Δ);  goto POS0_β;
    OARB_γ:                                     goto RPOS0_α;
    RPOS0_ω:                                    goto OARB_β;
    main_α:                                     goto POS0_α;
    RPOS0_γ:    printf("=S\n");                 return 0;
    POS0_ω:     printf("=F\n");                 return 0;
}
int main(){
    fprintf(stderr,"--- FAILING subject (ab)(c -- forces FULL unwind ---\n");
    fprintf(stderr,"IG=0 OG=0 : "); snobol("(ab)(c",0,0);
    fprintf(stderr,"IG=1 OG=0 : "); snobol("(ab)(c",1,0);
    fprintf(stderr,"IG=0 OG=1 : "); snobol("(ab)(c",0,1);
    fprintf(stderr,"IG=1 OG=1 : "); snobol("(ab)(c",1,1);



    return 0;
}
