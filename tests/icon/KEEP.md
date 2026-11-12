# KEEP.md -- tests/icon: the one loose program the master cannot hold yet (the coo 2026-11-12)

Every other program of this folder is an entry of the format-2 master (ONE.icn and ONE.out, MULTI.md, ALL.csv); the six Unicon package
witnesses wait in `unicon/` (its own KEEP.md).

`rung36_jcon_recent.icn` (with `rung36_jcon_recent.ref`, `.argv`, `.env`, `.heap`, `.stack`, `config/rung36_jcon_recent.stdin` and the
folder `rung36_jcon_recent.fixtures/`) stays loose because its answer reads its run directory and its environment: it prints
`getenv("JCONT")` (`.env`: `JCONT=../bin/jcont`) and lists the files beside it (`Makefile`, `recent.icn`, `recogn.dat`, the fixture copy
`rung36_jcon_recent.fixtures/recent.icn` among them). The master has no env fence yet (Lon 2026-11-12: a test has `.env`; the cio's
harness item); once it has one, the program enters as `rung36_jcon_recent__recent` staged as `recent.icn` with its three fixtures as file
fences (`util_add_ladder_witness.py --file`, as `rung36_jcon_io__io` did), and this file, the folder and the config folder leave.
`test_gate_icn_rundir_contract.sh` grades it in its run directory in both arms meanwhile (GATE PASS 2026-11-12).
