#!/bin/bash
# store_gate.sh -- the landing gate of the dirty-tree cure (the grader 2026-11-14): the append selftest's five arms, then the cfo's entry read red by from-progress
H="${S4E_HOME:?REFUSE(2): S4E_HOME unset}"; E=test_gate_pl_the_standard_output_streams_report_mode_append_in_the_iso_default_and_write_in_the_swi_dialect__iso
o="$(cd "$H" && S4E_SEAT=grader timeout 120 python3 -I harness/scripts/util_progress_append.py selftest 2>&1)"; printf '%s\n' "$o" | grep -q '^PROGRESS_PIN_SELFTEST arms=5 OK' || { printf '%s\n' "$o" | tail -6; echo "RED: the append selftest"; exit 1; }
r="$(cd /home/claude_grader && S4E_MODES=m3 timeout 300 python3 -I "$H/harness/scripts/util_score_row.py" from-progress --suite gate_cases_prolog --reds --dry-run 2>&1)"
printf '%s\n' "$r" | grep -q '^SUITE_ROW suite=gate_cases_prolog ' || { echo "REFUSE(2): from-progress printed no board line"; exit 2; }
printf '%s\n' "$r" | grep -q "^SUITE_ROW_RED .*$E" || { echo "RED: the corpus-dirty PASS still counts for $E"; exit 1; }
echo "GREEN: the selftest 5 of 5, and from-progress reads the corpus-dirty PASS unread"; exit 0
