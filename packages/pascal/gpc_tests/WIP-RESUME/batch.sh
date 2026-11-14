#!/bin/bash
# batch.sh -- rosetta-pascal chunk:18 on the cycle's road (S4E_BATCH=1, m3), each row's files bounded at 512 MB by an inherited RLIMIT_FSIZE (the grader 2026-11-14)
H=/home/claude_grader; P=corpus/packages/pascal/rosetta-pascal; O=/tmp/s4e/grader/c18; cd "$H" || exit 2
S4E_HOME="$H" S4E_BATCH=1 TMPDIR=/tmp/s4e/grader /usr/bin/time -f 'MAXRSS_KB=%M ELAPSED=%e' -o "$O/batch.time" python3 harness/scripts/util_mem_scope.py supervise --kind board -- prlimit --fsize=536870912 -- python3 harness/scripts/corpus_suite_harness.py run "$P/ALL.pas" "$P/ALL.ref" --lang pascal --modes m3 --partition chunk:18 > "$O/batch.log" 2>&1
echo "rc=$? $(cat "$O/batch.time" | tail -1)" > "$O/batch.done"
