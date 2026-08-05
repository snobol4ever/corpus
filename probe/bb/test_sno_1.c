#ifdef __GNUC__
#define __kernel
#define __global
#include <assert.h>
extern int printf(char *, ...);
//extern void assert(int a);
#endif
/*----------------------------------------------------------------------------*/
typedef struct { const char * σ; int δ; } str_t;
typedef struct { unsigned int pos; __global char * buffer; } output_t;
/*----------------------------------------------------------------------------*/
#if 0
void write_nl(output_t * out) {}
int  write_int(output_t * out, int v) {}
void write_sz(output_t * out, const char * s) {}
void write_flush(output_t * out) {}
#else
#if 1
extern int printf(char *, ...);
void    write_nl(output_t * out) { printf("%s", "\n"); }
int     write_int(output_t * out, int v) { printf("%d\n", v); return v; }
void    write_sz(output_t * out, const char * s) { printf("%s\n", s); }
str_t   write_str(output_t * out, str_t str) {
            printf("%.*s\n", str.δ, str.σ);
            return str;
        }
void    write_flush(output_t * out) {}
#else
    void write_nl(output_t * out) {
        out->buffer[out->pos++] = '\n';
        out->buffer[out->pos] = 0;
    }

    int write_int(output_t * out, int v) {
        int n = v;
        if (v < 0) { out->buffer[out->pos++] = '-'; n = -v; }
        if (n == 0) out->buffer[out->pos++] = '0';
        else {
            int i = 0;
            char temp[16] = "";
            while (n > 0) { temp[i++] = '0' + (n % 10); n /= 10; }
            while (i > 0) out->buffer[out->pos++] = temp[--i];
        }
        out->buffer[out->pos++] = '\n';
        out->buffer[out->pos] = '\0';
        return v;
    }

    void write_sz(output_t * out, const char * s) {
        for (int i = 0; s[i]; i++)
            out->buffer[out->pos++] = s[i];
        out->buffer[out->pos++] = '\n';
        out->buffer[out->pos] = 0;
    }

    void write_flush(output_t * out) {
#   ifdef __GNUC__
        printf("%s", out->buffer);
#   endif
    }
