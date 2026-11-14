#!/bin/bash
# gpc_mine.sh -- the GNU Pascal test suite mined in place by fpc 3.2.2, the dialect ladder iso first (the grader 2026-11-14; Lon: "go for those 2")
cd /home/resources/worktrees/grader/wt-gpc || exit 2
S4E_HOME=/home/resources/worktrees/grader/wt-gpc S4E_SEAT=grader python3 -I harness/scripts/util_build_package_suite.py corpus/packages/pascal/gpc_tests --lang pascal --mine /home/resources/progress/handoffs/grader-2026-11-14/gpc_census.tsv --mine-skip /home/resources/progress/handoffs/grader-2026-11-14/gpc_skip.tsv --mine-jobs 4 --mine-cap 60 < /dev/null > /home/resources/progress/handoffs/grader-2026-11-14/gpc_mine.log 2>&1
echo "MINED rc=$? $(tail -1 /home/resources/progress/handoffs/grader-2026-11-14/gpc_mine.log | cut -c1-200)" >> /home/resources/progress/handoffs/grader-2026-11-14/gpc_mine.log
