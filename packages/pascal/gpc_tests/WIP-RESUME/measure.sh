#!/bin/bash
# measure.sh -- each member of rosetta-pascal chunk:18 alone, m3, in its own board mem scope: the harness's peak RSS and verdict (the grader 2026-11-14)
H=/home/claude_grader; P=corpus/packages/pascal/rosetta-pascal; O=/tmp/s4e/grader/c18; cd "$H" || exit 2
order="sockets-1 bioinformatics-base-count-1 pernicious-numbers take-notes-on-the-command-line tic-tac-toe one-dimensional-cellular-automata de-bruijn-sequences sorting-algorithms-strand-sort unix-ls terminal-control-inverse-video regular-expressions"
rest="$(grep -vxF -f <(printf '%s\n' $order fusc-sequence) /tmp/s4e/grader/c18.txt)"
for e in $order $rest fusc-sequence; do
    t0=$(date +%s)
    S4E_HOME="$H" /usr/bin/time -f 'MAXRSS_KB=%M' -o "$O/$e.time" python3 harness/scripts/util_mem_scope.py supervise --kind board -- python3 harness/scripts/corpus_suite_harness.py run "$P/ALL.pas" "$P/ALL.ref" --lang pascal --modes m3 --partition "entry:$e" > "$O/$e.log" 2>&1; rc=$?
    v="$(grep -oE '^\s*(PASS|FAIL|CRASH|HANG|UNPROVEN|OVERFLOW|TIMEOUT)\b[^\n]{0,140}' "$O/$e.log" | head -1)"
    printf '%s\trc=%s\t%s\tsecs=%s\t%s\n' "$e" "$rc" "$(cat "$O/$e.time" | tail -1)" "$(( $(date +%s) - t0 ))" "$v" >> "$O/SUMMARY.tsv"
done
echo DONE >> "$O/SUMMARY.tsv"
