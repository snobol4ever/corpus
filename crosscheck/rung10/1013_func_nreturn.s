                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ref_a_α
proc_LBL__ref_a_α:
proc_LBL__ref_a_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_lit_string_α
n0_goto_β:
                                                                                        jmp   proc_LBL__ref_a_ω
#=======================================================================================================================
# ref_a   ref_a = .a                                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n2_call_α
.Lx9_0:
                        .quad            .Lx9_0_s
.Lx9_0_s:
                        .string          "a"
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
                        lea              rdi, [rip + .Lrkfnzd11]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx10_240
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
.Lx10_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n3_assign_α
n2_call_β:
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # call
                        mov              qword ptr [1879052288], rax                    # ref_a
                        mov              qword ptr [1879052296], rdx                    # ref_a
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 0                         # lit_string
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
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
                        lea              rdi, [rip + .Lrkfnzd15]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx14_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n7_save_restore_α
.Lx14_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
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
proc_LBL__ref_a_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ref_a_β:
                                                                                        jmp   proc_LBL__ref_a_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ref_a_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ref_a_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ref_a_α
proc_ref_a_α:
proc_ref_a_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n20_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n21_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n21_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx25_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx25_1
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "ref_a"
.Lx25_1:
                                                                                        jmp   proc_ref_a_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ref_a_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ref_a_β:
                                                                                        jmp   proc_ref_a_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ref_a_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_ref_a_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__ref_a"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__ref_a_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "ref_a"
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
                        lea              rsi, [rip + proc_ref_a_α]
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
.Lgvan0:                .string          "ref_a"
.Lgvan1:                .string          "a"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
#         DEFINE('ref_a()')                              :(ref_a_end)
#         a = 27
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n27_assign_α
.Lx59_0:
                        .quad            27
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]                       # lit_integer
                        mov              qword ptr [1879052304], rax                    # a
                        mov              qword ptr [1879052312], rdx                    # a
                        add              rsp, 16
                                                                                        jmp   n28_call_α
#=======================================================================================================================
#         a = 27
#         DIFFER(ref_a(), 27)                            :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # ref_a
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]                    # ref_a
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx62_0]                 # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx62_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_6]
                        lea              rdx, [rip + .Lx62_7]
                                                                                        jmp   rax
.Lx62_6:
                        mov              rdi, qword ptr [1879052288]                    # ref_a
                        mov              rsi, qword ptr [1879052296]                    # ref_a
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # ref_a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # ref_a
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx62_2
.Lx62_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # ref_a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # ref_a
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx62_2
.Lx62_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx62_0]                 # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx62_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx62_3]
                        lea              rdx, [rip + .Lx62_4]
                                                                                        jmp   rax
.Lx62_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx62_2
.Lx62_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx62_2
.Lx62_1:
                        call             rt_faildescr@PLT
.Lx62_2:
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx62_240
                        add              rsp, 16
                                                                                        jmp   n33_lit_string_α
.Lx62_240:
                                                                                        jmp   n29_lit_integer_α
n28_call_β:
                                                                                        jmp   n33_lit_string_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "ref_a"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n30_call_α
.Lx63_0:
                        .quad            27
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn65:               .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]                          # fn
                        lea              rsi, [rsp + 208]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx64_240
                        add              rsp, 16
                                                                                        jmp   n33_lit_string_α
.Lx64_240:
                        add              rsp, 16
                                                                                        jmp   n31_lit_string_α
n30_call_β:
                        add              rsp, 16
                                                                                        jmp   n33_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1013/001: nreturn read gives value' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 39                        # lit_string
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n32_assign_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "FAIL 1013/001: nreturn read gives value"
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx67_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         ref_a() = 26                                   :s(e002)
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 0                         # lit_string
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n34_call_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn70:               .string          "SNO$WANTNM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]                          # fn
                        lea              rsi, [rsp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx69_240
                        add              rsp, 128
                                                                                        jmp   n45_lit_string_α
.Lx69_240:
                                                                                        jmp   n35_call_α
n34_call_β:
                        add              rsp, 128
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # ref_a
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]                    # ref_a
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx72_0]                 # name
                        mov              esi, 0                                         # np
                        mov              edx, 0                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx72_5
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx72_6]
                        lea              rdx, [rip + .Lx72_7]
                                                                                        jmp   rax
