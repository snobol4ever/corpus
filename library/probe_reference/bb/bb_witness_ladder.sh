#!/bin/bash
# bb_witness_ladder.sh — SCRIP vs SPITBOL on the ARBNO/capture frontier, one construct per line.
#
# WHY THIS EXISTS: the BB CHALLENGE LADDER's C references prove what the SEMANTICS are.
# This proves what SCRIP CURRENTLY DOES about them.  Every row is a two-line SNOBOL4 program
# that isolates ONE variable, so a ❌ names a construct interaction, not "case 1 is broken".
#
# The four passing controls around a failing row ARE the bracket -- same theorem as the
# monitor's first-divergence rule (RULES.md), applied at the language level instead of the
# event level: everything that passes bounds the fault to what the failing row adds.
#
# USAGE:  bash bb_witness_ladder.sh [SCRIP_U2_value]      (default 0 = shipped default)
#         SCRIP=/path/to/scrip SBL=/path/to/sbl bash bb_witness_ladder.sh
#
# ⛔ Compares FULL output, never a prefix.  A truncating compare silently turns long-output
#    passes into fake failures -- that exact bug produced two phantom ❌ rows on first run.

set -u
SCRIP="${SCRIP:-/home/claude/SCRIP/scrip}"
SBL="${SBL:-/home/claude/x64/bin/sbl}"
U="${1:-0}"
TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT
PASS=0; FAIL=0

run() {
    local name="$1" src="$2" o s
    printf '%s\n' "$src" > "$TMP/w.sno"; echo "END" >> "$TMP/w.sno"
    o=$(timeout 15s "$SBL" -b "$TMP/w.sno" 2>/dev/null | tr '\n' '|')
    # ⛔ The crash check is a SHELL-LEVEL wait-status read, not $? and not stderr.
    # SCRIP installs a SIGSEGV handler that swallows the fault and EXITS 0, so a
    # segfaulting program reports success; and the "Segmentation fault" text is printed
    # by the parent shell, never into the child's stderr.  Running the child in its own
    # bash -c and reading THAT shell's status is the only signal that survives both.
    s=$(SCRIP_U2="$U" timeout 15s bash -c \
        '"$0" --run "$1" < /dev/null 2>/dev/null' "$SCRIP" "$TMP/w.sno" 2>/dev/null | tr '\n' '|')
    SCRIP_U2="$U" timeout 15s bash -c \
        '"$0" --run "$1" < /dev/null >/dev/null 2>&1' "$SCRIP" "$TMP/w.sno" 2>"$TMP/sh.err"
    local rc=$? crash=""
    [ "$rc" -ge 128 ] && crash=" (signal $((rc-128)))"
    grep -qiE 'segmentation|abort|bus error' "$TMP/sh.err" 2>/dev/null && crash=" (CRASH)"
    if [ "$o" = "$s" ] && [ -z "$crash" ]; then PASS=$((PASS+1)); printf '  ✅ %s\n' "$name"
    else FAIL=$((FAIL+1)); printf '  ❌ %s%s\n       oracle=[%s]\n       scrip =[%s]\n' \
         "$name" "$crash" "${o:0:70}" "${s:0:70}"; fi
}

echo "=== BB WITNESS LADDER (SCRIP_U2=$U) ==="
S="        SUBJ = 'abcd'"

run "ARBNO retried, no capture"        "$S
        SUBJ ? (POS(0) ARBNO(LEN(1)) RPOS(0))"
run "ARBNO retried, capture INSIDE"    "$S
        SUBJ ? (POS(0) ARBNO(LEN(1)) \$ OUTPUT RPOS(0))"
run "outer capture, no ARBNO"          "$S
        SUBJ ? (POS(0) LEN(4) RPOS(0)) \$ OUTPUT"
run "ARBNO not retried + outer cap"    "$S
        SUBJ ? (POS(0) ARBNO(LEN(1))) \$ OUTPUT"
run "ARBNO retried + OUTER capture"    "$S
        SUBJ ? (POS(0) ARBNO(LEN(1)) RPOS(0)) \$ OUTPUT"
run "ARBNO retried + outer . VAR"      "$S
        SUBJ ? (POS(0) ARBNO(LEN(1)) RPOS(0)) . X
        OUTPUT = X"
run "case 1 inner (ARBNO/ALT/shy)"     "        SUBJ = 'BlueGoldBirdFish'
        SUBJ ? (POS(0) ARBNO('Bird' | 'Blue' | LEN(1)) \$ OUTPUT RPOS(0))"
run "case 5 variable-extent SPAN arm"  "$S
        SUBJ ? (POS(0) ARBNO(SPAN('a-c') | LEN(1)) \$ OUTPUT RPOS(0))"
run "case 1 FULL (outer \$ OUTPUT)"     "        SUBJ = 'BlueGoldBirdFish'
        SUBJ ? (POS(0) ARBNO('Bird' | 'Blue' | LEN(1)) \$ OUTPUT RPOS(0)) \$ OUTPUT"

echo "--- $PASS pass / $FAIL fail ---"
[ "$FAIL" -eq 0 ]
