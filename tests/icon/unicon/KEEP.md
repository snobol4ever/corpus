# corpus/tests/icon/unicon -- the witnesses of DESIGN-PLAN: unicon (the cto, 2026-10-31 09:52 CDT, CEO-2072; .github/ARCH-UNICON.md)

A witness folder, not a suite (CEO-1342): STEPS.tsv is the plan, each `uni_*.icn` a witness of at most 30 lines with its `.ref` cut from the oracle
(unicon 13.3, /home/resources/unicon/bin/unicon through `unicon_bin()`; `uni_plain_method_ident.ref` from Arizona icont/iconx because unicon refuses
that program: it is the Icon fallback's witness). `uni_pkg_shapes.icn` is the package file `uni_pkg_import.icn` imports, not a witness of its own.
Graded by `harness/scripts/test_design_unicon_steps.sh --step N` in both modes from this folder; the UniTests package suite is the population,
`corpus/packages/icon/unicon_tests/` (hq_icon's row). Outputs never land here: the harness writes under /tmp.

Steps 6-16 (CTO-513, 2026-11-05): the UniTests-to-100 witnesses uni_posix_* uni_trace_budget uni_lex_* uni_bi_* uni_co_call_args uni_regex_literal uni_pattern_image uni_thread_* uni_gc_*; each ref cut from unicon twice; a witness without a marker ends in `class UniconMarker()` / `end` so the Unicon state applies (the harness passes no --dialect). Design text: skill unicon section 7.
