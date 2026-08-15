# probe/zd5b — ALT-arm-interior evaluated-operand witnesses (GOAL-SNOBOL4-100, minted s102)

Root cause: zd_plan's linear γ-chain run walk never descends into IR_MATCH_ALTERNATE
arm interiors (DESIGN-SN4-ZD5B-BRANCHING-RUN-PROPOSAL.md §1). Arm-interior charset
primitives with computed (non-literal) args are closure-only, never ZD-armed, and fall
to the FRQ flat read whose resolution across the live MATCH_BEGIN frame (64B) + ALT
record (32B) is off by exactly 96 (measured: emitted [rsp+216], truth [rsp+120],
alt_span_concat_segv m3+m4).

RED at mint (SCRIP e493a9b8):
- alt_span_concat_segv    SIG11 both modes (rt_coerce_str_d in=0xbc00000000, descr
                          tagwords as return addrs — same signature as TDump_driver)
- alt_span_kwcat_nomatch  silent NOMATCH vs oracle MATCHED, both modes
- alt_two_evals_nomatch   silent NOMATCH vs oracle MATCHED, both modes
Controls PASS: single bare-var arg (by-name arm) / no-ALT same concat (armed ZOPQ,
proves the +64 frame crossing staging is right) / all-literal concat (folded).

Fix of record: land ZD-5b descent (leaf-kind arms only) + a +32 ALT-record conjunct
beside the s99 +64 mrbp arm in the op_zread crossing sum. Killswitch SCRIP_ZD_5B=0.
Beauty relevance: TDump_driver crashes on this class; TLump's pattern is beauty
machinery; beauty.sno is dense with (SPAN(kw-concat)|eps) shapes.
