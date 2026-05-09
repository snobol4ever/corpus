# === BEGIN bb macro library (EM-7c-bb-macros) ===
# One named .macro/.endm per leaf-box port.  Three-column shape.
# GAS expands to byte-identical inline x86 (same as ev_* emissions).
                        .macro           DELTA_LOAD
                        mov              eax, [r10]
                        .endm
                        .macro           SIGLEN_LOAD
                        lea              rcx, [rip + Σlen]
                        mov              eax, [rcx]
                        .endm
                        .macro           EPS_α lbl_succ
                        jmp              \lbl_succ
                        .endm
                        .macro           EPS_β lbl_fail
                        jmp              \lbl_fail
                        .endm
                        .macro           FAIL_α lbl_fail
                        jmp              \lbl_fail
                        .endm
                        .macro           FAIL_β lbl_fail
                        jmp              \lbl_fail
                        .endm
                        .macro           RPOS_α n, lbl_succ, lbl_fail
                        SIGLEN_LOAD
                        sub              eax, \n
                        mov              ecx, eax
                        DELTA_LOAD
                        cmp              eax, ecx
                        jne              \lbl_fail
                        jmp              \lbl_succ
                        .endm
                        .macro           RPOS_β lbl_fail
                        jmp              \lbl_fail
                        .endm
                        .macro           POS_α n, lbl_succ, lbl_fail
                        DELTA_LOAD
                        cmp              eax, \n
                        jne              \lbl_fail
                        jmp              \lbl_succ
                        .endm
                        .macro           POS_β lbl_fail
                        jmp              \lbl_fail
                        .endm
# === END bb macro library ===
