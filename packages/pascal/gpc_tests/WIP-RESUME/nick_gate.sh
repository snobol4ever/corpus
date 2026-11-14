#!/bin/bash
# nick_gate.sh -- the landing gate of the nick rule and --nick (the grader 2026-11-14): rc 0 green, 1 red, 2 refused
H="${S4E_HOME:?REFUSE(2): S4E_HOME unset}"; S=$(mktemp -d /tmp/s4e/grader/nickgate.XXXXXX) || exit 2; trap 'rm -rf "$S"' EXIT
bash -n "$H/harness/scripts/s4e_cycle.sh" || exit 1
eval "$(sed -n '/^cycle_nick() {/,/^}/p' "$H/harness/scripts/s4e_cycle.sh")"
for t in rosetta-icon:icon:IcnRosetta rosetta-unicon:icon:UniRosetta rosetta-snobol4:snobol4:SnoRosetta rosetta-raku:raku:RakRosetta uni_ipl:icon:UniIpl power_of_prolog:prolog:ProPower metalevel_contests:prolog:ProMetalevel scriptix-demos:scriptix:TixDemo gate_cases_pascal:pascal:PasCases unicon-uni:icon:; do
    IFS=: read -r k l want <<< "$t"; got="$(cycle_nick "$k" "$l")"; [ "$got" = "$want" ] || { echo "RED cycle_nick $k $l = [$got], want [$want]"; exit 1; }; done
cp /home/resources/progress/SUITES.tsv "$S/orig.tsv" && cp "$S/orig.tsv" "$S/SUITES.tsv" || exit 2
B="python3 -I $H/harness/scripts/util_suite_banner.py"; export S4E_SUITES_TSV="$S/SUITES.tsv"
$B --nick rosetta-icon IcnRosetta > /dev/null || exit 1
[ "$(awk -F'\t' '$1=="rosetta-icon"{print $2}' "$S/SUITES.tsv")" = IcnRosetta ] || { echo "RED --nick did not write"; exit 1; }
$B --nick rosetta-unicon PasRosetta 2>/dev/null; [ $? -eq 2 ] || { echo "RED a taken nick was not refused"; exit 1; }
$B --nick rosetta-unicon UniRosettaTooLong 2>/dev/null; [ $? -eq 2 ] || { echo "RED a long nick was not refused"; exit 1; }
diff <(cut -f1,3- "$S/orig.tsv" | grep -v '^rosetta-icon') <(cut -f1,3- "$S/SUITES.tsv" | grep -v '^rosetta-icon') > /dev/null || { echo "RED --nick moved another cell"; exit 1; }
echo "GREEN nick rule 10 of 10, --nick writes, refuses two, moves no reading"; exit 0
