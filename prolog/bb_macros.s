# === BEGIN bb macro library (EAO-4/xa_bb_macro_library) ===
                        .intel_syntax    noprefix
                        .macro           DELTA_LOAD
                        mov              eax, [r10]
                        .endm
                        .macro           SIGLEN_LOAD
                        lea              rcx, [rip + Σlen]
                        mov              eax, [rcx]
                        .endm
                        .macro           EPS_α lbl_γ
                        jmp              \lbl_γ
                        .endm
                        .macro           EPS_β lbl_ω
                        jmp              \lbl_ω
                        .endm
                        .macro           FAIL_α lbl_ω
                        jmp              \lbl_ω
                        .endm
                        .macro           FAIL_β lbl_ω
                        jmp              \lbl_ω
                        .endm
                        .macro           RPOS_α n, lbl_γ, lbl_ω
                        SIGLEN_LOAD
                        sub              eax, \n
                        mov              ecx, eax
                        DELTA_LOAD
                        cmp              eax, ecx
                        jne              \lbl_ω
                        jmp              \lbl_γ
                        .endm
                        .macro           RPOS_β lbl_ω
                        jmp              \lbl_ω
                        .endm
                        .macro           POS_α n, lbl_γ, lbl_ω
                        DELTA_LOAD
                        cmp              eax, \n
                        jne              \lbl_ω
                        jmp              \lbl_γ
                        .endm
                        .macro           POS_β lbl_ω
                        jmp              \lbl_ω
                        .endm
# === END bb macro library ===
