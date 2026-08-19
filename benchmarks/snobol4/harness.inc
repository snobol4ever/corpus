* harness.inc -- THE ONE timed-benchmark driver.  BM-H/BM-ONE.
* Shape: FIX THE TIME, COUNT THE ITERATIONS (inverts the legacy iteration-based family).
* Phase 1 CHECK     -- fixed count, deterministic, ref-diffable.  The ONLY line in the .ref.
* Phase 2 CALIBRATE -- double the batch until it spans ZFLR ms.  SKIPPED when ZK is pinned.
* Phase 3 MEASURE   -- run batches until the deadline; report iterations and elapsed ms.
* CONTRACT -- the including benchmark supplies these BEFORE the -INCLUDE:
*   DEFINE('ZBODY(ZKN)')  runs ZKN iterations of the kernel and RETURNS the check value.
*                         The K-loop lives INSIDE the function so call cost amortizes per batch.
*   ZCHK                  phase-1 iteration count (fixes the deterministic check value).
*   ZBUD                  phase-3 time budget, ms.
*   ZFLR                  phase-2 calibration floor, ms.
*   ZK                    OPTIONAL -- set it to PIN the batch when the kernel is not
*                         steady-state (batch size is then part of the workload).
* RESERVED -- the harness owns labels ZCAL ZMEAS ZB and variables ZT ZD ZE ZN ZK ZKN
*             ZCHK ZBUD ZFLR.  A benchmark body must not use them for anything else.
        OUTPUT = "check: " ZBODY(ZCHK)
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
        OUTPUT = "ms: " ZE
END
