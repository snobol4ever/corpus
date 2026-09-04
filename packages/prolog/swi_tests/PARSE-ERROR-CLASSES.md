# PARSE-ERROR-CLASSES.md

## ⛔⭐⭐ RULED OUT OF SCOPE BY LON, 2026-09-04 16:59 CDT — FIVE OF THESE CLASSES ARE NO LONGER WORK

Lon, routed by ceo (CEO-235) in answer to hq_C's `ask-swi-dialect-scope-dicts-ssu-quasiquote`, verbatim:
**"ISO plus the GNU/SWI-shared core only."** SWI-only surface — dicts + dot-access, SSU `=>`, quasi-quotation,
CLP(FD), rational literals, module export-list `op/3` — is OUT OF SCOPE for SCRIP's Prolog.

**21 files across seven class sections below are therefore EXCLUDED, per file, in `EXCLUDED.md`**, each with the
reason `SWI-only syntax: <feature>, out of scope by Lon 2026-09-04`: module export-list op/3 (1) · rational
literals (6) · SSU `=>` (4) · dict literals (4) · dict dot-access (3) · CLP(FD) (2) · quasi-quotation (1).
The five `prolog-swi-class-*` rows minted for them are RETIRED. The `V/SWI` cell grades the in-scope denominator
with a named line beside it — never a silent exclusion.

⚠ **The count is 21, not the 24 that circulated in dispatch mail** — 24 was the whole remaining parse-error
residue (12 classes); three classes in it are NOT SWI-only surface and stay open work: the DCG `...` ellipsis
nonterminal head, `->!` mis-tokenizing with no space, and a `.` immediately followed by `%` desyncing the
tokenizer. Those are ordinary parser bugs against ISO-reachable syntax. Do not fold them into the ruling.

⭐ The class sections below are KEPT AS WRITTEN, not deleted: they are the evidence that the exclusion is a
scope decision about a named, measured population, and the line/witness citations are what makes the
`EXCLUDED.md` reasons checkable by anyone who doubts them.

Classification by CAUSE (not filename) of the 66 `corpus/packages/prolog/swi_tests` files that
EXCLUDED.md marks `parse error` (rung-10 nb_setval incompleteness accounts for the other 161).
The four surface error strings (`expected . after directive` 33, `expected . at end of clause` 21,
`expected . at end of fact` 11, `expected . at end of DCG clause` 1) conflate multiple unrelated
grammar gaps in OUR reader wearing the same symptom text. The GOAL's own cross-cutting hypothesis
(a `%` comment with no space before it desyncs the tokenizer) was tested against all 66 and
FALSIFIED as a unifying cause -- only 4/66 even contain that shape, and of those 4, three have it
elsewhere in the file, unrelated to the actual failure line; only one (xsb_test_tables.pl) has it
sitting exactly at the flagged line, so it survives as a genuine one-file class below.

METHOD: every class below is verified by (1) reading the exact flagged file:line in EXCLUDED.md and
(2) reproducing the identical `parse error: ...` string against `./scrip --dump-ast` on a minimal
standalone witness distilled from that line -- not by grep pattern-matching on the vendored source.
Probes were run from `SCRIP/` against `./scrip` built on the current tree. THERE IS NO XFAIL: every
file below is OUR defect and stays red; none of this is a reason to touch EXCLUDED.md.

