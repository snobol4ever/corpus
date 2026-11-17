# demos/snobol4 (Snobol4Demo)

The fleet's SNOBOL4 demonstration programs, one folder a demo, graded as one container (suite key `snobol4-demos`, the files form, per entry):

- `hello`, `counter`, `arithmetic`, `roman`, `wordcount`, `pattern_test`: small programs.
- `calculator`, `json`, `claws5`, `treebank`: programs of several files.
- `beauty`: Lon Cherryholmes's SNOBOL4 beautifier, its own oracle, since `beauty.sno < beauty.sno` is the identity (skill snobol4).
- `porter`: the Porter (1980) stemming algorithm.

`ALL.csv` is the index, 24 entries. Each answer is `NAME.out` beside its program, cut from the oracle, `sbl -bf`. A demo that reads input
has it as `NAME.in` beside it (claws5's three). `DEMO-SCALE.tsv` holds each demo's fixed input scale for the performance measurement (2026-08-27).

The folder took its name `corpus/demos` at corpus 924bd8bd0 (2026-08-29). The suite table read 24 of 24 on 2026-11-17.
