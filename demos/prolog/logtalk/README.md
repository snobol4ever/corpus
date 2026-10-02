# demos/prolog/logtalk — Logtalk on SCRIP: the SCRIP adapter

Lon 2026-10-02, in-chat to the ceo: *"Well, let's take Logtalk as a good demo."* and *"write a SCRIP adapter for Logtalk,
just like the the other 17 of them. Remember SCRIP is implementing ISO and tested against GNU Prolog (and SWI some)."*
(ceo CEO-1417).

[Logtalk](https://logtalk.org/) is an object-oriented language compiled to Prolog by a compiler and runtime written in
Prolog (`core/core.pl`, 30,363 lines). It runs on a host Prolog through an **adapter file**, one per backend; Logtalk
3.103.0-b01 ships 17. This directory holds the 18th, for SCRIP, laid out as the Logtalk tree lays it out, so the files drop
into a Logtalk distribution as they are. Beside it, vendored verbatim from the same commit so that this directory is a
runnable Logtalk tree on its own: `core/` (the compiler, runtime and built-in objects), `paths/`, `scratch/` and
`examples/hello_world/` (ceo CEO-1418).

| file | what |
|---|---|
| `adapters/scrip.pl` | the adapter: Logtalk's GNU Prolog adapter where SCRIP's Prolog matches it, changed only where SCRIP differs |
| `integration/logtalk_scrip.pl` | SCRIP's integration file: includes the adapter, the paths file and the core at compile time, as gplc does |
| `integration/logtalk_gp_scrip.pl` | validation only: loads `scrip.pl` into GNU Prolog in place of `gnu.pl` |
| `integration/gp145_format_shim.pl` | validation only: GNU Prolog 1.4.5 reads `%` in `format/2,3` as a control, so the GNU adapter's own workaround is loaded beside `scrip.pl` there; SCRIP, SWI-Prolog and GNU Prolog 1.6+ print `%` literally |
| `LICENSE.txt`, `NOTICE.txt` | Logtalk's Apache-2.0 license and notice; the adapter derives from `adapters/template.pl` and `adapters/gnu.pl` |

Upstream: <https://github.com/LogtalkDotOrg/logtalk3>, commit `5d0f64e` (2026-10-02), version 3.103.0-b01.

## The contract the adapter is written to

SCRIP's Prolog is ISO Prolog plus every non-conflicting GNU Prolog and SWI-Prolog built-in predicate (RULES.md, the Prolog
oracle is THE SUPERSET). The adapter relies on exactly that and picks the GNU Prolog form where the two systems differ. It
carries no workaround for a SCRIP gap: where SCRIP lacks what the superset promises, that is a SCRIP defect, listed below.

What differs from `gnu.pl`: dialect `scrip`; version read from the `version_data` flag whatever its functor; no
`:- built_in.`, `strict_iso` flag, `foreign/1` tracking, `built_in_fd`, `ensure_linked`, `listing` or GNU-only predicate
properties; `setup_call_cleanup/3`, `atomic_concat/3` and `atomic_list_concat/2,3` are built-in; sockets, modules,
threads, tabling, engines, coinduction and Unicode are declared unsupported; the scratch directory is `./.lgt_tmp/`;
`read_term/3` is called without GNU's `syntax_error(error)` option, since ISO raises syntax errors by default.

## Proven on GNU Prolog

Logtalk 3.103.0-b01 on GNU Prolog 1.4.5 runs `logtalk_load(hello_world(loader))` and prints `Hello World!` with
`scrip.pl` exactly as it does with the stock `gnu.pl`: the two transcripts, with file hashes and timings normalized, differ
only in the dialect line, the sockets line, and the shim's own load line.

```
LOGTALKHOME=<logtalk3> LOGTALKUSER=<logtalk3> gprolog \
  --entry-goal "['$LOGTALKHOME/integration/logtalk_gp_scrip.pl']" \
  --entry-goal "logtalk_load(hello_world(loader))" --entry-goal halt
```

## Status under SCRIP (measured 2026-10-02 at SCRIP 80a7d2588)

SCRIP parses the whole core with 9 lines refused, and compiles it in 25 to 39 s once the gaps below are stood in for in a
scratch copy. It does not yet run Logtalk. In the order a run meets them:

| # | gap | what SCRIP does | GNU Prolog and SWI-Prolog |
|---|---|---|---|
| 1 | `dynamic`, `use_module`, `ensure_loaded` and the other directive names before an infix operator | parse error on `f(use_module/1)`: the parser treats them as prefix operators even when `/` follows | read `use_module/1` as `/(use_module, 1)` |
| 2 | `predicate_property/2` with a head not known at compile time | refuses the whole program at compile time | enumerate at run time |
| 3 | `consult/1` on a file named at run time | an existence error | load the file; Logtalk's whole model compiles `.lgt` to `.pl` and loads it at run time |
| 4 | `environ/2`, `working_directory/1`, `change_directory/1`, `make_directory/1`, `delete_file/1`, `file_exists/1`, `file_property/2`, `directory_files/2`, `term_hash/2`, `prolog_pid/1` | existence errors | built in |
| 5 | Logtalk's startup | mode 4: the assembler rejects a second definition of `logtalk_library_path/2`, a stub emitted after the code for `clause/2`; mode 3: SIGSEGV jumping to an unmapped address at startup | run |

A sixth reading was the adapter's own omission, corrected: GNU Prolog has no `ensure_loaded/1` callable as a goal, so
`gnu.pl` defines a failing stub for the core's one guarded call, and `scrip.pl` now does too; with it SCRIP compiles that call.

Also measured, not on the run's path: `clause/2` on a static predicate returns its clauses where ISO and GNU raise
`permission_error(access, private_procedure, _)`; `read_term/3` refuses the `syntax_error(_)` option as a domain error.
