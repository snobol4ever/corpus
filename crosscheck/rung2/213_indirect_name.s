                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ref_b_α
proc_LBL__ref_b_α:
proc_LBL__ref_b_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_lit_string_α
n0_goto_β:
                                                                                        jmp   proc_LBL__ref_b_ω
#=======================================================================================================================
# ref_b   ref_b = .A                                 :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_call_α
.Lx9_0:
                        .quad            .Lx9_0_s
.Lx9_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd11:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd11]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx10_240
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
.Lx10_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_assign_α
n2_call_β:
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ref_b
                        mov              qword ptr [1879052296], rdx                    # ref_b
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_call_α
.Lx13_0:
                        .quad            .Lx13_0_s
.Lx13_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd15:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd15]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx14_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n7_save_restore_α
.Lx14_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_save_restore_α
n5_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n7_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n6_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n7_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ref_b_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ref_b_β:
                                                                                        jmp   proc_LBL__ref_b_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ref_b_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ref_b_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ref_b_α
proc_ref_b_α:
proc_ref_b_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
                        mov              rdi, rcx
                        mov              rsi, rdx
                        lea              rdx, [rsp + 0]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n21_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n21_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx25_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx25_1
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "ref_b"
.Lx25_1:
                                                                                        jmp   proc_ref_b_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ref_b_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ref_b_β:
                                                                                        jmp   proc_ref_b_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ref_b_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_ref_b_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__ref_b"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__ref_b_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "ref_b"
                        .align           8
.Lstartup_pnames1:
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 0
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_ref_b_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ref_b"
.Lgvan1:                .string          "A"
.Lgvan2:                .string          "X"
.Lgvan3:                .string          "NM"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         A = 42
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_assign_α
.Lx86_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # A
                        mov              qword ptr [1879052312], rdx                    # A
                        add              rsp, 16
                                                                                        jmp   n28_lit_string_α
#=======================================================================================================================
#         X = 'A'
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_assign_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # X
                        mov              qword ptr [1879052328], rdx                    # X
                        add              rsp, 16
                                                                                        jmp   n30_var_α
#=======================================================================================================================
#         DIFFER($X, 42)                             :F(e001)
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # X
                        mov              rdx, qword ptr [1879052328]                    # X
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_call_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd92:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd92]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx91_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n37_lit_string_α
.Lx91_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_deref_α
n31_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx93_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n37_lit_string_α
.Lx93_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_call_α
.Lx94_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd96:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd96]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx95_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n37_lit_string_α
.Lx95_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n35_lit_string_α
n34_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n37_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/001: dollar-X indirect'    :(END)
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_assign_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "FAIL 213/001: dollar-X indirect"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx98_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         NM = .A
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_call_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd101:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd101]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx100_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n40_var_α
.Lx100_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n39_assign_α
n38_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # NM
                        mov              qword ptr [1879052344], rdx                    # NM
                        add              rsp, 32
                                                                                        jmp   n40_var_α
#=======================================================================================================================
#         DIFFER($NM, 42)                            :F(e002)
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # NM
                        mov              rdx, qword ptr [1879052344]                    # NM
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n41_call_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd105:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd105]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx104_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n47_var_α
.Lx104_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n42_deref_α
n41_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx106_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n47_var_α
.Lx106_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_call_α
.Lx107_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd109:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd109]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx108_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n47_var_α
.Lx108_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n45_lit_string_α
n44_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n47_var_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/002: dollar-NM DT_N deref' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_assign_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "FAIL 213/002: dollar-NM DT_N deref"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx111_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         $X = 99
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # X
                        mov              rdx, qword ptr [1879052328]                    # X
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_call_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd114:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd114]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx113_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n51_var_α
.Lx113_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_lit_integer_α
n48_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_assign_var_α
.Lx115_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx116_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n51_var_α
.Lx116_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   n51_var_α
#=======================================================================================================================
#         DIFFER(A, 99)                              :F(e003)
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # A
                        mov              rdx, qword ptr [1879052312]                    # A
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n53_call_α
.Lx118_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd120:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd120]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx119_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n56_lit_integer_α
.Lx119_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n54_lit_string_α
n53_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n56_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/003: dollar-X lvalue assign' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_assign_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "FAIL 213/003: dollar-X lvalue assign"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx122_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         A = 77
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_assign_α
.Lx123_0:
                        .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # A
                        mov              qword ptr [1879052312], rdx                    # A
                        add              rsp, 16
                                                                                        jmp   n58_lit_string_α
