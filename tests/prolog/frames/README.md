# tests/prolog/frames -- witnesses of the FRAME WIDTH class (the cto, 2026-10-31, CEO-2083)

A program whose iterations are legitimately retained (a live choice point younger than the frame) costs one activation's frames per iteration in every Prolog; these witnesses measure how many bytes of machine stack SCRIP spends per retained iteration against swipl 9.0.4's local stack. Each .pl runs at a declared -s that is the row's rung; its .ref is cut from swipl -q -t halt.

| witness | shape | swipl local bytes per iteration | SCRIP at the cut |
|---|---|---|---|
| retained_iteration_euler24_loop | find_permutation/4 of hakank_swi_euler24, N=10,000, two append/3 choice points per iteration | 592 (trail 49; the lists 593 on the global stack, SCRIP's heap) | about 2,600: passes -s26m, overflows -s24m (82e01edf9, mode 3; mode 4 passes 32m, overflows 24m) |

The rung of the first row: the witness answers at -s12m in both modes (at most twice swipl's local stack per retained iteration).
