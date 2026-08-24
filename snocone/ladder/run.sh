#!/usr/bin/env bash
# ladder/run.sh — climb every Snocone construct, native (--run) vs SPITBOL oracle (--transpile | sbl).
# Usage: bash ladder/run.sh [glob]   e.g. bash ladder/run.sh 'expr_*'
set -u
SCRIP=/home/claude/SCRIP/scrip
SBL=/home/claude/x64/bin/sbl
PROG=/home/claude/ladder/prog
OUT=/home/claude/ladder/out
mkdir -p "$OUT"
GLOB="${1:-*}"
pass=0; fail=0; err=0
FAILED=""
for f in "$PROG"/$GLOB.sc; do
    [ -e "$f" ] || continue
    name=$(basename "$f" .sc)
    inp="$PROG/$name.in"
    stdin=/dev/null
    [ -e "$inp" ] && stdin="$inp"
    timeout 15 "$SCRIP" --run "$f" < "$stdin" > "$OUT/$name.native" 2>&1
    nrc=$?
    ref="$PROG/$name.oracle_ref.sno"
    if [ -e "$ref" ]; then
        # transpiler is broken for this construct: use hand-written SNOBOL4 oracle
        timeout 15 "$SBL" -b "$ref" < "$stdin" > "$OUT/$name.oracle" 2>&1
        orc=$?
    else
        timeout 15 "$SCRIP" --transpile "$f" < /dev/null > "$OUT/$name.sno" 2>&1
        timeout 15 "$SBL" -b "$OUT/$name.sno" < "$stdin" > "$OUT/$name.oracle" 2>&1
        orc=$?
    fi
    if [ $nrc -ne 0 ] || [ $orc -ne 0 ]; then
        # non-zero can be legit (e.g. deliberate error), still compare text
        :
    fi
    # Blank-insensitive compare: the --transpile oracle emits a spurious empty `OUTPUT =`
    # at every if/loop-end label (defect D5), printing stray blank lines. Squeeze blanks.
    grep -v '^[[:space:]]*$' "$OUT/$name.native" > "$OUT/$name.native.nb" 2>/dev/null
    grep -v '^[[:space:]]*$' "$OUT/$name.oracle" > "$OUT/$name.oracle.nb" 2>/dev/null
    if diff -q "$OUT/$name.native.nb" "$OUT/$name.oracle.nb" >/dev/null 2>&1; then
        pass=$((pass+1)); printf 'PASS  %s\n' "$name"
    else
        fail=$((fail+1)); FAILED="$FAILED $name"; printf 'FAIL  %s\n' "$name"
    fi
done
echo "----------------------------------------"
echo "PASS=$pass FAIL=$fail"
[ -n "$FAILED" ] && echo "FAILED:$FAILED"
