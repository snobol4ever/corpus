#!/bin/bash
# xml_cut.sh -- the oracle's answers for the W3C XML conformance documents (the grader 2026-11-14): canon, built by unicon 13.3 against its own
# installed xml package, run twice on each document from the package root by its relative path; writes NAME.1 and NAME.2 under /tmp/s4e/grader/xml/cut
cd /tmp/s4e/grader/xml/src || exit 2
mkdir -p /tmp/s4e/grader/xml/cut
one() { e="$1"; o="/tmp/s4e/grader/xml/cut/$(printf '%s' "$e" | tr '/' '_')"; for t in 1 2; do timeout -k 5 60 /tmp/s4e/grader/xml/drv/canon "$e" < /dev/null > "$o.$t" 2>&1; echo $? >> "$o.$t.rc"; done; }
export -f one
xargs -a /tmp/s4e/grader/xml/entries.txt -P 2 -I{} bash -c 'one "$@"' _ {}
echo CUT-DONE
