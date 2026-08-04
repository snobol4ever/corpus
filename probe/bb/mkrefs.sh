#!/bin/bash
# mkrefs.sh — regenerate the SPITBOL golden .ref beside every probes/*.sno.
#
# ⛔ WHY A PINNED GOLDEN IS LEGITIMATE HERE, UNLIKE THE `.s` ARTIFACTS.
#    RULES.md forbids wiring `.s` byte-identity into any gate, because a `.s` is the
#    HONEST CURRENT COMPILER OUTPUT and is SUPPOSED to churn while a BB family is being
#    designed.  A `.ref` is the opposite kind of object: it is the output of SPITBOL,
#    which is FIXED.  If a .ref changes, either the .sno changed or the oracle changed —
#    both are events someone must look at.  So .ref byte-identity IS a valid gate, and
#    `--verify` exists precisely to prove the goldens have not silently drifted away
#    from what `sbl -b` says today.
#
# USAGE:
#   bash mkrefs.sh            # regenerate; write only files whose bytes changed
#   bash mkrefs.sh --verify   # DO NOT write; exit 1 if any .ref differs from live sbl
#   bash mkrefs.sh --missing  # only create .ref for probes that have none
set -u
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SBL="${SBL:-/home/claude/x64/bin/sbl}"
DIR="${DIR:-$HERE/probes}"
MODE="${1:-regen}"
[ -x "$SBL" ] || { echo "no oracle at $SBL — git clone https://github.com/snobol4ever/x64 /home/claude/x64"; exit 2; }

TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT
NEW=0; CHANGED=0; SAME=0; DRIFT=0; ERR=0

for f in "$DIR"/*.sno; do
    id="$(basename "$f" .sno)"; ref="$DIR/$id.ref"
    timeout 15s "$SBL" -b "$f" > "$TMP/o" 2> "$TMP/e"
    if [ -s "$TMP/e" ]; then
        ERR=$((ERR+1)); printf '  ⚠  %-5s oracle wrote to stderr: %s\n' "$id" "$(head -c 90 "$TMP/e")"
    fi
    if [ ! -f "$ref" ]; then
        [ "$MODE" = "--verify" ] && { DRIFT=$((DRIFT+1)); printf '  ✗  %-5s NO .ref\n' "$id"; continue; }
        cp "$TMP/o" "$ref"; NEW=$((NEW+1)); printf '  +  %-5s new\n' "$id"; continue
    fi
    [ "$MODE" = "--missing" ] && { SAME=$((SAME+1)); continue; }
    if cmp -s "$TMP/o" "$ref"; then
        SAME=$((SAME+1))
    elif [ "$MODE" = "--verify" ]; then
        DRIFT=$((DRIFT+1)); printf '  ✗  %-5s DRIFT\n' "$id"; diff -u "$ref" "$TMP/o" | sed -n '3,8p' | sed 's/^/        /'
    else
        cp "$TMP/o" "$ref"; CHANGED=$((CHANGED+1)); printf '  ~  %-5s CHANGED\n' "$id"
    fi
done

echo "-------------------------------------------------------------------"
if [ "$MODE" = "--verify" ]; then
    echo "  verify: $SAME current / $DRIFT drifted / $ERR oracle-stderr"
    [ "$DRIFT" -eq 0 ] && [ "$ERR" -eq 0 ]
else
    echo "  refs: $NEW new / $CHANGED changed / $SAME unchanged / $ERR oracle-stderr"
fi
