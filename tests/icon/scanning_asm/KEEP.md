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
| is02_forms | 2 | a cset variable, &letters, explicit-subject any/upto/find/match/bal with windows, a needle over 32 bytes, pos, an empty needle | EQUAL; needle and cset C 6 calls |
| is03_coexpr | 3 | a co-expression reading, assigning and scanning the shared environment across three activations (section 10.1 (c)) | EQUAL; ScanState in the runtime |
| is04_byname | 4 | move, tab and upto as procedure values called directly and through a procedure's parameter inside a scan | EQUAL; 46 sync calls at the C roads |
| is05_root | 5 | the root environment (section 10.1 (d)-(f)): &subject := 42 outside a scan, &pos := 7/0/-1, &subject := inside a scan, the outer restored | EQUAL; rt_keyword_var 2 (is00_kw) through the KI_SCANKW arm |
