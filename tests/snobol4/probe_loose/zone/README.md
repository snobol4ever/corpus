# probe/zone — ζ-ONE U-1 PLANNER/TEMPLATE DISAGREEMENT SET (s136)

`ZONE-DISAGREE-81.txt` — the 81 of 656 programs whose `--compile` STDOUT changes when the
unified zeta zone plan (`SCRIP_ZONE=1`) supplies the operand offset instead of the template's
own hand-wired one.

⛔ **DIRECTION UNKNOWN. DO NOT INHERIT THESE AS 81 BUGS.** A mover means the PLANNER and the
TEMPLATE disagree about where one operand lives. Either is capable of being the wrong one, and
the s136 seat did not determine which before running out of context.

**The specific suspicion to test first, cheapest and most likely:** `zzone_off_of` asks the four
registry functions in the order capture → arbno → fence → leaf and takes the first non-decline,
on the assumption that a node is owned by at most one class. `LFC`/`LFCQ` — the only two callers
that existed before this rung — instead read the STAGED `_.op_leaf_frame_off`. If any node is
claimed by two registry functions, the planner hands it the wrong class's slot and every mover is
the planner's defect, not a finding.

**The one-command test:** restrict `zzone_off_of` to `leaf_frame_slot` alone (matching LFC's
original input exactly). If the mover count goes to 0, the multi-claim case is the whole story and
the registry order is the bug. If movers remain, the residue is a genuine planner/template
disagreement and each one is a witness.

Default is OFF and byte-identical (1 mover, `unary_not.sno`, the documented null self-noise).
