#!/bin/bash
# run_suite.sh — THE GATE.  SCRIP vs the pinned SPITBOL .ref goldens, with an XFAIL
# baseline so the suite is GREEN when nothing has regressed, not green only when
# every open defect is fixed.
#
# THREE OUTCOMES, AND ONLY ONE OF THEM IS BAD:
#   ✅ PASS            matches its .ref, and was expected to
#   ⚠  XPASS          matches its .ref but is listed in XFAIL — A FIX LANDED.
#                      Remove it from XFAIL in the same commit.  Not a failure, but it
#                      MUST be actioned or the baseline silently rots into permission.
#   ❌ FAIL            does not match and is NOT in XFAIL — A REGRESSION.  Gate fails.
#   ·  xfail           does not match, and XFAIL says so.  Known open defect.
#
# ⛔ CRASH DETECTION IS A SHELL WAIT-STATUS READ.  SCRIP installs a SIGSEGV handler
#    that swallows the fault and EXITS 0, and the shell's "Segmentation fault" text
#    never enters the child's stderr.  A test whose OUTPUT matches but which DIED is a
#    FAILURE here — that exact false-green cost a session.  Do not "simplify" this.
#
# ⛔ FULL-OUTPUT COMPARE, NEVER A PREFIX.  Truncation is display-only.
#
# USAGE:
#   bash run_suite.sh                  # whole suite, mode-3
#   bash run_suite.sh H                # family H only
#   bash run_suite.sh H01              # one test
#   MODE=compile bash run_suite.sh     # mode-4 (--compile + run the binary)
#   XFAIL=/dev/null bash run_suite.sh  # ignore the baseline: show raw state
#   BASELINE=1 bash run_suite.sh       # WRITE a fresh XFAIL from this run, then exit
set -u
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIP="${SCRIP:-/home/claude/SCRIP/scrip}"
DIR="${DIR:-$HERE/probes}"
MODE="${MODE:-run}"
XFAIL="${XFAIL:-$HERE/XFAIL.$MODE}"
SEL="${1:-}"
BASELINE="${BASELINE:-0}"
TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT

[ -x "$SCRIP" ] || { echo "no scrip at $SCRIP — set SCRIP=/path/to/scrip"; exit 2; }
[ -d "$DIR" ]   || { echo "no probe dir $DIR"; exit 2; }

is_xfail() { [ -f "$XFAIL" ] && grep -qx -- "$1" "$XFAIL"; }

PASS=0; FAIL=0; XF=0; XP=0; NOREF=0
: > "$TMP/newxfail"; : > "$TMP/regressions"; : > "$TMP/fixed"

for f in "$DIR"/*.sno; do
    id="$(basename "$f" .sno)"; ref="$DIR/$id.ref"
    case "$id" in "$SEL"*) ;; *) [ -n "$SEL" ] && continue ;; esac
    desc="$(sed -n '1s/^\*  [A-Z0-9]* \[.\] //p' "$f")"
    [ -f "$ref" ] || { NOREF=$((NOREF+1)); printf '  ⚠  %-5s NO .ref — run mkrefs.sh\n' "$id"; continue; }

    if [ "$MODE" = "compile" ]; then
        RTOUT="$(dirname "$SCRIP")/out"
        timeout 90s bash -c '"$0" --compile "$1" </dev/null >"$2.s" 2>/dev/null && [ -s "$2.s" ] && gcc "$2.s" -no-pie -L "$4" -lscrip_rt -Wl,-rpath,"$4" -o "$2" 2>/dev/null && LD_LIBRARY_PATH="$4" "$2" </dev/null >"$3" 2>/dev/null' \
            "$SCRIP" "$f" "$TMP/a.out" "$TMP/got" "$RTOUT" 2>"$TMP/sh.err"
    else
        timeout 15s bash -c '"$0" --run "$1" </dev/null >"$2" 2>/dev/null' \
            "$SCRIP" "$f" "$TMP/got" 2>"$TMP/sh.err"
    fi
    rc=$?; why=""
    [ "$rc" -ge 128 ] && why="signal $((rc-128))"
    [ "$rc" -eq 124 ] && why="TIMEOUT"
    grep -qiE 'segmentation|abort|bus error' "$TMP/sh.err" 2>/dev/null && why="CRASH"
    [ -f "$TMP/got" ] || : > "$TMP/got"

    ok=0
    if cmp -s "$TMP/got" "$ref" && [ -z "$why" ]; then ok=1; fi

    if [ "$ok" = 1 ]; then
        if is_xfail "$id"; then
            XP=$((XP+1)); echo "$id" >> "$TMP/fixed"
            printf '  ⚠  %-5s XPASS — fix landed, drop from XFAIL: %s\n' "$id" "$desc"
        else
            PASS=$((PASS+1)); printf '  ✅ %-5s %s\n' "$id" "$desc"
        fi
    else
        echo "$id" >> "$TMP/newxfail"
        if is_xfail "$id"; then
            XF=$((XF+1)); printf '  ·  %-5s xfail%s\n' "$id" "${why:+ ($why)}"
        else
            FAIL=$((FAIL+1)); echo "$id" >> "$TMP/regressions"
            printf '  ❌ %-5s REGRESSION%s: %s\n' "$id" "${why:+ ($why)}" "$desc"
            printf '       want=[%s]\n       got =[%s]\n' \
                   "$(tr '\n' '|' < "$ref" | head -c 100)" "$(tr '\n' '|' < "$TMP/got" | head -c 100)"
        fi
    fi
done

if [ "$BASELINE" = "1" ]; then
    sort -o "$XFAIL" "$TMP/newxfail"
    echo "-------------------------------------------------------------------"
    echo "  BASELINE WRITTEN: $XFAIL ($(wc -l < "$XFAIL") known-failing)"
    exit 0
fi

echo "-------------------------------------------------------------------"
printf '  %d pass · %d xfail (known) · %d XPASS (fixed!) · %d REGRESSION' "$PASS" "$XF" "$XP" "$FAIL"
[ "$NOREF" -gt 0 ] && printf ' · %d missing .ref' "$NOREF"
echo; echo "  baseline: $XFAIL  mode: $MODE"
[ "$XP" -gt 0 ] && { echo "  → fixed, remove from XFAIL:"; sed 's/^/      /' "$TMP/fixed"; }
[ "$FAIL" -gt 0 ] && { echo "  → REGRESSIONS:"; sed 's/^/      /' "$TMP/regressions"; }
echo "-------------------------------------------------------------------"
[ "$FAIL" -eq 0 ] && [ "$NOREF" -eq 0 ]
