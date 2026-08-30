# Ref provenance — Pascal crosscheck suites

Every `.ref` in this directory was verified against the Pascal oracle (`fpc 3.2.2 -Miso`) on 2026-08-28.
**Audit result, re-measured at that date: 96 blocks = 91 oracle-matched + 4 ISO-delegated + 1 no-oracle.**
All 96 also match SCRIP's own output. Re-run the audit before trusting this file; do not quote these
counts without reproducing them.

## 91 blocks — ORACLE-DERIVED
`.ref` is byte-identical to `fpc -Miso` output. Ordinary graded witnesses; nothing special applies.

## 4 blocks — `ISO-DELEGATED-SCRIP-DEFAULT`

| block | what differs from fpc |
|---|---|
| `misc:10 constreal` | real output format |
| `misc:32 realwidth`  | real output format |
| `stdlib:2 stdlib2`   | real output format |
| `stdlib:3 stdlib3`   | real output format |

These refs record **SCRIP's** real-number formatting, not fpc's, **deliberately and by ruling** — Lon via
CEO-72/CEO-74, 2026-08-28. ISO 7185 **delegates** both axes to the implementation:

> exponent character is "either `e` or `E` (the case is implementation defined)"; "the number of digits in
> the exponent are implementation defined, as are the number of digits in a fraction if no field width is defined"
> — *Moore's Rules of ISO 7185*, <https://standardpascal.org/iso7185rules.html>

So SCRIP's fixed, self-consistent default **is** the sanctioned implementation definition. Measured example
(`constreal`): SCRIP ` 3.141592650000E+000` · fpc ` 3.1415926500000002e+000` — differing in exponent case and
significant digits, both delegated axes. fpc is not a target here because it is **self-inconsistent**: at one
width in one program it emits 3-digit and 4-digit exponents (` 1.5540000e+000` vs ` 3.141593e+0000`).

⛔ **The mark is `ISO-DELEGATED`, never `ISO-RULED`.** ISO does not mandate this shape; it declines to mandate
any. Calling it ISO-RULED would assert a conformance claim the standard does not make.
⛔ **A ref recording the implementation under test cannot fail that implementation.** These 4 are *sanctioned*,
not *graded* — they pin a choice, they do not prove one. If SCRIP's real formatting ever changes, regenerate
them deliberately and re-affirm the delegation; never let them silently re-pin.

## 1 block — NO ORACLE, and the ISO question is **OPEN**

`pb:1 pb36` — `writeln(<enum>)`. `fpc -Miso` cannot compile it (`Fatal: Unknown compilerproc
"fpc_write_text_enum_iso"`), so there is no oracle output to compare against; the ref (`blck` / `blck`) is
SCRIP-self-derived and **unproven**.

⛔ **This is NOT a real-formatting block and is NOT covered by the delegation ruling above** — it contains no
reals at all. It was held in the same batch as the other four, which is the only thing it shares with them.
**Whether ISO 7185 permits writing an enumerated value directly is unresolved, and local evidence points both
ways:** the ISO 7185 acceptance test writes enums exclusively via `ord(e):1`, never `writeln(e)`
(`/home/resources/Pascal-P5/standard_tests/iso7185pat.pas:559,562,570`) — suggesting it is not standard; while
fpc's own missing routine is *named* `fpc_write_text_enum_iso`, suggesting fpc intended to support it in ISO
mode. Tracked by row `pascal-writeln-enum-iso-conformance-unresolved`. Its loose twin is `pb37` (same fpc gap).

⚠️ `../KEEP.md` §4 characterizes this as "a real gap in this fpc build's `-Miso` RTL, not a SCRIP or ref
defect." **That is asserted, not sourced.** Do not cite it as settled.
