# rosetta-unicon

Every Unicon solution of Rosetta Code, from RosettaCodeData (https://github.com/acmeism/RosettaCodeData) at 1d475861d 2026-07-16, Task/*/Unicon/: 38 programs, each copied unchanged under its own file name (a -N for a second solution of a name). Rosetta Code's content is licensed GFDL 1.2; corpus is test data and never ships. TASKS.tsv maps each entry to its task. Every ref is cut from the language's oracle by util_build_package_suite.py --lang icon --twice (the grader 2026-11-13).

## Fixtures of ours for programs the oracle printed nothing for (officer_04 2026-11-17, row packages-owed-rosetta-unicon-measured-declared-or-cut)

- topological-sort reads its dependency graph on stdin: topological-sort.in is ours, the dependency list of the Rosetta Code task (des_system_lib, dw01 to dw07, dware, gtech, ramlib, std_cell_lib, synopsys), and the ref is unicon's answer to it, run twice equal.
- sockets takes the port as its first argument and connects to it: sockets.argv is ours, the port 0, to which no host accepts a connection, so the program takes its own failure path (stop "Unable to connect to :0:0", exit 1) and the ref is that answer, run twice equal. It tests the failure path of open mode n, not a conversation.
- http is excluded as NEEDS_NETWORK (EXCLUDED.tsv holds the measurement): unicon's messaging open of a local server fails error 1206 on this box.
