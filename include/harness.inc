* harness.inc -- THE ONE timed-benchmark driver.  BM-H/BM-ONE.
* ⛔ NOT AN INCLUDE ANY MORE IN NORMAL USE.  Since the s265 standalone revamp (Lon: *"the *.sno file
*   must look like and BE the REAL program application that can be run stand alone"*) no benchmark
*   program carries `-INCLUDE 'harness.inc'`.  This file is the WRAPPER TEMPLATE that
*   scripts/bench_wrap.sh INLINES into a temp program built on the fly.  It stays valid as an include
*   so old material still works, but the .sno files in this corpus are applications now, not wrappers.
* ⭐ THREE WAYS TO GET A NUMBER OUT OF ONE PROGRAM (Lon s265):
*     1. STANDALONE   -- no wrapper at all.  Run the .sno itself and time it from OUTSIDE (wall clock,
*                        /usr/bin/time, perf stat, callgrind).  Real output, real .ref, real program.
*     2. TIME-BASED   -- bench_wrap.sh --mode=time: fix the ms budget, COUNT THE ITERATIONS.
*     3. ITERATION-BASED (fixed-work) -- bench_wrap.sh --mode=iter --n=N: run EXACTLY N iterations
*                        with no deadline anywhere.  This is the arm to use under callgrind/cachegrind.
*   Mode 3 is selected by `fixed_n` being ALREADY SET when this file runs -- bench_wrap.sh bakes it in.
*   ⛔ The baked variable, not the stdin gate, is what makes mode 3 reachable for a DATA-DRIVEN
*   benchmark: porter/json/claws5 read their corpus from stdin, so `fixed_n = INPUT` can never be a
*   count for them.  The stdin gate below still works and is still the default for microbenchmarks.
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
* ⭐ FIXED_N NUMERIC COERCION (rung-harness-zk-string-coercion, 2026-08-23, credit seat06's diagnosis +
*   proposed fix): `INPUT` always returns a STRING (SNOBOL4/SCRIP), so a stdin-fed `fixed_n` stayed
*   STRING for the rest of the run -- both `ZK = fixed_n` and every kernel-internal `LT(.., ZKN)` then
*   re-ran a full string->numeric coercion on EVERY steady-state iteration instead of once.  MEASURED
*   (callgrind Ir, this session, fresh build): `rt_coerce_num2_d` alone cost 564,000,282 Ir on a
*   2,000,000-iteration run -- 62.05% of arith_loop's total Ir and 51.30% of func_call's, confirming the
*   defect on both kernels the row named.  ZFIXRUN now coerces `fixed_n` to numeric ONCE, at entry,
*   before either downstream use (`ZK = fixed_n` and `LT(ZN, fixed_n)`) can see the string.  A
*   pre-baked (`--mode=iter`) `fixed_n` is already numeric, so the extra `+ 0` there is a no-op.
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
        DIFFER(fixed_n)                                  :S(ZFIXRUN)
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
ZFIXRUN fixed_n = fixed_n + 0
        DIFFER(ZK)                                      :S(ZFB)
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
