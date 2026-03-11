#!/bin/bash
# run-spitbol.sh -- run a corpus .sno program under SPITBOL
# Usage: run-spitbol.sh <prog.sno> [args...]
# SPITBOL resolves -INCLUDE relative to CWD; we cd to inc/ so bare
# include names resolve, and pass the .sno as an absolute path.
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CORPUS_INC="$SCRIPT_DIR/../programs/inc"
SNO="$1"; shift
cd "$CORPUS_INC"
exec spitbol -b "$(realpath "$SNO")" "$@"
