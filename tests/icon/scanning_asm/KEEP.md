# corpus/tests/icon/scanning_asm -- the witnesses of DESIGN-PLAN: icon-scanning-asm (the cto, 2026-10-28, CEO-1996/1998)

Every `.icn` here is a witness of one step of `.github/ARCH-ICON-RTX.md` section 11; its `.ref` is cut from Arizona Icon (`icont -s`,
then the binary's stdout; `/home/resources/icon-master/bin`), the road `harness/scripts/test_design_icon_scanning_asm_steps.sh --cut` runs.
Every statement ends in a semicolon (CEO-544, SCRIP's Icon; iconx accepts the same text). A step is GREEN when its witnesses equal their
refs in mode 3 and mode 4 and its probe reads green; the probes are the censuses of section 10.3, so a step whose witness is already
equal today is red by its census until the C it names has no emitted caller.

| witness | step | what it measures | today (SCRIP 40d6d5c50) |
|---|---|---|---|
| is00_kw | 6 | the cfo's keyword witness: move, &pos read, &pos assigned, &subject sliced | EQUAL (3, def); the census 139 |
| is01_substr | 1 | tab and move results over a 500-byte subject, slices of them, three one-byte moves compared | EQUAL; rt_substr 85 calls |
| is01b_consumers | 1 | a tab or move result (shared bytes, no NUL after them, empty ones mid-subject) through write, concatenation, comparison, conversion, map, trim, left/right/center, subscripts, tables, sets, sort, image | EQUAL |
| is01c_numeric | 1 | the same results where the numeric grammar would run on into the rest of the subject: integer, real, arithmetic, bit operations, math functions, hashing, nested scans | EQUAL |
| is01d_collect | 1 | tab and move results kept after the subject is dropped, while the collector runs (38 collections at the declared heap): an interior string pointer is marked and relocated with its block | EQUAL |
| is02_forms | 2 | a cset variable, &letters, explicit-subject any/upto/find/match/bal with windows, a needle over 32 bytes, pos, an empty needle | EQUAL; needle and cset C 6 calls |
| is02b_cset_sources | 2 | a cset reaching upto/many/any/bal from every source: a literal, cset(), the keyword csets, ++ -- ** and ~, empty results, csets built from tab/move slices, a table value, a list element, a 256-character cset | EQUAL |
| is02c_operand_kinds | 2 | every operand kind (string, cset, integer, the empty and a one-byte string, a NUL, a needle over 32 bytes, a needle taken from a tab result) through upto, many, any, find, match and bal, at the start of a subject and after a tab: the c, s and cset roads of the six scan boxes | EQUAL |
| is03_coexpr | 3 | a co-expression reading, assigning and scanning the shared environment across three activations (section 10.1 (c)) | EQUAL; ScanState in the runtime |
| is03b_nested | 3 | a co-expression activating a second one from inside its own scan, the inner one resetting &pos and returning to its source, the outer scan and the root each reading what the other set | EQUAL |
| is03c_to_main | 3 | a co-expression transferring to &main from inside its own scan while a second co-expression waits on it, the root reading the leaked environment, then resuming the first | EQUAL |
| is03d_results | 3 | a co-expression whose expression is a scan generating three results, drawn by a loop inside another scan until it is exhausted, the environment read after each result and after the failure | EQUAL |
| is03e_transmit_refresh | 3 | a value transmitted with x@c and received inside a scan, the second transmission, and a refreshed copy ^c activated from a new scan | EQUAL |
| is03f_not_a_coexpr | 3 | @x on a non-co-expression with &error set, at the root and inside a scan: error 118 converts to failure, no dereference of the operand, the environment unchanged | EQUAL |
| is04_byname | 4 | move, tab and upto as procedure values called directly and through a procedure's parameter inside a scan | EQUAL; 46 sync calls at the C roads |
| is05_root | 5 | the root environment (section 10.1 (d)-(f)): &subject := 42 outside a scan, &pos := 7/0/-1, &subject := inside a scan, the outer restored | EQUAL; rt_keyword_var 2 (is00_kw) through the KI_SCANKW arm |
| is05b_keyword_forms | 5 | &pos and &subject read as call arguments (dereferenced at the call, after the later arguments, again at each resumption), list elements, section and subscript bases, !&subject, and still assigned through the variable road: augmented, :=:, <-, := | EQUAL |
| is05c_keyword_exchange | 5 | the exchange &pos :=: x, augmented &pos +:= n, the reversible assignment &pos <- x (alone and as a generator of positions), the reversible exchange &pos <-> x, and &subject :=: x and &subject <- x, inside a scan and at the root | EQUAL |