#endif
#endif
/*----------------------------------------------------------------------------*/
__kernel void snobol(
    __global const char * Σ,
    __global       char * buffer,
             const int    num_chars) {
    /*------------------------------------------------------------------------*/
    const char cszFailure[9] = "Failure.";
    const char cszSuccess[9] = "Success!";
    const str_t empty = {0, 0};
    output_t output = {0, buffer};
    output_t * out = &output;
    for (int i = 0; i < num_chars; i++)
        buffer[i] = 0;
    /*------------------------------------------------------------------------*/
    inline int len(const char * s) { int δ = 0; for (; *s; δ++) s++; return δ; }
    inline str_t str(const char * σ, int δ) { return (str_t) {σ, δ}; }
    inline str_t cat(str_t x, str_t y) { return (str_t) {x.σ, x.δ + y.δ}; }
    /*------------------------------------------------------------------------*/
    typedef struct _1 { int alt_i; } _1_t;
    _1_t _slab[65];
    _1_t * ζ = &_slab[0];
    int Δ = 0;
    int Ω = len(Σ);
    goto main1_α;
    /*------------------------------------------------------------------------*/
    /*  SNOBOL4 SOURCE (verified byte-identical against sbl -b, 2026-08-04):   */
    /*                                                                        */
    /*      SUBJ = 'BlueGoldBirdFish'                                         */
    /*      SUBJ ? (POS(0) ARBNO('Bird' | 'Blue' | LEN(1)) $ OUTPUT           */
    /*             RPOS(0)) $ OUTPUT                        :F(FAILED)        */
    /*      OUTPUT = 'Success!'                             :(END)            */
    /*  FAILED  OUTPUT = 'Failure.'                                           */
    /*  END                                                                   */
    /*                                                                        */
    /*  Oracle output: an EMPTY line (ARBNO's shy null match), then Blue,     */
    /*  BlueG ... BlueGoldBirdFish, BlueGoldBirdFish, Success!  (13 lines).   */
    /*                                                                        */
    /*  DERIVE, DON'T ACCUMULATE (ruling 3, 2026-08-04): every result is      */
    /*  str(Σ+Δ0, Δ-Δ0) from the cursor saved at α -- never cat() onto a      */
    /*  running total.  γ is re-entered once per retry, so an accumulator     */
    /*  double-counts (measured: 11x, right answer by accident).  This is     */
    /*  why the per-iteration cell is {int alt_i;} -- and why that ONE member  */
    /*  survives the shell deletion below while the box itself does not.      */
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
                BIRD = str(Σ+Δ, 4);
                Δ += 4;                             goto BIRD_γ;
    BIRD_β:     Δ -= 4;                             goto BLUE_α;
    /*------------------------------------------------------------------------*/
    str_t       BLUE;
    BLUE_α:     if (Σ[Δ+0] != 'B')                  goto BLUE_ω;
                if (Σ[Δ+1] != 'l')                  goto BLUE_ω;
                if (Σ[Δ+2] != 'u')                  goto BLUE_ω;
                if (Σ[Δ+3] != 'e')                  goto BLUE_ω;
                BLUE = str(Σ+Δ, 4);
                Δ += 4;                             goto BLUE_γ;
    BLUE_β:     Δ -= 4;                             goto LEN1_α;
    /*------------------------------------------------------------------------*/
    str_t       LEN1;
    LEN1_α:     if (Δ+1 > Ω)                        goto LEN1_ω;
                LEN1 = str(Σ+Δ,1); Δ+=1;            goto LEN1_γ;
    LEN1_β:     Δ-=1;                               goto ARBNO_retract;
    /*------------------------------------------------------------------------*/
    /*------------------------------------------------------------------------*/
    /*  ALTERNATION: 3 OF 4 PORTS ARE WIRING; THE β PORT IS NOT.              */
    /*  (proved 2026-08-05b -- FINDING-2026-08-05b-...-ALT-SHELL-IS-WIRING)   */
    /*                                                                        */
    /*  The alt BOX is gone -- no ports, no cell, no label of its own.  Its    */
    /*  arms wire DIRECTLY to the consumer, exactly as SEQUENCE's members do:  */
    /*                                                                        */
    /*      A_α → M1_α         (folded into the consumer's β edge)            */
    /*      Mi_γ → A_γ         (A_γ IS the consumer's consumption site)       */
    /*      Mi_ω → M(i+1)_α    (static chain)                                 */
    /*      Mn_ω → A_ω         (A_ω IS the consumer's retract site)           */
    /*                                                                        */
    /*  ⭐ THE CHAIN IS β → NEXT α (Lon, 2026-08-05).  Mi_ω and Mi_β land on  */
    /*  THE SAME TARGET -- one edge set, not two.  ω = "arm never matched,    */
    /*  try next"; β = "arm matched, want another -- give back, try next".    */
    /*  alt_i is written at γ (where the live arm is KNOWN), not walked       */
    /*  forward by ++ at ω.  Measured 322→316 on the d0 probe vs the ω-chain. */
    /*                                                                        */
    /*  ⛔ BUT A_β IS NOT WIRING, AND THE COUNTER MUST STAY.  ARBNO's depth   */
    /*  is UNBOUNDED and each live iteration bound a DIFFERENT alternative --  */
    /*  that is why the cell array is _1[64] and not a scalar.  Static wiring  */
    /*  is ONE copy of the code; it cannot carry N independent "which arm"     */
    /*  facts.  The selector is DATA, not CONTROL.  Falsified by exhaustion    */
    /*  over the closed target set {arm1, arm2, arm3, ω} × two probes whose    */
    /*  live arm differs: perfect diagonal, no static choice passes both.      */
    /*                                                                        */
    /*  ⛔⛔ AND NOTE WHOSE CELL THAT IS.  `struct _1` has ONE member, alt_i.  */
    /*  ARBNO's own state (ARBNO_i, ARBNO_Δ0) is SCALARS, outside the array.   */
    /*  _1[64] exists SOLELY for the alternation -- delete alt_i and the whole */
    /*  array goes with it.  So by this tree's operative definition of a box   */
    /*  (owns a claim at unbounded depth -- what zls_grant_locals decides),    */
    /*  ⭐ ALT *IS* A BOX.  What the deletion below removes is its DISPATCH    */
    /*  SURFACE (3 of 4 ports), not its boxhood.  ⚠ An emitter rung that       */
    /*  drops IR_MATCH_ALT as a KIND while keeping this datum leaves the claim */
    /*  UNOWNED -- the SE-6 defect verbatim.  Keep a claim authority.          */
    /*  (Contrast test_sno_4.c: there the cell is `_iter{alt_i;cap_Δ0;cap;}`   */
    /*  and the CAPTURE claims at the same depth regardless, so there -- and   */
    /*  only there -- alt_i genuinely rides along in someone else's claim.)    */
    /*                                                                        */
    /*  ⚠ THIS FILE CANNOT PROVE THAT -- ITS β SELECTOR FIRES ZERO TIMES.     */
    /*  The greedy path succeeds, so backtracking reaches ARBNO_β (extend),   */
    /*  never the retract.  ALL FOUR static wirings pass this probe.  Use     */
    /*  test_sno_alt_d0.c (resumes arm 2) and test_sno_alt_d5.c (resumes      */
    /*  arm 1) -- those are the probes that discriminate.                      */
    BIRD_γ:     ζ->alt_i = 1;                       goto ARBNO_γ;
    BIRD_ω:                                         goto BLUE_α;
    BLUE_γ:     ζ->alt_i = 2;                       goto ARBNO_γ;
    BLUE_ω:                                         goto LEN1_α;
    LEN1_γ:     ζ->alt_i = 3;                       goto ARBNO_γ;
    LEN1_ω:                                         goto ARBNO_retract;
    /*------------------------------------------------------------------------*/
    /*  ⭐⭐ ARBNO — ZERO LOCAL STORAGE.  PROVED BY DELETION 2026-08-05.       */
    /*  Gone: ARBNO_Δ0 (the capture derives from ITS OWN entry cursor, per     */
    /*  DERIVE-DON'T-ACCUMULATE), ARBNO_i (the depth WAS the frontier), and    */
    /*  the ARBNO result member (derived, never stored).  What is left:        */
    /*      α  — a PURE EDGE, no work at all (the shy null match)             */
    /*      β  — ζ++  : that is ALT's GRANT, on the sole edge into ALT        */
    /*      retract — ζ-- : ALT's RELEASE, then a COMPILE-TIME-CONSTANT base  */
    /*      compare (`ζ == &_slab[0]`, an addressing constant, not a datum),  */
    /*      then ALT's OWN selector.                                          */
    /*  ⭐ ARBNO OWNS ZERO BYTES.  Every datum it touches belongs to ALT.      */
    /*  341 → 312 insns (-O0) for this program, oracle-exact.                 */
    /*                                                                        */
    /*  ⚠ SCOPE — SINGLE-ENTRY ONLY.  α is a pure edge because the frontier   */
    /*  is at base on entry.  On the ω path that SELF-RESTORES (the retract    */
    /*  walks ζ back to base exactly when ARBNO_ω fires — measured).  On the   */
    /*  γ path cells stay LIVE BY DESIGN (ARBNO must be resumable) — measured  */
    /*  frontier offset 10 at success exit.  So RE-ENTRY after a γ-exit needs  */
    /*  a caller-side restore: PLAN.md's "free-delineation: CALLER-side, both  */
    /*  γ/ω return edges."  NESTED ARBNO IS NOT PROVED HERE and is the live    */
    /*  SEQ-ERAD defect (H24 H25 X02 X06 X11).                                */
    ARBNO_α:                                        goto ARBNO_γ;
    ARBNO_β:    ζ++;                                goto BIRD_α;
    ARBNO_retract:
                ζ--;
                if (ζ == &_slab[0])                 goto ARBNO_ω;
                if (ζ->alt_i == 1)                  goto BIRD_β;
                if (ζ->alt_i == 2)                  goto BLUE_β;
                if (ζ->alt_i == 3)                  goto LEN1_β;
                                                    goto ARBNO_retract;
    /*------------------------------------------------------------------------*/
    str_t       assign;
    int         assign_Δ0;
    assign_α:   assign_Δ0 = Δ;                      goto ARBNO_α;
    assign_β:                                       goto ARBNO_β;
    ARBNO_γ:    assign = write_str(out,
                    str(Σ+assign_Δ0, Δ-assign_Δ0)); goto assign_γ;
    ARBNO_ω:                                        goto assign_ω;
    /*------------------------------------------------------------------------*/
    str_t       RPOS0;
    RPOS0_α:    if (Δ != Ω)                         goto RPOS0_ω;
                RPOS0 = str(Σ+Δ, 0);                goto RPOS0_γ;
    RPOS0_β:                                        goto RPOS0_ω;
    /*------------------------------------------------------------------------*/
    /*  SEQUENCE IS WIRING -- NO box, NO ports, NO cell, NO label of its own.  */
    /*  The sequence P = POS0 assign RPOS0 is ENTIRELY these eight edges, all  */
    /*  assigned by LOWER at compile time (proved by deletion, 2026-08-04;     */
    /*  re-proved by this file, which declares no sequence box at all):        */
    /*                                                                        */
    /*      P_α → M1_α          P_β → Mn_β                                    */
    /*      Mi_γ → M(i+1)_α     Mn_γ → P_γ                                    */
    /*      Mi_ω → M(i-1)_β     M1_ω → P_ω                                    */
    /*                                                                        */
    /*  P's four ports ARE the consumer's four ports -- there is no third      */
    /*  party to own them.  The INTERIOR edges (Mi↔Mi+1) are below; the        */
    /*  BOUNDARY edges (P_α P_β P_γ P_ω) are in the consumer block that        */
    /*  follows.  The matched extent is DERIVED by that consumer from its own  */
    /*  entry cursor -- str(Σ+Δ0, Δ-Δ0) -- never accumulated in a member.      */
    /*------------------------------------------------------------------------*/
    POS0_γ:                                         goto assign_α;
    assign_ω:                                       goto POS0_β;
    assign_γ:                                       goto RPOS0_α;
    RPOS0_ω:                                        goto assign_β;
    /*------------------------------------------------------------------------*/
    str_t       write;
    int         write_Δ0;
    write_α:    write_Δ0 = Δ;                       goto POS0_α;
    write_β:                                        goto RPOS0_β;
    RPOS0_γ:    write = write_str(out,
                       str(Σ+write_Δ0, Δ-write_Δ0));goto write_γ;
    POS0_ω:                                         goto write_ω;
    /*------------------------------------------------------------------------*/
    main1_α:                                        goto write_α;
    main1_β:                                        return;
    write_γ:    write_sz(out, cszSuccess);          return; /*goto write_β;*/
    write_ω:    write_sz(out, cszFailure);          return;
}

#ifdef __GNUC__
static char szOutput[1024] = {0};
static const char cszInput[] = "BlueGoldBirdFish";
int main() {
    snobol(cszInput, szOutput, sizeof(szOutput));
    return 0;
}
#endif
