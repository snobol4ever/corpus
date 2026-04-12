# csnobol4-suite

The original CSNOBOL4 2.3.3 test suite by Philip L. Budne, verbatim.

- 124 `.sno` programs
- 125 `.ref` expected-output files
- 3 `.in` input files (used by a handful of tests that read stdin)

These are **not** crosscheck-style programs — they use `OUTPUT =` throughout,
some require stdin input, and a few use file I/O. They belong here in `programs/`
rather than `crosscheck/`.

## Running against CSNOBOL4

```bash
cd /path/to/csnobol4
for f in /path/to/corpus/programs/csnobol4-suite/*.sno; do
    base="${f%.sno}"
    name=$(basename "$base")
    actual=$(./snobol4 "$f" 2>/dev/null)
    expected=$(cat "$base.ref" 2>/dev/null)
    [ "$actual" = "$expected" ] && echo "PASS $name" || echo "FAIL $name"
done
```

## Running against SPITBOL (oracle)

```bash
for f in /path/to/corpus/programs/csnobol4-suite/*.sno; do
    base="${f%.sno}"
    name=$(basename "$base")
    actual=$(/home/claude/x64/bin/sbl "$f" 2>/dev/null)
    expected=$(cat "$base.ref" 2>/dev/null)
    [ "$actual" = "$expected" ] && echo "PASS $name" || echo "FAIL $name"
done
```

## Source

Philip L. Budne, CSNOBOL4 2.3.3 — http://www.regressive.org/snobol4/csnobol4  
Imported verbatim from `snobol4ever/csnobol4` `test/` directory.
