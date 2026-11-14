#!/bin/bash
# uflex_gate.sh -- the landing gate of the uflex package (the grader 2026-11-14): it grades in mode 3 (a board line for one entry); SCRIP's red is SCRIP's debt
H="${S4E_HOME:?REFUSE(2): S4E_HOME unset}"; P=corpus/packages/icon/uflex
o="$(cd "$H" && S4E_PROGRESS_OFF=1 timeout -k 10 900 python3 -I harness/scripts/corpus_suite_harness.py run $P/ALL.icn $P/ALL.ref --lang icon --modes m3 --partition entry:numbers < /dev/null 2>&1)"
printf '%s\n' "$o" | grep -q 'SUITE_BOARD .*m3_n=1 ' && { echo "GREEN: uflex grades (numbers: $(printf '%s\n' "$o" | grep -oE 'm3_pass=[0-9]+'))"; exit 0; }
printf '%s\n' "$o" | grep -E 'REFUS|Traceback' | head -2; echo "REFUSE(2): no board line"; exit 2
