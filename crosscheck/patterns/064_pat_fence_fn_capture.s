                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "alnum"
.Lgvan1:                .string          "X"
.Lgvan2:                .string          "ID"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
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
#         alnum = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 63
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n3_lit_string_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # alnum
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n2_statement_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_statement_α:
                        add              rsp, 16
                                                                                        jmp   n3_lit_string_α
n2_statement_β:
                        add              rsp, 16
                                                                                        jmp   n3_lit_string_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_lit_integer_α
n3_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n7_lit_string_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_call_α
n4_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n7_lit_string_α
.Lx31_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:
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
.Lrkfnzd33:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd33]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx32_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n7_lit_string_α
.Lx32_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_statement_α
n5_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_α:
                        add              rsp, 48
                                                                                        jmp   n7_lit_string_α
n6_statement_β:
                        add              rsp, 48
                                                                                        jmp   n7_lit_string_α
#=======================================================================================================================
#         X = 'hello_world rest'
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
n7_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n10_var_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "hello_world rest"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # X
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n9_statement_α
n8_assign_β:
                        add              rsp, 16
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_α:
                        add              rsp, 16
                                                                                        jmp   n10_var_α
n9_statement_β:
                        add              rsp, 16
                                                                                        jmp   n10_var_α
#=======================================================================================================================
#         X  ANY(&UCASE &LCASE)  FENCE(SPAN(alnum) | '') . ID
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # X
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_var_α
n10_var_β:
                        add              rsp, 16
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # alnum
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_coerce_string_α
n11_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_string_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n13_match_begin_α
n12_coerce_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_begin_α:
                        sub              rsp, 400
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              rdi, qword ptr [rsp + 432]                     # var
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 384], rdi
                        mov              qword ptr [rsp + 392], rsi
                        mov              qword ptr [rsp + 208], r13                     # outer_Σ
                        mov              qword ptr [rsp + 216], r14                     # outer_δ
                        mov              qword ptr [rsp + 224], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 232], rax                     # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]                    # cas_top
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax                      # cas_patstk
                        add              r10, 24
                        mov              qword ptr [1879048192], r10                    # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx45_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n14_match_sequence_α
n13_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx45_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx45_1
                                                                                        jmp   .Lx45_0
.Lx45_1:
                        mov              r10, qword ptr [1879048192]
.Lx45_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx45_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 208]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 216]                     # outer_δ
                        mov              r15, qword ptr [rsp + 224]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 232]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 448
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_sequence_α:
                                                                                        jmp   n22_match_any_α
n14_match_sequence_as:
                                                                                        jmp   n15_match_end_α
n14_match_sequence_β:
                                                                                        jmp   n19_match_assign_cond_β
n14_match_sequence_af:
                                                                                        jmp   n13_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx49_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx49_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx49_1:
                        test             rax, rax
                                                                                        je    .Lx49_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4]
                                                                                        jmp   rax
.Lx49_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx49_1
.Lx49_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx49_1
.Lx49_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx49_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 208]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 216]                     # outer_δ
                        mov              r15, qword ptr [rsp + 224]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 232]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n16_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_α:
                        add              rsp, 448
                                                                                        jmp   n23_var_α
n16_statement_β:
                        add              rsp, 448
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n18_match_alternate_α
n17_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n22_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_alternate_α:
                        mov              dword ptr [rsp + 304], r14d
                        lea              rax, [rip + .Lx55_21]
                        mov              qword ptr [rsp + 320], rax
                                                                                        jmp   n21_match_span_α
.Lx55_21:
                        lea              rax, [rip + .Lx55_19]
                        mov              qword ptr [rsp + 320], rax
                                                                                        jmp   n20_match_lit_α
n18_match_alternate_s0:
                        lea              rax, [rip + .Lx55_40]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n18_match_alternate_as
n18_match_alternate_s1:
                        lea              rax, [rip + .Lx55_41]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n18_match_alternate_as
.Lx55_40:
                                                                                        jmp   n21_match_span_β
.Lx55_41:
                                                                                        jmp   n20_match_lit_β
n18_match_alternate_as:
                                                                                        jmp   n19_match_assign_cond_α
n18_match_alternate_β:
                        mov              rax, qword ptr [rsp + 312]
                                                                                        jmp   rax
n18_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 304]
                        mov              rax, qword ptr [rsp + 320]
                                                                                        jmp   rax
.Lx55_19:
                                                                                        jmp   n17_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n15_match_end_α
n19_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n18_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
                                                                                        jmp   n18_match_alternate_s1
n20_match_lit_β:
                                                                                        jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_span_α:
                        mov              dword ptr [rsp + 336], 0
                        mov              r8, qword ptr [rsp + 360]
                        mov              r9d, dword ptr [rsp + 356]
.Lx61_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 336]
                        cmp              eax, r15d
                                                                                        jge   .Lx61_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx61_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx61_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx61_3
                        add              edx, 1
                                                                                        jmp   .Lx61_2
.Lx61_3:
                        add              dword ptr [rsp + 336], 1
                                                                                        jmp   .Lx61_0
.Lx61_1:
                        mov              eax, dword ptr [rsp + 336]
                        test             eax, eax
                                                                                        jle   n18_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rsp + 340], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n18_match_alternate_s0
n21_match_span_β:
                        mov              r14d, dword ptr [rsp + 340]
                                                                                        jmp   n18_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n13_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n13_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n17_match_assign_save_α
n22_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_begin_β
#=======================================================================================================================
#         OUTPUT = ID
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # ID
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_assign_α
n23_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx65_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n25_statement_α
n24_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n25_statement_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
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
                        .section         .rodata
.S0:                    .string          "ID"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
