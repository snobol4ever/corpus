# KEEP.md -- tests/prolog/xsb_wfs (the cto, 2026-10-28, CEO-1996/1998)

The witnesses of DESIGN-PLAN: xsb-tabling-wfs (.github/ARCH-PROLOG-WFS-TABLING.md section 8), kept loose on purpose and written in XSB's syntax as `.P` files (the package they stand for, corpus/packages/prolog/xsb_tests, vendors XSB's own test tree): each sits beside its `.ref` cut from XSB 5.0.0 by XSB's gentest protocol and is run by `harness/scripts/test_design_xsb_tabling_wfs_steps.sh --step N` in both modes exactly as the package runs an entry. They are not suite entries and are never converted into `ALL.pl`. `xw01_prog.P` and `xw02_p33.P` are the siblings `xw01_loader_table.P` and `xw02_wfs_driver.P` consult at run time and have no ref of their own.

## The keepers, each named

`xw01_loader_table.P` `xw01_prog.P` `xw02_wfs_driver.P` `xw02_p33.P` `xw03_reading.P` `xw04_auto_table.P` `xw05_suppl_table.P` `xw06_builtins.P` `xw07_once_per_body.P` `xw08_scc_ring.P` `xw09_delay_print.P` `xw10_cut_over_table.P` `xw11_subsumptive.P`
