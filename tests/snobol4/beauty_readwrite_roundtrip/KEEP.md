# `tests/snobol4/beauty_readwrite_roundtrip/` — STANDALONE-KEEP: file-driven against SHARED includes

**Moved here from `corpus/probe/` by seat12, 2026-08-29**, under the `corpus-crosscheck-probe-total-conversion` clause-3 sweep. Placed in its own sibling directory (not `tests/snobol4/probe/`) per the same recursive-scan reasoning as `tests/snobol4/gimpel_triage/` and `tests/snobol4/rtx_func_11/` — a loose non-suite `.sno`/`.ref` pair inside `probe/` is misread as a broken suite by `test_corpus_snobol4.sh`'s recursive `find "$SUITES/probe" -name '*.sno'`.

## Why this one is not a simple git-mv-and-done

Unlike the RTX-FUNC-11 pair (whose `-INCLUDE` target moved together with it, colocated), this witness `-INCLUDE`s two files that are **shared infrastructure used by dozens of other consumers** and must NOT move:

- `corpus/include/global.inc` and `corpus/include/ReadWrite.inc` are pulled by `demo/snobol4/beauty/beauty.sno` itself, all 20 `tests/snobol4/beauty_suite/*_driver.sno` files, several `programs/lon_cherryholmes/` programs, and by name in half a dozen `SCRIP/scripts/*beauty*.sh` scripts (`util_run_beauty_oracle.sh` and friends). Repo-wide grep confirms this — moving them would be a much bigger, unrelated blast radius than this row's scope.

SCRIP resolves a bare-filename `-INCLUDE` relative to the process's **current working directory**, not the includer's own directory (this witness's header comment already documented the consequence: it must be run with `cwd=corpus/include`). Relocating the witness file itself doesn't change that contract at all — only the *path you pass to scrip* changes, since it's given relative to cwd either way:

```
(cd corpus/include && /home/resources/x64/bin/sbl -bf ../tests/snobol4/beauty_readwrite_roundtrip/beauty_readwrite_roundtrip.sno)
(cd corpus/include && ./scrip ../tests/snobol4/beauty_readwrite_roundtrip/beauty_readwrite_roundtrip.sno < /dev/null)
```

The file's own header comment (unedited, byte-identical, `git mv` only) still shows the old `../probe/...` example path — historical, not rewritten, same as this row's standing "correct forward via KEEP.md, never silently edit content backward" discipline. This note is the forwarding address.

## Why not a suite entry

Same class as RTX-FUNC-11: `-INCLUDE` is the mechanism under test (this witness exists specifically to exercise `Read()`/`Write()` real-file I/O through `ReadWrite.inc`, per `FINDING-2026-08-29-seat16-beauty-readwrite-was-untested-on-both-live-engines-not-just-spitbol.md`), and `corpus_suite_harness.py` has zero `-INCLUDE` handling. Folding it into a banner-block suite entry would stop testing what it exists to test.

## Re-verified from the new location

Run both engines and both scrip modes with `cwd=corpus/include`, output compared against `.ref`:
- Live SPITBOL oracle (`x64/bin/sbl -bf`): matches.
- Live CSNOBOL4B 2.3.3 (`/home/resources/csnobol4/snobol4 -f`): matches (the file's own header already claims both engines agree; re-confirmed from the new path, not just inherited).
- `./scrip` mode 3 and mode 4: matches.

## Consumers

**Zero scripts** (repo-wide grep for the bare filename, `SCRIP/`, `corpus/`, `.github/`). One historical `.github` FINDING cites it by name as narrative, not a live path pointer — left unrewritten per this row's append-only-history convention for FINDINGs.

## Declared keeper

`beauty_readwrite_roundtrip.sno` (+ its `.ref`) — the only file in this directory, kept standalone for the `-INCLUDE`-against-shared-infrastructure reason above.

— seat12, 2026-08-29, task `corpus-crosscheck-probe-total-conversion`
