                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "digits"
.Lgvan1:                .string          "X"
.Lgvan2:                .string          "N"
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
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         digits = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n3_lit_string_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # digits
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
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_lit_integer_α
n3_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n7_lit_string_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_call_α
n4_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n7_lit_string_α
.Lx29_0:
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
.Lrkfnzd31:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd31]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx30_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n7_lit_string_α
.Lx30_240:
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
#         X = '123abc'
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
n7_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n10_var_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "123abc"
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
#         X  FENCE(SPAN(digits) | '') . N
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        sub              rsp, 384
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
                        mov              rax, qword ptr [1879052304]                    # X
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 368], rax                     # result
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n11_var_α
n10_var_β:
                        add              rsp, 384
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [1879052288]                    # digits
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 352], rax                     # result
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n12_coerce_string_α
n11_var_β:
                        add              rsp, 384
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_string_α:
                        lea              rdi, [rsp + 352]                               # in
                        lea              rsi, [rsp + 336]                               # out
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n13_match_begin_α
n12_coerce_string_β:
                        add              rsp, 384
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_begin_α:
                        mov              qword ptr [rsp + 208], r13                     # outer_Σ
                        mov              qword ptr [rsp + 216], r14                     # outer_δ
                        mov              qword ptr [rsp + 224], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 232], rax                     # cap_gen
                        mov              rdi, qword ptr [rsp + 368]                     # lo
                        mov              rsi, qword ptr [rsp + 376]                     # hi
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
.Lx43_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n14_match_assign_save_α
n13_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx43_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx43_1
                                                                                        jmp   .Lx43_0
.Lx43_1:
                        mov              r10, qword ptr [1879048192]
.Lx43_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx43_2
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
                        add              rsp, 384
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n15_match_alternate_α
n14_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n13_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_alternate_α:
                        mov              dword ptr [rsp + 288], r14d
                        lea              rax, [rip + .Lx47_21]
                        mov              qword ptr [rsp + 304], rax
                                                                                        jmp   n20_match_span_α
.Lx47_21:
                        lea              rax, [rip + .Lx47_19]
                        mov              qword ptr [rsp + 304], rax
                                                                                        jmp   n19_match_lit_α
n15_match_alternate_s0:
                        lea              rax, [rip + .Lx47_40]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n15_match_alternate_as
n15_match_alternate_s1:
                        lea              rax, [rip + .Lx47_41]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n15_match_alternate_as
.Lx47_40:
                                                                                        jmp   n20_match_span_β
.Lx47_41:
                                                                                        jmp   n19_match_lit_β
n15_match_alternate_as:
                                                                                        jmp   n16_match_assign_cond_α
n15_match_alternate_β:
                        mov              rax, qword ptr [rsp + 296]
                                                                                        jmp   rax
n15_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 288]
                        mov              rax, qword ptr [rsp + 304]
                                                                                        jmp   rax
.Lx47_19:
                                                                                        jmp   n14_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_cond_α:
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
                                                                                        jmp   n17_match_end_α
n16_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n15_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx51_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx51_9
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
.Lx51_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx51_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx51_1:
                        test             rax, rax
                                                                                        je    .Lx51_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx51_3]
                        lea              rdx, [rip + .Lx51_4]
                                                                                        jmp   rax
.Lx51_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx51_1
.Lx51_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx51_1
.Lx51_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx51_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx51_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 208]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 216]                     # outer_δ
                        mov              r15, qword ptr [rsp + 224]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 232]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n18_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_α:
                        add              rsp, 384
                                                                                        jmp   n21_var_α
n18_statement_β:
                        add              rsp, 384
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_match_lit_α:
                                                                                        jmp   n15_match_alternate_s1
n19_match_lit_β:
                                                                                        jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n20_match_span_α:
                        mov              dword ptr [rsp + 320], 0
                        mov              r8, qword ptr [rsp + 344]
                        mov              r9d, dword ptr [rsp + 340]
.Lx57_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 320]
                        cmp              eax, r15d
                                                                                        jge   .Lx57_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx57_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx57_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx57_3
                        add              edx, 1
                                                                                        jmp   .Lx57_2
.Lx57_3:
                        add              dword ptr [rsp + 320], 1
                                                                                        jmp   .Lx57_0
.Lx57_1:
                        mov              eax, dword ptr [rsp + 320]
                        test             eax, eax
                                                                                        jle   n15_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rsp + 324], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n15_match_alternate_s0
n20_match_span_β:
                        mov              r14d, dword ptr [rsp + 324]
                                                                                        jmp   n15_match_alternate_af
#=======================================================================================================================
#         OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # N
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_assign_α
n21_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx59_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n23_statement_α
n22_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n23_statement_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "N"
                        .text
                        .section         .note.GNU-stack,"",@progbits
