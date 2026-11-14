#!/bin/bash
# xml_full.sh -- uni_xml graded whole in mode 3 on the worktree, unrecorded (the package is not committed yet), one board per stored part (the grader 2026-11-14)
# usage: xml_full.sh PART...   (core, chunk:01 ...); each part's log is /tmp/s4e/grader/xml/full/<part>.log
W=/home/resources/worktrees/grader/wt-gpc; P=corpus/packages/icon/uni_xml; O=/tmp/s4e/grader/xml/full; mkdir -p "$O"; cd "$W" || exit 2
for part in "$@"; do
  S4E_HOME="$W" S4E_SEAT=grader S4E_PROGRESS_OFF=1 S4E_BATCH=1 TMPDIR=/tmp/s4e/grader python3 -I harness/scripts/corpus_suite_harness.py run "$P/ALL.icn" "$P/ALL.ref" --lang icon --modes m3 --partition "$part" < /dev/null > "$O/${part/:/_}.log" 2>&1
  echo "PART $part rc=$? $(grep -o 'SUITE_BOARD.*m3_hang=[0-9]*' "$O/${part/:/_}.log" | cut -c1-200)" >> "$O/DONE.log"
done
echo ALL-PARTS-DONE >> "$O/DONE.log"
