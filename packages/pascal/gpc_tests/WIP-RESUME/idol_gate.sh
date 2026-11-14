#!/bin/bash
# idol_gate.sh -- the landing gate of pack_idol (the grader 2026-11-14): the package grades in mode 3 (a board line, 26 entries), and fraction passes
H="${S4E_HOME:?REFUSE(2): S4E_HOME unset}"; P=corpus/packages/icon/pack_idol
o="$(cd "$H" && S4E_PROGRESS_OFF=1 timeout -k 10 600 python3 -I harness/scripts/corpus_suite_harness.py run $P/ALL.icn $P/ALL.ref --lang icon --modes m3 --partition entry:fraction < /dev/null 2>&1)"
printf '%s\n' "$o" | grep -q 'SUITE_BOARD .*m3_n=1 m3_pass=1 ' && { echo "GREEN: pack_idol grades and fraction passes"; exit 0; }
printf '%s\n' "$o" | grep -q 'SUITE_BOARD' && { echo "RED: fraction does not pass"; exit 1; }
echo "REFUSE(2): no board line"; exit 2
