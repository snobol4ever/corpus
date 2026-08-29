#include <stdio.h>
/*----------------------------------------------------------------------------*/
typedef struct { const char * σ; int δ; } str_t;
/*----------------------------------------------------------------------------*/
/*  NESTED SEQUENCE PROBE -- models L13, the W-1c.0 crash shape:              */
/*                                                                            */
/*      SUBJ = 'abcd'                                                         */
/*      SUBJ ? ((LEN(2) . A) LEN(2)) . B                                      */
/*                                                                            */
/*  TWO nested sequences, NEITHER of which gets a box:                        */
/*      SEQ_outer = [ capA , LEN2b ]   consumer = capB   (n=2)                */
/*      SEQ_inner = [ LEN2a ]          consumer = capA   (n=1, pure alias)    */
/*                                                                            */
/*  Conditional assignment (.) is DEFERRED to match success (manual pg 72:    */
/*  "If the match succeeds, any conditional assignments within the pattern    */
/*  are performed"), so captures push onto a CAS and commit at MATCH_γ.       */
/*  The CAS belongs to the CAPTURE box, not to any sequence.                  */
/*----------------------------------------------------------------------------*/
static str_t A_val = {0,0}, B_val = {0,0};
static struct { str_t * tgt; const char * σ; int δ; } cas[16];
static int cas_n = 0;
/*----------------------------------------------------------------------------*/
void snobol(const char * Σ) {
    int Ω = 0; for (const char * p = Σ; *p; p++) Ω++;
    int Δ = 0, Δstart = 0;
    int capA_Δ0 = 0, capA_cas0 = 0, capB_Δ0 = 0, capB_cas0 = 0;
    goto MATCH_α;
    /*------------------------------------------------------------------------*/
    /*  LEAF: LEN(2) x2.  No value cell -- consumer derives from its cursor.   */
    /*------------------------------------------------------------------------*/
    LEN2a_α:    if (Δ+2 > Ω)                        goto LEN2a_ω;
                Δ += 2;                             goto LEN2a_γ;
    LEN2a_β:    Δ -= 2;                             goto LEN2a_ω;
    LEN2b_α:    if (Δ+2 > Ω)                        goto LEN2b_ω;
                Δ += 2;                             goto LEN2b_γ;
    LEN2b_β:    Δ -= 2;                             goto LEN2b_ω;
    /*------------------------------------------------------------------------*/
    /*  SEQ_inner = [LEN2a], consumer capA.  n=1 => the four edges degenerate  */
    /*  to a PURE ALIAS.  A sequence box here would be a no-op forwarder.      */
    /*------------------------------------------------------------------------*/
    capA_α:     capA_Δ0 = Δ; capA_cas0 = cas_n;     goto LEN2a_α;
    capA_β:     cas_n = capA_cas0;                  goto LEN2a_β;
    LEN2a_γ:    cas[cas_n].tgt = &A_val;
                cas[cas_n].σ = Σ+capA_Δ0;
                cas[cas_n].δ = Δ-capA_Δ0; cas_n++;  goto capA_γ;
    LEN2a_ω:                                        goto capA_ω;
    /*------------------------------------------------------------------------*/
    /*  SEQ_outer = [capA, LEN2b], consumer capB.  n=2.  Interior edges below, */
    /*  boundary edges live on capB.  No box, no ports, no cell.               */
    /*------------------------------------------------------------------------*/
    capA_γ:                                         goto LEN2b_α;
    LEN2b_ω:                                        goto capA_β;
    capB_α:     capB_Δ0 = Δ; capB_cas0 = cas_n;     goto capA_α;
    capB_β:     cas_n = capB_cas0;                  goto LEN2b_β;
    LEN2b_γ:    cas[cas_n].tgt = &B_val;
                cas[cas_n].σ = Σ+capB_Δ0;
                cas[cas_n].δ = Δ-capB_Δ0; cas_n++;  goto capB_γ;
    capA_ω:                                         goto capB_ω;
    /*------------------------------------------------------------------------*/
    /*  MATCH: unanchored, &ANCHOR=0 -- bump start cursor and retry.           */
    /*------------------------------------------------------------------------*/
    MATCH_α:    Δstart = 0;
    MATCH_retry:Δ = Δstart; cas_n = 0;              goto capB_α;
    capB_ω:     Δstart++;
                if (Δstart > Ω)                     goto MATCH_ω;
                                                    goto MATCH_retry;
    capB_γ:     for (int i = 0; i < cas_n; i++)
                    *cas[i].tgt = (str_t){cas[i].σ, cas[i].δ};
                printf("A=%.*s\n", A_val.δ, A_val.σ);
                printf("B=%.*s\n", B_val.δ, B_val.σ);
                printf("Success!\n");               return;
    MATCH_ω:    printf("Failure.\n");               return;
}
/*----------------------------------------------------------------------------*/
int main(int c, char**v) { snobol(c>1?v[1]:"abcd"); return 0; }
