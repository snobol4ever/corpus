#!/bin/bash
H="${S4E_HOME:?REFUSE(2): S4E_HOME unset}/harness/scripts/s4e_cycle.sh"
bash -n "$H" || exit 1
grep -q "REQUEST_PENDING lap=" "$H" && grep -q "REQUEST_BASE \\[^ \\]\\* SCRIP=" "$H" || exit 1
t=$(echo "REQUEST_BASE /b SCRIP=2039f9682f corpus=e binary=/s" | sed -n "s/^REQUEST_BASE [^ ]* SCRIP=\\([0-9a-f]*\\) .*/\\1/p" | cut -c1-9); [ "$t" = 2039f9682 ] || exit 1
echo GREEN; exit 0
