# uni_xml

UniXml: the W3C XML conformance suite (the OASIS and NIST collection of 2001-03-15, `xmlconf/`, as Unicon ships it in
`/home/resources/icon-demos/unicon-git/uni/xml/xmlconf.tar.gz`) parsed by Unicon's own xml package (`lib/`, the 31 files of `uni/xml`
that declare `package xml`: the parser, the document tree, the DTD declarations and the formatters). 1672 documents are graded: 915 of
IBM's, 338 of James Clark's `xmltest`, 315 of OASIS's and 104 of Sun's, each family in its `valid`, `invalid` and `not-wf` folders. The
collection's own statements are `xmlconf/readme.html` and `xmlconf/xmltest/readme.html`; Unicon's licence is `COPYING.unicon`.

THE DRIVER is ours, `canon.icn`: it enters the document's folder (so a relative SYSTEM identifier resolves beside it, as the
distribution's `dotests.sh` does), parses the document with `XmlParser` as the distribution's `testvalid.icn` does, and writes the
document's canonical form (`CanonicalXmlFormatter`), or every fatal error, validity error and warning the parser reports. So an answer
is the parser's whole verdict on one document: of the 1672, 336 are a canonical form alone, 1095 begin with a fatal error, 188 with a
validity error and 53 with a warning. `ALL.launch` hands each row's document to the one driver; `CONTRACT.tsv` marks the package Unicon
and names `lib` and the sibling `../unicon_uni/lib` (the `util` and `lang` packages the xml package imports) as its import path, and
`ALL.env` gives the launch the same two as `IPATH` (MEASURED: without it the launch answers `cannot find package xml` for every row).
`webscraper.icn` is left out of `lib/`: it imports `http` and `net`, which no document needs.

THE CONVERSION: every file of `lib/` carries the semicolons SCRIP requires, inserted once by `util_icon_semicolons.py` (skill unicon;
never tracked), and each is PROVED by `unicon -s -c` giving the original and the converted text the same ucode, the uid line aside and
the proof folder's path normalized, the package's files compiled together (`CONVERSION-PROOF.tsv`: 29 same-code, 3 unchanged).

THE ANSWERS were cut from the oracle, `canon` built by unicon 13.3 against its own installed xml package (whose sources `lib/` copies),
each document run twice with identical results, by the grader on 2026-11-14. OWED: 35 documents that are not valid UTF-8 (UTF-16 and
byte-level tests) are named in `ALL.omit` with that reason, since the harness reads an entry's file as UTF-8 text; they enter when it
reads bytes. MEASURED before the first full reading: the launch road grades `sun/valid/pe01`, `sun/invalid/attr01`, `xmltest/valid/sa/001` and
`xmltest/not-wf/sa/001` (mode 3). THE COST: SCRIP compiles the driver and the whole import closure again for every document, about 28
CPU-seconds each on SCRIP f2cfd6512 where the oracle's built `canon` answers in milliseconds, so the package is about 13 CPU-hours a
reading until the launch compiles a driver once or the compile is cured.

WHAT THE CYCLE GRADES (Lon 2026-11-14 14:4x CST, in the grader's window, on the cost above, verbatim: "regarding uni_xml, you land just
the way you like it."): the package is in the corpus whole and every one of its 1672 documents is in the row's denominator. The cycle
grades its `core` part each lap (165 documents, every folder of the collection three times over; about 77 CPU-minutes), and the 26
chunks (1507 documents, about 28 CPU-minutes each) are held in `/home/resources/progress/CYCLE.skip`: each was read once at the landing
by the grader, in the batch class on a clean tree at origin, so the row's Earliest stamp is that reading and the row is whole. A seat
that cures something in the xml package or in the launch asks for the chunks it touches (`s4e_test_request.sh uni_xml ENTRY...`). The
26 lines come out of CYCLE.skip when the launch compiles a driver once for all its documents, or the compile itself is cured.
