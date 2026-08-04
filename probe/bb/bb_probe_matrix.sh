#!/bin/bash
# bb_probe_matrix.sh — SCRIP vs SPITBOL across the full probe matrix in probes/.
#
# RELATION TO bb_witness_ladder.sh: the ladder is NINE hand-picked rows on the
# ARBNO/capture frontier — the fast signal you run after every edit.  THIS is the
# wide net: 84 probes across six families, generated so that consecutive rows differ
# by exactly ONE variable.  Run the ladder to see if you moved; run the matrix to see
# what you moved.
#
# WHY EVERY PROBE PRINTS: each program emits '=S' or '=F' plus whatever the captures
# produce.  A probe that emitted nothing could not distinguish a correct silent match
# from a process that died before reaching the print — the exact false-green class that
# hardening the ladder exposed.
#
# ⛔ CRASH DETECTION IS A SHELL WAIT-STATUS READ, NOT $? AND NOT stderr.
#    SCRIP installs a SIGSEGV handler that swallows the fault and EXITS 0, and the
#    "Segmentation fault" text is printed by the PARENT shell, never into the child's
#    stderr.  Running the child inside its own `bash -c` and reading THAT shell's
#    status is the only signal that survives both.  (Inherited verbatim from
#    bb_witness_ladder.sh — do not "simplify" it.)
#
# ⛔ COMPARES FULL OUTPUT, NEVER A PREFIX.  A truncating compare turns long-output
#    passes into phantom failures.  Truncation here is DISPLAY ONLY.
#
# USAGE:
#   bash bb_probe_matrix.sh                 # all families, SCRIP_U2=0
#   bash bb_probe_matrix.sh N               # only family N
#   bash bb_probe_matrix.sh N09             # one probe
#   SCRIP_U2=1 SCRIP_ZW_RB=1 bash bb_probe_matrix.sh
#   MODE=compile bash bb_probe_matrix.sh    # mode-4 (--compile) instead of mode-3
#   VERBOSE=1 bash bb_probe_matrix.sh       # print oracle line for PASSes too
set -u
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIP="${SCRIP:-/home/claude/SCRIP/scrip}"
SBL="${SBL:-/home/claude/x64/bin/sbl}"
DIR="${DIR:-$HERE/probes}"
MODE="${MODE:-run}"
SEL="${1:-}"
VERBOSE="${VERBOSE:-0}"
TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT

[ -x "$SBL" ]   || { echo "no oracle at $SBL (git clone https://github.com/snobol4ever/x64 /home/claude/x64)"; exit 2; }
[ -x "$SCRIP" ] || { echo "no scrip at $SCRIP — set SCRIP=/path/to/scrip"; exit 2; }
[ -d "$DIR" ]   || { echo "no probe dir $DIR"; exit 2; }

declare -A FAMPASS FAMFAIL
PASS=0; FAIL=0; CRASHED=0
FAMS=""

for f in "$DIR"/*.sno; do
    id="$(basename "$f" .sno)"
    case "$id" in "$SEL"*) ;; *) [ -n "$SEL" ] && continue ;; esac
    fam="${id:0:1}"
    case " $FAMS " in *" $fam "*) ;; *) FAMS="$FAMS $fam"; FAMPASS[$fam]=0; FAMFAIL[$fam]=0 ;; esac
    desc="$(sed -n '1s/^\*  [A-Z0-9]* \[.\] //p' "$f")"

    o=$(timeout 15s "$SBL" -b "$f" 2>/dev/null | tr '\n' '|')

    if [ "$MODE" = "compile" ]; then
        s=$(timeout 60s bash -c '"$0" --compile "$1" -o "$2" </dev/null >/dev/null 2>&1 && "$2" </dev/null 2>/dev/null' \
              "$SCRIP" "$f" "$TMP/a.out" 2>/dev/null | tr '\n' '|')
        timeout 60s bash -c '"$0" --compile "$1" -o "$2" </dev/null >/dev/null 2>&1 && "$2" </dev/null >/dev/null 2>&1' \
              "$SCRIP" "$f" "$TMP/a.out" 2>"$TMP/sh.err"
    else
        s=$(timeout 15s bash -c '"$0" --run "$1" < /dev/null 2>/dev/null' "$SCRIP" "$f" 2>/dev/null | tr '\n' '|')
        timeout 15s bash -c '"$0" --run "$1" < /dev/null >/dev/null 2>&1' "$SCRIP" "$f" 2>"$TMP/sh.err"
    fi
    rc=$?; crash=""
    [ "$rc" -ge 128 ] && crash=" (signal $((rc-128)))"
    [ "$rc" -eq 124 ] && crash=" (TIMEOUT)"
    grep -qiE 'segmentation|abort|bus error' "$TMP/sh.err" 2>/dev/null && crash=" (CRASH)"

    if [ "$o" = "$s" ] && [ -z "$crash" ]; then
        PASS=$((PASS+1)); FAMPASS[$fam]=$(( ${FAMPASS[$fam]} + 1 ))
        printf '  ✅ %-5s %s\n' "$id" "$desc"
        [ "$VERBOSE" = "1" ] && printf '        both=[%s]\n' "${o:0:100}"
    else
        FAIL=$((FAIL+1)); FAMFAIL[$fam]=$(( ${FAMFAIL[$fam]} + 1 ))
        [ -n "$crash" ] && CRASHED=$((CRASHED+1))
        printf '  ❌ %-5s %s%s\n       oracle=[%s]\n       scrip =[%s]\n' \
               "$id" "$desc" "$crash" "${o:0:100}" "${s:0:100}"
    fi
done

echo "-------------------------------------------------------------------"
for fam in $FAMS; do
    printf '  family %s : %2d pass / %2d fail\n' "$fam" "${FAMPASS[$fam]}" "${FAMFAIL[$fam]}"
done
echo "-------------------------------------------------------------------"
echo "  TOTAL: $PASS pass / $FAIL fail  ($CRASHED crashed or timed out)"
[ "$FAIL" -eq 0 ]
