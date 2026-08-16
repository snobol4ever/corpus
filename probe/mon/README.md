# probe/mon — 2-way IPC binary sync-step monitor witnesses (s110)

mon_define_call_min.sno — 4-line DEFINE+call+RETURN. Oracle: R=5.
  PASS:  ./scrip --run  (default; GVA on -> SCC/TINY arm)
  SIG11: MONITOR_BIN=1 ./scrip --run   (GVA forced off -> non-TINY arm)
  SIG11: SCRIP_NO_TINY=1 ./scrip --run (GVA on, TINY forced off -> same class)
  PASS:  m4 both ways (m4 never gates GVA on MONITOR_BIN).

CLASS: non-TINY call arms enter the DEFINE body WITHOUT pushing the
{gamma,omega} continuation pair that the fnrbp()==2 RSP-ONLY RETURN
floater pops at TOS (bb_save_restore.cpp role-1/2 "s64 RSP-ONLY: pop
{gamma,omega} pair at TOS"). Body runs to :(RETURN); floater pops
enclosing-frame bytes; jmp junk -> rip lands in ld.so data
(_rtld_global) = the omega_driver s103 signature.

This class is THE blocker for the sync-step monitor on any
DEFINE-bearing program (the monitor requires MONITOR_BIN=1 = GVA off =
non-TINY arms), and beauty is DEFINE-dense.
