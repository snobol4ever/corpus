# prelude_rakudo.rakumod -- supply the self-timing hooks SCRIP has as builtins, for the Rakudo rival arm.
# Loaded WITHOUT touching the kernel source:  raku -I<staging dir> -Mprelude_rakudo kernel.raku
# so the kernel is byte-identical across every engine -- the kernel is the thing being compared and must
# not be per-engine. Mirrors corpus/benchmarks/prolog/prelude_swipl.pl (same law, Raku spelling).
# ⛔⛔ NEVER `-I.` FROM THIS DIRECTORY. Rakudo precompiles a -M module into a .precomp/ BESIDE IT, so a hand
# run with -I<this dir> writes .precomp/ into the corpus -- measured 2026-09-01 on the very first run (the
# tmp1/tmp2 litter class ceo deleted the same day). bench_triangulate_raku.sh copies this file into its
# mktemp workdir and passes -I<that dir>; do the same by hand:  d=$(mktemp -d); cp prelude_rakudo.rakumod $d;
# raku -I$d -Mprelude_rakudo kernel.raku. The corpus is never a Rakudo output directory.
# ⛔ PRECISION FLOORS ARE STATED, NEVER PAPERED OVER (Lon's basis ruling, RULES.md § THE TWO-NUMBER
# BENCHMARK BASIS). Rakudo's `now` is an Instant with sub-microsecond resolution, so unlike gprolog's
# real_time/1 (a 1 ms floor that REFUSED the gplc work column) both arms here are genuinely
# microsecond-precise: SCRIP reads CLOCK_MONOTONIC (~20 ns back-to-back floor), Rakudo reads `now`.
#   wall_us -- microseconds since the epoch, integer. The real measurement.
#   wall_ms -- milliseconds, integer. Kept beside wall_us on purpose: every kernel reports both so a
#              us numerator is never silently divided by a ms denominator on some future rival whose
#              clock really is ms-quantized.
# ⭐ ARITY DIFFERS FROM THE PROLOG PAIR AND THAT IS NOT DRIFT: Prolog's wall_us/1 UNIFIES an out-parameter,
# Raku's wall_us() RETURNS a value -- same clock, same units, each in its own language's idiom.
unit module prelude_rakudo;
sub wall_us() is export { (now.Rat * 1000000).Int }
sub wall_ms() is export { (now.Rat * 1000).Int }
