# corpus/tests/raku/setting -- the witnesses of the Raku setting (ARCH-RAKU-TO-100.md section 1.2 (c), section 6 step 0, CEO-2044)

`test_module.raku` is the witness of row `raku-ladder-step-1-the-setting-in-raku-the-loader-and-test-rakumod-as-its-first-file-ceo-2044`:
`plan`, `ok`, `nok`, `is`, `pass`, `dies-ok`, `lives-ok`, `is-deeply`, `subtest` (block and pair forms) and `throws-like` (with a matcher,
on code that lives, with the default description), every one of them answered by SCRIP's own Raku setting (`SCRIP/src/parsers/raku/setting/Test.rakumod`)
and none by C. `test_module.ref` is rakudo 2026.05's standard output and `test_module.rc` its exit code (one failed test, so 1), both cut by running
`raku test_module.raku` through `lib_oracle_flags.sh rakudo_bin`; re-cut the same way if the witness changes.

THEY STAY because the gate `harness/scripts/test_gate_raku_test_module_is_setting_raku.sh` grades them in both modes at every run: a C road that comes back
for any Test routine, or a setting change that moves a TAP line or the exit code away from Rakudo's, reds here before it reaches Roast.
PROVEN RED ONCE on origin `65dbbc9bd` (the C Test arms), both modes: throws-like printed one TAP line where Rakudo prints a subtest (the exit code agreed at 1).
