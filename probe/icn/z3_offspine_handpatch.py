#!/usr/bin/env python3
# z3_offspine_handpatch.py -- Z-3 SLICE 2 PROOF-BY-HAND-PATCH (s234, Claude Opus 5)
#
# WHAT THIS PROVES, and why it is a witness rather than a fix: it rewrites the mode-4 asm that SCRIP
# already emits for a user-defined generator so the activation lives OFF THE FORTH SPINE, and shows the
# suspension/resume machinery then WORKS -- first gamma yields 1, the resume yields 2 -- where the
# unpatched binary SEGVs at the resume.  It is a hand patch on ONE program's emitted .s: it is evidence
# for the Z-3 design, NOT a compiler change, and nothing here is wired into a gate.
#
# USE:  scrip --compile --target=x86 rung03_suspend_gen.icn > gen.s   (SCRIP_ICN_GENFRAME=1)
#       python3 z3_offspine_handpatch.py gen.s gena.s
#       gcc -no-pie gena.s -L$RTDIR -lscrip_rt -Wl,-rpath,$RTDIR -lm -lpthread -o gena.bin
#
# THE FOUR EDITS, each corresponding to one measured protocol disagreement (see GOAL-ICON-100 s234):
#   (1) alpha  -- rsp switches to a private arena; the caller's rsp is stashed in the frame.
#   (2) gamma  -- publishes the live activation base in r12 and RESTORES the caller's rsp instead of
#                 `add rsp,kt`.  The activation survives gamma; only omega abandons it.
#   (3) omega  -- restores the caller's rsp the same way (generator genuinely exhausted).
#   (4) caller -- parks the REAL base (r12, not its own post-teardown rsp), reads the park back from
#                 the slot the landing actually wrote (steady+80, NOT steady+88), and re-enters at the
#                 slot where the callee actually parked its resume address (base+192, NOT base+0).
#
# OFFSETS ARE THIS PROGRAM'S LAYOUT (kt=304, resume slot 192, free slot 296).  They are not constants of
# the design -- re-derive them from the emitted .s for any other program.  The DESIGN facts are: gamma
# retains, omega frees, the base is published in a register, and the park/resume slots must agree.
import sys

src, dst = sys.argv[1], sys.argv[2]
s = open(src).read()
n = 0


def sub(old, new):
    global s, n
    if old not in s:
        sys.exit("PATCH SITE NOT FOUND (layout drifted -- re-derive offsets):\n" + old)
    s = s.replace(old, new, 1)
    n += 1


sub("""proc_upto_α:
                        sub              rsp, 304""",
    """proc_upto_α:
                        mov              r12, rsp
                        lea              rsp, [rip + zact_arena_top]
                        sub              rsp, 304
                        mov              qword ptr [rsp + 296], r12""")
sub("""                        mov              rcx, qword ptr [rsp + 280]
                        add              rsp, 304;                            jmp   rcx""",
    """                        mov              rcx, qword ptr [rsp + 280]
                        mov              r12, rsp
                        mov              rsp, qword ptr [rsp + 296];          jmp   rcx""")
sub("""                        mov              rcx, qword ptr [rsp + 288]
                        add              rsp, 304;                            jmp   rcx""",
    """                        mov              rcx, qword ptr [rsp + 288]
                        mov              rsp, qword ptr [rsp + 296];          jmp   rcx""")
sub("mov              qword ptr [rsp + 88], rsp", "mov              qword ptr [rsp + 88], r12")
sub("mov              rsp, qword ptr [rsp + 88];           jmp   qword ptr [rsp]",
    "mov              rsp, qword ptr [rsp + 80];           jmp   qword ptr [rsp + 192]")
sub("                        .text\n",
    "                        .text\n                        .bss\n                        .align 16\n"
    "zact_arena:             .space 65536\nzact_arena_top:\n                        .text\n")
open(dst, "w").write(s)
print("z3_offspine_handpatch: %d sites patched -> %s" % (n, dst))
