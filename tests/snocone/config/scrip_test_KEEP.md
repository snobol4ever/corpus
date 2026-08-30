# KEEP.md -- standalone-keep exceptions absorbed from corpus/tests/scrip_test/snocone/

test_capture_call.sc (seat07 2026-08-30, scrip_test .sc absorption) -- no `.ref`, and deliberately
not one to write by capturing scrip's own output: the file's own header documents an OPEN COMPILER
BUG (both real oracles, SPITBOL x64 -b and CSNOBOL4 -bf, invoke `fn('foo')` in `(PAT . var) . *fn(var)`
at match time; scrip does not call fn at all). A ref captured from scrip today would self-pin the
bug -- "a ref pinned to the implementation under test cannot fail that implementation"
(crosscheck-snocone-181-convert.task.md). Stays loose until the underlying SC-26/CL-1 capture+
indirect-call defect is fixed, at which point a real oracle-derived ref becomes possible.
