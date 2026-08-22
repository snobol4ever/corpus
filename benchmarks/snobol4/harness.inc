* harness.inc -- THE ONE timed-benchmark driver.  BM-H/BM-ONE.
* Shape: FIX THE TIME, COUNT THE ITERATIONS (inverts the legacy iteration-based family).
* Phase 1 CHECK     -- fixed count, deterministic, ref-diffable.  The ONLY line in the .ref.
* Phase 2 CALIBRATE -- double the batch until it spans ZFLR ms.  SKIPPED when ZK is pinned.
* Phase 3 MEASURE   -- run batches until the deadline; report iterations and elapsed ms.
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
* RESERVED -- the harness owns labels ZCAL ZMEAS ZB and variables ZT ZD ZE ZN ZK ZKN
*             ZCHK ZBUD ZFLR.  A benchmark body must not use them for anything else.
* OUTPUT -- "iters:" and "ms:" keep their exact legacy spelling and meaning so every existing runner
*           parses unchanged; "ns:" is the new full-resolution reading and is what a fine-grained
*           comparison should quote.
        OUTPUT = "check: " ZBODY(ZCHK)
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
        OUTPUT = "ms: " ZE / 1000000
END
