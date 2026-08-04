#ifdef __GNUC__
#define __kernel
#define __global
extern int printf(char *, ...);
#endif
/*----------------------------------------------------------------------------*/
/*  CASE 4 — CONDITIONAL CAPTURE *INSIDE* THE ARBNO BODY                      */
/*                                                                            */
/*      SUBJ ? POS(0) ARBNO(('Bird' | 'Blue' | LEN(1)) . W) RPOS(0)           */
/*      SUBJ = 'BlueGold'          SPITBOL oracle:  ok W=d                     */
/*                                                                            */
/*  THE CHALLENGE THIS ISOLATES (the rung that reverted SCRIP ZW16):          */
/*  a conditional assignment `.` is PENDING state -- pushed when the component */
/*  matches, POPPED when the scanner backs through it, COMMITTED only at match */
/*  end.  Inside an ARBNO body there is ONE pending entry PER ITERATION, and   */
/*  the count is unbounded.  SPITBOL keeps them on a separate pushdown stack   */
/*  (the CAS).  UNDER PER-BB ZETA ALLOCATION NO SEPARATE STACK IS NEEDED: the  */
/*  entry lives in the capture box's OWN cell, allocated at its alpha inside   */
/*  the iteration and freed at its omega -- so the zeta stack IS the CAS.      */
/*  The only thing that cannot be reconstructed is WHICH cells are still       */
/*  pending, so the cells carry a LINK: cas_top -> newest -> ... -> oldest.    */
/*  That chain is READ AT EXACTLY ONE PLACE -- the commit on match success     */
/*  (final success / fenced success).  Never on the failure path: a pop is     */
/*  one store, and the unwind reaches it by its own omega.                     */
/*                                                                            */
/*  _z[] BELOW IS THE ZETA STACK AND zi IS RSP.  In emitted code the array     */
/*  and the index both disappear: iteration N+1's cell sits below N's because  */
/*  rsp has not moved back, and `&_z[zi]` is simply [rsp+0].                   */
/*----------------------------------------------------------------------------*/
typedef struct { const char * σ; int δ; } str_t;
/*----------------------------------------------------------------------------*/
__kernel void snobol(__global const char * Σ) {
    /*------------------------------------------------------------------------*/
    inline int   len(const char * s) { int δ = 0; for (; *s; δ++) s++; return δ; }
    inline str_t str(const char * σ, int δ) { return (str_t) {σ, δ}; }
    inline void  put(const char * tag, str_t s) { printf("%s%.*s\n", tag, s.δ, s.σ); }
    /*------------------------------------------------------------------------*/
    typedef struct _cap { struct _cap * prev; str_t val; } cap_t;
    typedef struct _iter { int alt_i; int cap_Δ0; cap_t cap; } iter_t;
    /*------------------------------------------------------------------------*/
    iter_t   _z[64];                    /* THE ZETA STACK   (in x86: rsp)      */
    int      zi;                        /* THE FRONTIER     (in x86: rsp)      */
    iter_t * ζ = &_z[0];                /* CURRENT CELL     (in x86: [rsp+0])  */
    cap_t *  cas_top = 0;               /* pending-capture chain head          */
    str_t    W = {0, 0};                /* the capture target                  */
    /*------------------------------------------------------------------------*/
    int Δ = 0;
    int Ω = len(Σ);
    goto main_α;
    /*------------------------------------------------------------------------*/
    str_t       POS0;
    POS0_α:     if (Δ != 0)                         goto POS0_ω;
                POS0 = str(Σ+Δ, 0);                 goto POS0_γ;
    POS0_β:                                         goto POS0_ω;
    /*------------------------------------------------------------------------*/
    str_t       BIRD;
    BIRD_α:     if (Σ[Δ+0] != 'B')                  goto BIRD_ω;
                if (Σ[Δ+1] != 'i')                  goto BIRD_ω;
                if (Σ[Δ+2] != 'r')                  goto BIRD_ω;
                if (Σ[Δ+3] != 'd')                  goto BIRD_ω;
                BIRD = str(Σ+Δ, 4); Δ += 4;         goto BIRD_γ;
    BIRD_β:     Δ -= 4;                             goto BIRD_ω;
    /*------------------------------------------------------------------------*/
    str_t       BLUE;
    BLUE_α:     if (Σ[Δ+0] != 'B')                  goto BLUE_ω;
                if (Σ[Δ+1] != 'l')                  goto BLUE_ω;
                if (Σ[Δ+2] != 'u')                  goto BLUE_ω;
                if (Σ[Δ+3] != 'e')                  goto BLUE_ω;
                BLUE = str(Σ+Δ, 4); Δ += 4;         goto BLUE_γ;
    BLUE_β:     Δ -= 4;                             goto BLUE_ω;
    /*------------------------------------------------------------------------*/
    str_t       LEN1;
    LEN1_α:     if (Δ+1 > Ω)                        goto LEN1_ω;
                LEN1 = str(Σ+Δ, 1); Δ += 1;         goto LEN1_γ;
    LEN1_β:     Δ -= 1;                             goto LEN1_ω;
    /*------------------------------------------------------------------------*/
    /*  ALTERNATE — one per-iteration datum: which arm is live                 */
    /*------------------------------------------------------------------------*/
    alt_α:      ζ->alt_i = 1;                       goto BIRD_α;
    alt_β:      if (ζ->alt_i == 1)                  goto BIRD_β;
                if (ζ->alt_i == 2)                  goto BLUE_β;
                if (ζ->alt_i == 3)                  goto LEN1_β;
                                                    goto alt_ω;
    BIRD_γ:                                         goto alt_γ;
    BIRD_ω:     ζ->alt_i++;                         goto BLUE_α;
    BLUE_γ:                                         goto alt_γ;
    BLUE_ω:     ζ->alt_i++;                         goto LEN1_α;
    LEN1_γ:                                         goto alt_γ;
    LEN1_ω:                                         goto alt_ω;
    /*------------------------------------------------------------------------*/
    /*  CAPTURE `.` — PUSH on gamma, POP on beta, COMMIT at match success      */
    /*------------------------------------------------------------------------*/
    cap_α:      ζ->cap_Δ0 = Δ;                      goto alt_α;
    alt_γ:      ζ->cap.val  = str(Σ + ζ->cap_Δ0, Δ - ζ->cap_Δ0);
                ζ->cap.prev = cas_top;
                cas_top     = &ζ->cap;              goto cap_γ;
    cap_β:      cas_top     = ζ->cap.prev;          goto alt_β;
    alt_ω:                                          goto cap_ω;
    /*------------------------------------------------------------------------*/
    /*  ARBNO — ONE datum: the cursor at alpha.  No accumulator, no counter,   */
    /*  no depth.  The result is DERIVED: str(Σ+Δ0, Δ-Δ0).                     */
    /*------------------------------------------------------------------------*/
    str_t       ARBNO;
    int         ARBNO_Δ0;
    ARBNO_α:    ARBNO_Δ0 = Δ; zi = -1;
                ARBNO = str(Σ+ARBNO_Δ0, 0);         goto ARBNO_γ;
    ARBNO_β:    ζ = &_z[++zi];                      goto cap_α;
    cap_γ:      ARBNO = str(Σ+ARBNO_Δ0, Δ-ARBNO_Δ0);goto ARBNO_γ;
    cap_ω:      if (zi <= 0)                        goto ARBNO_ω;
                ζ = &_z[--zi];                      goto cap_β;
    /*------------------------------------------------------------------------*/
    str_t       RPOS0;
    RPOS0_α:    if (Δ != Ω)                         goto RPOS0_ω;
                RPOS0 = str(Σ+Δ, 0);                goto RPOS0_γ;
    RPOS0_β:                                        goto RPOS0_ω;
    /*------------------------------------------------------------------------*/
    str_t       seq;
    int         seq_Δ0;
    seq_α:      seq_Δ0 = Δ; seq = str(Σ+Δ, 0);      goto POS0_α;
    seq_β:                                          goto RPOS0_β;
    POS0_γ:     seq = str(Σ+seq_Δ0, Δ-seq_Δ0);      goto ARBNO_α;
    POS0_ω:                                         goto seq_ω;
    ARBNO_γ:    seq = str(Σ+seq_Δ0, Δ-seq_Δ0);      goto RPOS0_α;
    ARBNO_ω:                                        goto POS0_β;
    RPOS0_γ:    seq = str(Σ+seq_Δ0, Δ-seq_Δ0);      goto seq_γ;
    RPOS0_ω:                                        goto ARBNO_β;
    /*------------------------------------------------------------------------*/
    /*  MATCH END = the SOLE reader of the pending chain (fenced success).     */
    /*  Walk oldest -> newest so the newest assignment wins, exactly as        */
    /*  SPITBOL commits its CAS in push order.                                 */
    /*------------------------------------------------------------------------*/
    inline void commit(cap_t * c) { if (!c) return; commit(c->prev); W = c->val; }
    /*------------------------------------------------------------------------*/
    main_α:                                         goto seq_α;
    seq_γ:      commit(cas_top);
                put("ok W=", W);                    return;
    seq_ω:      printf("failed\n");                 return;
}
/*----------------------------------------------------------------------------*/
#ifdef __GNUC__
int main(void) { snobol("BlueGold"); return 0; }
#endif
