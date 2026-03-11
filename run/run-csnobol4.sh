#!/bin/bash
# run-csnobol4.sh -- run a corpus .sno program under CSNOBOL4
# Usage: run-csnobol4.sh <prog.sno> [args...]
# Call from anywhere; sets SNOPATH and -I to corpus inc/ automatically.
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CORPUS_PROGRAMS="$SCRIPT_DIR/../programs"
SNO="$1"; shift
cd "$CORPUS_PROGRAMS"
exec env SNOPATH=inc snobol4 -f -I inc "$(realpath "$SNO")" "$@"
