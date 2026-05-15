#!/usr/bin/env bash
# verify_jvm_artifacts.sh — verify JVM demo artifact checksums
set -uo pipefail

DEMO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIP="${SCRIP:-/home/claude/one4all/scrip}"
JASMIN="${JASMIN:-/home/claude/one4all/src/backend/jasmin.jar}"

echo "Verifying JVM demo artifacts in $DEMO_DIR"

# Expected checksums (from GOAL-SN4-JVM-EMIT.md)
declare -A EXPECTED_MD5=(
    [hello.j]="0bb216fca7e77ec37486ef7eb140e033"
    [counter.j]="77364710c58e6ee05ed33ecd41b7479d"
    [pattern_test.j]="1e1843144e4956b7427ee02a4bb728f7"
    [arithmetic.j]="0bbd509431a2dfea99531b673093b222"
    [beauty.j]="226c5bac25dd7fd69f297dfdcfdf327c"
)

PASS=0
FAIL=0

for prog in "${!EXPECTED_MD5[@]}"; do
    if [ ! -f "$DEMO_DIR/$prog" ]; then
        echo "✗ $prog: NOT FOUND"
        ((FAIL++))
        continue
    fi
    
    actual=$(md5sum "$DEMO_DIR/$prog" | awk '{print $1}')
    expected="${EXPECTED_MD5[$prog]}"
    
    if [ "$actual" = "$expected" ]; then
        echo "✓ $prog: checksum match"
        ((PASS++))
    else
        echo "✗ $prog: checksum MISMATCH"
        echo "  Expected: $expected"
        echo "  Actual:   $actual"
        ((FAIL++))
    fi
done

echo ""
echo "Result: $PASS pass, $FAIL fail"
[ $FAIL -eq 0 ]