#=======================================================================================================================
#         DIFFER($.A, 77)                            :F(e004)
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n59_call_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd127:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd127]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx126_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n65_call_α
.Lx126_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_deref_α
n59_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n65_call_α
#-----------------------------------------------------------------------------------------------------------------------
n60_deref_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx128_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n65_call_α
.Lx128_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n61_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n62_call_α
.Lx129_0:
                        .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd131:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd131]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx130_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n65_call_α
.Lx130_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   n63_lit_string_α
n62_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n65_call_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/004: dollar-dot literal'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_assign_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "FAIL 213/004: dollar-dot literal"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx133_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DEFINE('ref_b()')                          :(ref_b_end)
#         DIFFER(ref_b(), 77)                        :F(e005)
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # ref_b
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]                    # ref_b
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx135_0]
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx135_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx135_6]
                        lea              rdx, [rip + .Lx135_7]
                                                                                        jmp   rax
.Lx135_6:
                        mov              rdi, qword ptr [1879052288]                    # ref_b
                        mov              rsi, qword ptr [1879052296]                    # ref_b
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # ref_b
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # ref_b
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx135_2
.Lx135_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # ref_b
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # ref_b
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx135_2
.Lx135_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx135_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx135_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx135_3]
                        lea              rdx, [rip + .Lx135_4]
                                                                                        jmp   rax
.Lx135_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx135_2
.Lx135_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx135_2
.Lx135_1:
                        call             rt_faildescr@PLT
.Lx135_2:
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx135_240
                        add              rsp, 16
                                                                                        jmp   n70_lit_string_α
.Lx135_240:
                                                                                        jmp   n66_lit_integer_α
n65_call_β:
                                                                                        jmp   n70_lit_string_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "ref_b"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_call_α
.Lx136_0:
                        .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn138:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx137_240
                        add              rsp, 16
                                                                                        jmp   n70_lit_string_α
.Lx137_240:
                        add              rsp, 16
                                                                                        jmp   n68_lit_string_α
n67_call_β:
                        add              rsp, 16
                                                                                        jmp   n70_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 213/005: NRETURN read value'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 32
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_assign_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "FAIL 213/005: NRETURN read value"
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx140_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 213_indirect_name (5/5)'
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n71_assign_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "PASS 213_indirect_name (5/5)"
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n72_goto_α:
                                                                                        jmp   n37_lit_string_α
n72_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_goto_α:
                                                                                        jmp   n47_var_α
n73_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_goto_α:
                                                                                        jmp   n56_lit_integer_α
n74_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_goto_α:
                                                                                        jmp   n65_call_α
n75_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_goto_α:
                                                                                        jmp   n77_lit_string_α
n76_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ref_b   ref_b = .A                                 :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_call_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd150:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd150]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx149_240
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
.Lx149_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n79_assign_α
n78_call_β:
                        add              rsp, 16
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ref_b
                        mov              qword ptr [1879052296], rdx                    # ref_b
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_call_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd154:            .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd154]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx153_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n83_save_restore_α
.Lx153_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_save_restore_α
n81_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n83_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n82_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n83_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n84_goto_α:
                                                                                        jmp   n65_call_α
n84_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_goto_α:
                                                                                        jmp   n70_lit_string_α
n85_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