⭐ CURED 2026-09-04 (seat06, SCRIP `4e883963e`): the FIVE classes `table/1`, `thread_local/1`,
`public/1`, `record/1` (all "not declared as a prefix operator") and `as/2` ("not declared as an
infix operator") -- 33 files -- are fixed: `table`/`thread_local`/`public`/`record` added to the
existing hardcoded directive-prefix list in `prolog_parse.c` (same mechanism as `dynamic`/
`discontiguous`/etc, comma-separated PI-list argument, priority 1150); `as` added to `BIN_OPS[]` as
a plain `700 xfx` infix op. Re-verified against the REAL vendored files (not just the minimal
witnesses below): 32/33 now parse clean via `--dump-ast`. The 33rd, `tabling/test_tabling.pl`, is
fixed AT ITS OWN FLAGGED LINE (103, the `table a/2` this class names) but the parser now gets
further into the file and hits a SECOND, separate, already-known gap: CLP(FD) `#>`/`#<`/`#=` at
lines 964-1199 (the "CLP(FD) in/../#=" class below) -- this file was always a member of BOTH
classes, just double-blocked, and only the first blocker was visible before. None of these 33 files
pass the suite yet -- they were all blocked on the SAME plunit.pl/nb_setval gap as the other 114
graded files before this fix, and remain blocked on it now (hq_C's cure, rung 10); this fix removes
their PARSE blocker only, which is a precondition for them to ever be gradable at all, not a suite
PASS. None of the 66 files' `.ref` exists yet (all 66 are still in the 135 UNGRADED, not the 114
graded population) -- generating `.ref` via real swipl is separate work, coordinated through hq_T's
container-shape row, not done here.

⭐ CURED 2026-09-04 (seat06, SCRIP `93b5ebb7f`): the two remaining CLASSES OF PURE LEXER GAP --
underscore-grouped integers (7 files) and radix `N'digits` literals (2 files) -- 9 files total.
Decimal digit-accumulation in `prolog_lex.c` now tolerates `_` the same way the existing
`0x`/`0b`/`0o` path already did; a new general `Radix'Digits` form (radix 2-36) added alongside the
existing `0'c` char-code literal and `0x`/`0b`/`0o` prefixes, both left untouched and re-verified
(`0'A` still 65, `0x1A+0b101+0o17` still 46). Re-verified against the real vendored files: 9/9 now
parse clean. Same blocked-on-nb_setval caveat as the operator-table cure above applies -- none of
these 9 pass the suite yet either. 42 of 66 parse-error files now cured (33 + 9); 24 remain, all in
classes with real semantic-design questions attached (rational-number representation, SWI dict
syntax, SSU rules, CLP(FD) constraint semantics, quasi-quotation, module-export-list op/3
registration) rather than a single unambiguous lexer/parser gap -- left for a scoped decision
rather than started here. See the task baton's LEDGER for the full per-class breakdown.

⭐ CURED 2026-09-04 (seat06, SCRIP `a6090833`): THREE more classes, none of which carry a
semantic-design question despite the previous note above -- re-examined and each turned out to be
a plain mechanical lexer/parser gap same as the two batches before it:
- module-export-list `op/3` registration (1 file) -- `register_op_directive` now recurses into a
  `module/2` goal's export list the same way it already does for comma-conjoined `op/3` directives,
  so `op(P,T,N)` terms embedded there register as real operators. `--dump-ast` on the file's own
  flagged line now shows the custom `?` operator correctly applied; the file's parse blocker moves
  from line 70 to line 206, where an UNRELATED, already-catalogued class (SWI dict literal
  `_{module:M}`, see below) takes over -- test_transactions.pl was a double-blocked file like
  tabling/test_tabling.pl, just not visible until this fix landed.
- `->!` mis-tokenize (1 file, class above) -- `!` dropped from `is_graphic`: it already had its own
  dedicated case in `lexer_next` and never needed to be graphic; the only effect of removal is that
  `scan_graphic`'s continuation loop now stops at a `!` instead of folding it into whatever graphic
  run preceded it. thread/test_libthread.pl:62 confirmed clean.
- `.` immediately before `%` (1 file, class above) -- the end-of-clause-dot check now treats `%` the
  same as EOF/whitespace, so a comment with no separating space no longer desyncs the tokenizer into
  reading the dot as a graphic atom. xsb/table_tests/xsb_test_tables.pl:101 confirmed clean.

Method note: found by re-testing the "24 remain" list item by item against `--dump-ast` rather than
trusting the previous note's grouping at face value -- two of the "real semantic-design question"
files were actually misfiled; they were members of the already-catalogued `->!` and `.%` one-file
classes further down this document (which this session had not yet cross-checked against the
"24 remaining" tally when that note was written). Re-verified against the real vendored files (3/3
clean at their flagged line) and control-verified with a full corpus-wide `--dump-ast` sweep of all
249 swi_tests files, diffed with vs. without this commit's `prolog_lex.c` hunk alone: exactly these
two files change status, nothing else. Also control-verified zero regression on `test_prolog_ladder.sh
--to 11` (280 gradings, byte-identical 268/12 with and without via git-stash A/B) and
`test_prolog_rung_suite.sh` (byte-identical 9/6 both modes). Same nb_setval-blocked caveat as every
cure above: none of these 3 pass the suite yet. 45 of 66 parse-error files now cured (33+9+3); 21
remain, in five HQ-C-ruled groups with real scope questions -- rows minted rank 1 in this lane:
`prolog-swi-class-module-export-op3-registration` (misnomer now it's cured above; kept as hq_C named
it), `prolog-swi-class-rational-number-literals`, `prolog-swi-class-ssu-arrow-rules`,
`prolog-swi-class-clpfd-infix-operators`, `prolog-swi-class-dicts-dotaccess-quasiquote`.

Denominator check: 13+11+2+1+6+1+7+6+2+4+4+3+2+1+1+1+1 = 66.

## Class: `table/1` not declared as a prefix operator (13 files)

`:- table Spec.` is written prefix-operator style (no parens around the whole term). SCRIP parses
`:- table(Spec).` (explicit call form) fine but has no `fx`/`fy` operator entry for the atom
`table`, so the reader completes the directive term at the bare atom `table` and then chokes on
whatever follows expecting `.`. Confirmed with `./scrip --dump-ast`: `:- table p/2.` on its own
line reproduces `expected . after directive`; `:- table(p/2).` parses clean. Fires whether or not
the spec also carries an `as Mode` suffix (table-prefix is the first thing the reader hits, so
these files never reach the separate `as` gap below).

- tabling/test_abolish_active_table.pl:51 -- `:- table (q/1, p/1) as shared.`
- tabling/test_answer_subsumption.pl:49 -- `:- table p/2, pas(_,lattice(join(_X,_Y,_Z))).`
- tabling/test_reeval.pl:64 -- `:- table (p/1, q/1) as incremental.`
- tabling/test_reeval_exceptions.pl:51 -- `:- table (p/1, q/1) as incremental.`
- tabling/test_shared1.pl:75 -- `:- table (p/1, q/1) as shared.`
- tabling/test_shared_reeval.pl:79 -- `:- table (p/1, q/1) as (shared, incremental).`
- tabling/test_shared_units.pl:58 -- `:- table (p/1, q/1) as (incremental,shared).`
- tabling/test_tabled_shortest_path.pl:54 -- `:- table path(_,_,min).`
- tabling/test_tabling.pl:103 -- `:- table a/2.`
- tabling/test_wfs.pl:51 -- `:- table p/0, q/0, a/1.`
- thread_wait/test_functor_cache.pl:62 -- `:- table\n       p/3.`
- transaction/test_transaction_tabling.pl:49 -- `:- table p/1 as incremental.`
- unprotected/reload/keep_tabling.pl:1 -- `:- table p/2.`

## Class: `thread_local/1` not declared as a prefix operator (11 files)

Identical mechanism to the `table` class above, different atom. Confirmed: `:- thread_local p/1.`
alone reproduces `expected . after directive`. Fires equally for a single-line PI, a comma list, or
a multi-line comma list with trailing per-item comments (the GOAL's own seed #1, test_rwlocks.pl).

- core/test_code_type.pl:64 -- `:- thread_local ct/2.`
- core/test_prolog_flag.pl:151 -- `:- thread_local\n\tmessage/1.`
- debug/test_singleton.pl:216 -- `:- thread_local\n\tmessage/1.`
- library/test_url.pl:44 -- `:- thread_local\n\terror/2.`
- thread/test_clean_local.pl:53 -- `:- thread_local\n    p/1.`
- thread/test_rwlocks.pl:44 -- `:- thread_local\n    started/1, ... read_done/1, ... read_attempted/1.` (GOAL seed #1)
- thread/test_thread_property.pl:43 -- `:- thread_local p/1, q/1.`
- thread/thr_local_1.pl:64 -- `:- thread_local\n\tfoo/1.`
- unprotected/reload/add_thread_local.pl:3 -- `:- thread_local p/1.`
- unprotected/reload/keep_thread_local.pl:1 -- `:- thread_local p/1.`
- unprotected/test_reload.pl:230 -- `:- thread_local message/2.`

## Class: `public/1` not declared as a prefix operator (2 files)

Same mechanism again. Confirmed: `:- public p/0.` alone reproduces `expected . after directive`.
This is the GOAL's own seed #2 (add_attr_end.pl) -- confirmed as its own class, not shared with the
other two seeds.

- unprotected/reload/add_attr_end.pl:4 -- `:- public p/0.`
- unprotected/reload/del_attr_end.pl:1 -- `:- public p/0.`

## Class: `record/1` (library(record)) not declared as a prefix operator (1 file)

Same mechanism, third-party library directive. Confirmed with `:- use_module(library(record)).` +
`:- record foo(x:integer).` -- error reproduces on the `record` line, not the `use_module` line, so
this is the same operator-table gap and not a missing-library problem.

- library/test_record.pl:55 -- `:- record foo(x:integer).`

## Class: `as/2` not declared as an infix operator for tabling-mode annotations (6 files)

SWI's `:- dynamic Spec as Mode.` / `:- table Spec as Mode.` tabling-mode suffix uses `as` as an
infix operator. Distinguished from the `table`-prefix class above by using `dynamic` instead of
`table` as the directive head: `./scrip --dump-ast` on `:- dynamic d/1 as incremental.` shows
`dynamic d/1` parse into a clean `TT_FNC dynamic (...)` directive first (so `dynamic/1` prefix
itself is fine, confirming this project's existing dynamic-predicate support), then fails
immediately on the trailing ` as incremental` -- isolating the gap to `as` alone. (The `table ...
as ...` files above never reach this gap; `table` itself is unrecognized first.)

- tabling/test_incr_answer_subsumption.pl:68 -- `:- dynamic d/1 as incremental.`
- tabling/test_monotonic.pl:85 -- `:- dynamic da/1 as monotonic.`
- tabling/test_monotonic_lazy.pl:84 -- `:- dynamic d/1 as monotonic.`
- tabling/test_transact_incr.pl:68 -- `:- dynamic d/1 as incremental.`
- tabling/test_transact_mono.pl:72 -- `:- dynamic d/1 as monotonic.`
- tabling/test_transact_mono_lazy.pl:75 -- `:- dynamic d/1 as monotonic.`

## Class: operator declarations embedded in a `:- module(Name, [...])` export list are not applied (1 file)

SWI lets a module's export list mix predicate indicators with `op(Priority, Type, Name)` terms,
which SWI's directive processing scans out and registers as real operators before parsing the rest
of the file. Confirmed: `:- module(m, [ foo/0, op(700, fx, ?) ]).` parses (the export list is just
an ordinary list literal -- `op(700, fx, ?)` is a plain compound term there, no operator needed to
read it), but a later use of the declared operator (`X = (?a)`) still fails, proving SCRIP never
registers it. This is a different gap from the four operator-table classes above: those are missing
*built-in* entries; this is SCRIP never processing *user-declared* operators from this SWI-specific
export-list convention at all.

- transaction/test_transactions.pl:70 -- `test_transaction([tr([+p]), ?p]).` -- `?` declared at
  transaction/test_transactions.pl:40 (`:- module(test_transactions, [ ..., op(700, fx, ?) ]).`);
  `+p`/`-p`/`\+p` elsewhere in the same file parse fine (built-in operators), isolating the gap to
  the custom `?` specifically. This is the GOAL's own seed #3, and its actual cause (module
  export-list `op/3`) is unrelated to the GOAL's guess (prefix negation in a list literal) -- `\+p`
  inside `[...]` at test_transactions.pl:72 parses without error.

## Class: underscore-grouped integer literals, e.g. `1_000_000` (7 files)

SWI accepts `_` as a digit-group separator in integer literals. SCRIP's number lexer does not:
`p(1_000_000).` reproduces `expected . at end of fact` -- the lexer reads `1` as a complete integer
literal, then `_000_000` tokenizes as a variable (leading underscore), leaving two adjacent primary
tokens with no operator between them.

- GC/test_clause_gc.pl:51 -- `set_prolog_flag(stack_limit, 2_000_000),`
- core/test_hash.pl:120 -- `assertion(memberchk(X, [ 3_331_158_974, ...`
- core/test_resource_error.pl:53 -- `set_prolog_flag(stack_limit, 1_000_000).`
- db/test_cgc.pl:61 -- `thread_create(count(N), Id, [ stack_limit(2_000_000) ]).`
- engines/test_engines.pl:25 -- `test(stack_limit, TheLimit =:= 1_000_000) :-`
- files/test_pipe.pl:117 -- `forall(between(1, 120_000, _), ...)`
- thread/queue_resource.pl:52 -- `thread_create(client(Me), Id, [ stack_limit(100_000) ]),`

## Class: rational-number literals, e.g. `1r3` (6 files)

SWI's `NrD` rational-number syntax. Confirmed: `p(1r3).` reproduces `expected . at end of fact` --
the lexer reads `1` as a complete integer and has no continuation rule for `r<digits>` immediately
after.

- core/test_continuation.pl:278 -- `data_(1r3).`
- rational/test_ieee754.pl:219 -- `assertion(-1.0Inf is -1r2/ 0),`
- rational/test_rational.pl:74 -- `X = 1r3,`
- rational/test_real.pl:87 -- `assertion(-1 =:= cmpr(1r3,1r2)),`
- save/input/integers.pl:137 -- `rat(23673r276348).`
- tabling/test_trie.pl:180 -- `data(1r3).`

## Class: radix integer literals, e.g. `16'af` (2 files)

SWI's `Radix'Digits` based-integer syntax (distinct from the `0x`/`0o`/`0b` prefixed forms, which
work fine -- library/test_utf8.pl uses both in adjacent lines and only the `N'...` form fails).
Confirmed: `p(16'af).` reproduces `expected . at end of fact`; the AST shows the lexer accepted `16`
as `TT_ILIT 16` and then choked on the following `'af` (read as the start of a quoted atom).

- core/test_syntax.pl:113 -- `16'af == 175.`
- library/test_utf8.pl:78 -- `unicode_string_utf8_test_case_generator("a", [ 16'61]).`

## Class: SSU (single-sided-unification) rules using the `=>` neck (4 files)

`Head, Guard => Body` / `Head => Body` clause syntax. Confirmed: `p(X) => X == 1.` reproduces
`expected . at end of fact`.

- GC/test_ch_shift.pl:48 -- `or_dept(Depth), current_prolog_flag(asan,true) => Depth = 1000.`
- core/test_expand.pl:107 -- `ssu_body => g_b.`
- library/test_rbtrees.pl:172 -- `apply_op(+Key-Val, Tree0, Tree) =>`
- thread_wait/test_thread_signals.pl:235 -- `sig(done) =>`

## Class: dict literals, e.g. `_{a:1}`, `Tag{k:v}` (4 files)

SWI dict primary-term syntax. Confirmed: `p(_{a:1}).` reproduces `expected . at end of fact`.

- core/test_read.pl:138 -- `term_position_check("_{}", _{}, ...)`
- core/test_scan_options.pl:80 -- `numbervars(x(_,X,X), 0, End, _{singletons:true}).`
- core/test_sort.pl:125 -- `test(dict, List == [a{a:1}, a{a:2}]) :-`
- tabling/test_trie_attvars.pl:37 -- `create_trie(T, [ f(_{a:v}) ]),`

## Class: dict dot-field access, e.g. `Var.field` (3 files)

Related SWI dict feature, distinct grammar problem from the literal syntax above: the reader must
recognize a `.` immediately followed by a lowercase identifier (no whitespace) as a field accessor
rather than the clause-terminating full stop. Confirmed: `D = point{x:1}, Y = D.x, write(Y)` (using
the explicit-parens `table(...)`-style workaround for the dict-literal gap itself) still reproduces
`expected . at end of clause` at the `.x` access, isolating this as its own gap.

- db/test_jit.pl:78 -- `[Arg] = Dict.arguments.`
- save/input/data.pl:58 -- `var(Dict.a).`
- signals/test_bomb.pl:132 -- `CPU0 = Time.cpu,`

## Class: CLP(FD) infix operators `in`, `..`, `#=` not declared (2 files)

Confirmed: with `library(clpfd)` loaded, both `X in 0..9.` and `X #= 1+1.` independently reproduce
`expected . at end of clause` -- neither `in`/`..` nor `#=` is a registered operator.

- attvar/sendmoney.pl:51 -- `Digits  in 0..9,` (`in`, `..`)
- core/test_coroutining.pl:70 -- `Y #= X + 1, frozen([X, Y], Frozen),` (`#=`)

## Class: string quasi-quotation `{|Type(Args)||Content|}` (1 file)

Confirmed: `X = {|string(To)||hello|}, write(X).` reproduces `expected . at end of clause`.

- library/test_strings.pl:47 -- `A = {|string(To)||hello world|}.`

## Class: DCG `...` (ellipsis) as a nonterminal head (1 file)

`... --> [] | [_], ... .` extends/defines SWI's built-in "skip any tokens" DCG nonterminal.
Confirmed standalone: reproduces `expected . at end of DCG clause` exactly.

- save/test_saved_states.pl:225 -- `... --> [] | [_], ... .`

## Class: `!` immediately after `->` with no space (`->!`) mis-tokenizes (1 file)

Narrow lexer-boundary bug, isolated by bisection against `./scrip --dump-ast`: `(Cond->!;true)`
fails, but the identical construct with a space (`Cond -> ! ; true`) parses clean, as does `!`
immediately before `;` with no space (`!;true` alone is fine). The trigger is specifically the
graphic-token run `->` immediately abutting the solo-char cut token, not `!` in general and not
tight-`;` in general. Minimal witness: `main :- (true->!;true).` fails;
`main :- (true==3->true;true).` (no cut) and `main :- (true -> ! ; true).` (spaced) both parse
clean.

- thread/test_libthread.pl:62 -- `(concurrent_and(between(1, 5, X), Y is X^2), (X==3->!;true)),`

## Class: a `.` immediately followed by `%` (no space) at end-of-clause desyncs the tokenizer (1 file)

The GOAL's cross-cutting hypothesis, survives as a genuine single-file class: confirmed standalone
(`p(1).% comment right after dot` followed by another clause reproduces `expected . at end of
fact`) and, unlike the other 3 files that happen to contain this shape elsewhere in their source,
xsb_test_tables.pl has it sitting exactly at the flagged line -- the `.` ending the fact and the `%`
starting its trailing comment are adjacent with no separating space.

- xsb/table_tests/xsb_test_tables.pl:101 -- `table_test(test_cyclic_tabling).% Cyclic term handling`

## Files that merely CONTAIN the tight-`.%` shape elsewhere, but whose classified failure above is unrelated

Noted so a future reader doesn't rediscover these as false leads: core/test_read.pl (dict literal,
above), library/test_url.pl (thread_local prefix, above), unprotected/test_reload.pl (thread_local
prefix, above) each contain a `[^\s%]%` occurrence somewhere in the file, but each one's flagged
error line and empirically-confirmed cause is the class already listed above for that file, not this
one.
