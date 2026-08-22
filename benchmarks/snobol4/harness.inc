* harness.inc -- THE ONE timed-benchmark driver.  BM-H/BM-ONE.
* Shape: FIX THE TIME, COUNT THE ITERATIONS (inverts the legacy iteration-based family).  This is the
*   TIME-based mode and stays the DEFAULT -- selected whenever stdin is EOF, the existing universal
*   `< /dev/null` convention every runner already uses.  Byte-identical to before fixed-work mode landed.
* ⭐ FIXED-WORK MODE (bench-harness-unmeasurable, 2026-08-22): pipe ONE line on stdin holding a positive
*   integer and the harness runs ZBODY exactly that many times, ONCE, with NO wall-clock deadline
*   anywhere in the run.  This is the fix for instruction-counting under callgrind/cachegrind: a
*   wall-clock deadline measures the INSTRUMENT's own throughput, not the kernel's, because every arm
*   self-shrinks its batch/iteration count to fit the budget's SLOWED real time -- MEASURED, arith_loop
*   (166,086,964 Ir) and table_access (175,122,420 Ir) land within 5% of each other under callgrind's
*   default TIME mode despite an ~20,481x native throughput gap (83,886,080 vs 4,096 iters/500ms) --
*   see FINDING-2026-08-22-bench-harness-unmeasurable.md.  Selection is a pure stdin gate, no new
*   killswitch/global/builtin: `echo N | scrip --run k.sno` (fixed-work, N iterations) vs
*   `scrip --run k.sno < /dev/null` (time-based, unchanged).  Contract: N is a positive integer, one
*   line, nothing else on stdin -- the harness does not validate malformed input, matching every other
*   reserved-variable contract below.
* Phase 1 CHECK     -- fixed count, deterministic, ref-diffable.  The ONLY line in the .ref.  Runs
*                      FIRST, unconditionally, in BOTH modes -- this is what already makes every
*                      kernel's check value oracle-comparable regardless of which mode runs after it.
* Phase 2 CALIBRATE -- (TIME mode only) double the batch until it spans ZFLR ms.  SKIPPED when ZK is pinned.
* Phase 3 MEASURE   -- (TIME mode only) run batches until the deadline; report iterations and elapsed ms.
*                      Fixed-work mode replaces the DEADLINE with a TOTAL, batching the SAME way: a
*                      pinned ZK is reused as the batch size (so a non-steady-state kernel like
*                      string_concat still measures many ZK-sized batches, not one call of size
*                      fixed_n -- that would build one string fixed_n long instead of many ZK-long
*                      ones, a different and non-comparable workload); an unpinned kernel batches in
*                      one shot, same as it would if ZK happened to calibrate to the whole total.
* ⭐ NS-TIME (s249, Lon in-chat): TIME() is INTEGER NANOSECONDS of a monotonic clock since program start
*   in ALL THREE ENGINES -- SCRIP, SPITBOL (osint/systm.c) and CSNOBOL4 (lib/bsd/mstime.c).  It used to be
*   whole milliseconds off three DIFFERENT clocks (SCRIP wall, the oracles process-CPU), which is why a
*   500 ms window could only ever be read to 3 digits.  ⛔ ZBUD and ZFLR STAY IN MILLISECONDS -- the
*   contract below is unchanged and the 15 benchmark bodies are untouched; this file converts them once,
*   in place, immediately after the check line.  Every other quantity here is nanoseconds.
* CONTRACT -- the including benchmark supplies these BEFORE the -INCLUDE:
*   DEFINE('ZBODY(ZKN)')  runs ZKN iterations of the kernel and RETURNS the check value.
*                         The K-loop lives INSIDE the function so call cost amortizes per batch.
*   ZCHK                  phase-1 iteration count (fixes the deterministic check value).
*   ZBUD                  phase-3 time budget, MILLISECONDS.
*   ZFLR                  phase-2 calibration floor, MILLISECONDS.
*   ZK                    OPTIONAL -- set it to PIN the batch when the kernel is not
*                         steady-state (batch size is then part of the workload).
* RESERVED -- the harness owns labels ZCAL ZMEAS ZB ZFIXRUN ZFB ZFL ZEXIT and variables ZT ZD ZE ZN ZK
*             ZKN ZCHK ZBUD ZFLR fixed_n.  A benchmark body must not use them for anything else.
* OUTPUT -- "iters:" and "ms:" keep their exact legacy spelling and meaning so every existing runner
*           parses unchanged; "ns:" is the new full-resolution reading and is what a fine-grained
*           comparison should quote.  Fixed-work mode prints the same three lines; "iters:" is the
*           actual total run (== fixed_n exactly when ZK, pinned or not, divides it evenly).
        OUTPUT = "check: " ZBODY(ZCHK)
        fixed_n = INPUT                                  :S(ZFIXRUN)
        ZFLR = ZFLR * 1000000
        ZBUD = ZBUD * 1000000
        DIFFER(ZK)                                      :S(ZMEAS)
        ZK = 1
ZCAL    ZT = TIME()
        ZBODY(ZK)
        ZE = TIME() - ZT
        ZK = LT(ZE, ZFLR) ZK * 2                        :S(ZCAL)
ZMEAS   ZT = TIME()
        ZD = ZT + ZBUD
        ZN = 0
ZB      ZBODY(ZK)
        ZN = ZN + ZK
        LT(TIME(), ZD)                                  :S(ZB)
        ZE = TIME() - ZT
        OUTPUT = "iters: " ZN
        OUTPUT = "ns: " ZE
        OUTPUT = "ms: " ZE / 1000000                    :(ZEXIT)
ZFIXRUN DIFFER(ZK)                                      :S(ZFB)
        ZK = fixed_n
ZFB     ZT = TIME()
        ZN = 0
ZFL     ZBODY(ZK)
        ZN = ZN + ZK
        LT(ZN, fixed_n)                                 :S(ZFL)
        ZE = TIME() - ZT
        OUTPUT = "iters: " ZN
        OUTPUT = "ns: " ZE
        OUTPUT = "ms: " ZE / 1000000
ZEXIT   ZE = ZE
END
