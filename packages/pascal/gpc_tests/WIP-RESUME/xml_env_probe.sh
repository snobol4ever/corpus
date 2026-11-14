#!/bin/bash
# xml_env_probe.sh -- uni_xml on the launch road with its ALL.env, four documents (one a family), mode 3, unrecorded (the grader 2026-11-14)
W=/home/resources/worktrees/grader/wt-gpc; P=corpus/packages/icon/uni_xml; O=/tmp/s4e/grader/xml/env; cd "$W" || exit 2
for e in xmlconf/sun/valid/pe01 xmlconf/xmltest/not-wf/sa/001 xmlconf/sun/invalid/attr01 xmlconf/xmltest/valid/sa/001; do
  S4E_HOME="$W" S4E_SEAT=grader S4E_PROGRESS_OFF=1 TMPDIR=/tmp/s4e/grader python3 -I harness/scripts/corpus_suite_harness.py run "$P/ALL.icn" "$P/ALL.ref" --lang icon --modes m3 --partition "entry:$e" < /dev/null > "$O/$(basename "$(dirname "$e")")_$(basename "$e").log" 2>&1
  echo "$e rc=$? $(grep -o 'm3_n=1 m3_pass=[0-9]' "$O/$(basename "$(dirname "$e")")_$(basename "$e").log")" >> "$O/DONE.log"
done
echo PROBE-DONE >> "$O/DONE.log"
