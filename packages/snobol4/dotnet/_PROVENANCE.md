# packages/snobol4/dotnet — the dotnet program set

**Origin:** in the corpus since `45cba0bea` (2026-03-11, "programs/beauty lon dotnet icon"), moved here by the re-grid `91e4465cc` (2026-08-24). Graded by `SCRIP/scripts/test_snobol4_dotnet_suite.sh` against the live oracle (`sbl -bf`); no `.ref` files. The records beside it: `OUTSIDE_SPITBOL_BASELINE.tsv` (mirrored by `UNGRADABLE.tsv`), `EXCLUDED.tsv`, `CONTAINERS.tsv`, `ALL.mask`, `ORACLE_ACCEPTANCE.tsv`.

## Conversions made once in the repo (never at grade time)

### 2026-09-28 — the leading UTF-8 BOM stripped from five programs (ceo CEO-1352, hq_snobol4)

The ruling: *strip the BOM once in the repo on the CEO-544/571 precedent, recorded in _PROVENANCE.md. The oracle gets no special copy; both engines read the same bytes.* As vendored, these five opened with the three bytes `ef bb bf`. `sbl -bf` reads them as part of the first label and stops at parse time (ERROR 214, or a crash, rc 231). So the oracle never reached the programs and they sat in `OUTSIDE_SPITBOL_BASELINE.tsv`. The only change is those three bytes, removed. Every other byte is as shipped (sha256 prefixes, before → after):

| program | before | after | what the oracle answers now |
|---|---|---|---|
| `Test.sno` | `0ebe45eab8e34b0f` | `8cd550b61fb428bb` | runs rc 0; SCRIP m3 byte-identical (grades green) |
| `Test2.sno` | `4aac8db3e9bc48d6` | `e40a3e2bc2fa1e9b` | refuses at compile, *No END statement found* (it ends in lowercase `end`); graded as a compile refusal |
| `SourceLines001.sno` | `dc64a4970ef4b82e` | `c5d11e25350095c3` | the `-LIST` listing, then *No END statement found*; `-LIST` feature debt, in the denominator |
| `SourceLines002.sno` | `47f5e8ec8c9ed231` | `93c6ec5df5782765` | the `-LIST` listing, then runs; `-LIST` feature debt, in the denominator |
| `SourceLines003.sno` | `c73489a4f55e9e61` | `7a4c060549eeed2f` | the `-LIST` listing, then runs; `-LIST` feature debt, in the denominator |

SourceLines001/002/003 print SPITBOL's `-LIST` listing. Its head names the oracle build (`macro spitbol version 4.0f`) and the time it was printed (`x86-64  <day> <mon> <dd> <hh:mm:ss> <yyyy>`). `ALL.mask` carries one identity row (CEO-1344) and one clock row (CEO-409) per program for those two lines. Nothing else in the listing is masked.