.Lx72_6:
                        mov              rdi, qword ptr [1879052288]                    # ref_a
                        mov              rsi, qword ptr [1879052296]                    # ref_a
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # ref_a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # ref_a
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx72_2
.Lx72_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # ref_a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax                    # ref_a
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx72_2
.Lx72_5:
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx72_0]                 # name
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx72_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx72_3]
                        lea              rdx, [rip + .Lx72_4]
                                                                                        jmp   rax
.Lx72_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx72_2
.Lx72_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx72_2
.Lx72_1:
                        call             rt_faildescr@PLT
.Lx72_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx72_240
                        add              rsp, 128
                                                                                        jmp   n45_lit_string_α
.Lx72_240:
                                                                                        jmp   n36_lit_integer_α
n35_call_β:
                                                                                        jmp   n45_lit_string_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "ref_a"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rsp + 96], 6                        # lit_integer
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 104], rax                     # lit_integer
                                                                                        jmp   n37_assign_var_α
.Lx73_0:
                        .quad            26
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_var_α:
                        mov              rdi, qword ptr [rsp + 64]                      # var
                        mov              rsi, qword ptr [rsp + 72]                      # var
                        mov              rdx, qword ptr [rsp + 96]                      # val
                        mov              rcx, qword ptr [rsp + 104]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx74_240
                        add              rsp, 128
                                                                                        jmp   n45_lit_string_α
.Lx74_240:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        add              rsp, 128
                                                                                        jmp   n38_var_α
#=======================================================================================================================
#         DIFFER(a, 26)                                  :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # a
                        mov              rdx, qword ptr [1879052312]                    # a
                        mov              qword ptr [rsp + 0], rax                       # a
                        mov              qword ptr [rsp + 8], rdx                       # a
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n40_call_α
.Lx76_0:
                        .quad            26
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:
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
.Lrkfnzd78:             .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd78]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx77_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n43_lit_string_α
.Lx77_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 48
                                                                                        jmp   n41_lit_string_α
n40_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n43_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1013/003: a updated via nreturn'   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 36                        # lit_string
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n42_assign_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "FAIL 1013/003: a updated via nreturn"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx80_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 1013_func_nreturn (3/3)'
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 28                        # lit_string
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n44_assign_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "PASS 1013_func_nreturn (3/3)"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx82_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'FAIL 1013/002: nreturn lvalue assign failed' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 43                        # lit_string
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n46_assign_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "FAIL 1013/002: nreturn lvalue assign failed"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx84_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n47_goto_α:
                                                                                        jmp   n48_lit_string_α
n47_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ref_a   ref_a = .a                                     :(NRETURN)
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 1                         # lit_string
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n49_call_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd88:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd88]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx87_240
                        add              rsp, 16
                                                                                        jmp   n51_lit_string_α
.Lx87_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n50_assign_α
n49_call_β:
                        add              rsp, 16
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # call
                        mov              qword ptr [1879052288], rax                    # ref_a
                        mov              qword ptr [1879052296], rdx                    # ref_a
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 0                         # lit_string
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n52_call_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd92:             .string          "SNO$NRET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd92]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx91_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n54_save_restore_α
.Lx91_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n53_save_restore_α
n52_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n54_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n53_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n54_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_α:
                                                                                        jmp   n26_lit_integer_α
n55_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_goto_α:
                                                                                        jmp   n33_lit_string_α
n56_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_goto_α:
                                                                                        jmp   n38_var_α
n57_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_goto_α:
                                                                                        jmp   n43_lit_string_α
n58_goto_β:
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
