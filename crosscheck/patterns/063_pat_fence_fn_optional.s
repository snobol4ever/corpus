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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         digits = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # digits
                        mov              qword ptr [1879052296], rdx                    # digits
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_lit_integer_α
n2_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n5_lit_string_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_call_α
n3_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n5_lit_string_α
.Lx22_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:
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
.Lrkfnzd24:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd24]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx23_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n5_lit_string_α
.Lx23_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n5_lit_string_α
n4_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n5_lit_string_α
#=======================================================================================================================
#         X = '123abc'
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
n5_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n7_var_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "123abc"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # X
                        mov              qword ptr [1879052312], rdx                    # X
                        add              rsp, 16
                                                                                        jmp   n7_var_α
n6_assign_β:
                        add              rsp, 16
                                                                                        jmp   n7_var_α
#=======================================================================================================================
#         X  FENCE(SPAN(digits) | '') . N
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 0], 0
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
                        mov              rdx, qword ptr [1879052312]                    # X
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n8_var_α
n7_var_β:
                        add              rsp, 384
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [1879052288]                    # digits
                        mov              rdx, qword ptr [1879052296]                    # digits
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n9_coerce_string_α
n8_var_β:
                        add              rsp, 384
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_string_α:
                        lea              rdi, [rsp + 352]
                        lea              rsi, [rsp + 336]
                        mov              rdx, 12320956
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n10_match_head_α
n9_coerce_string_β:
                        add              rsp, 384
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_head_α:
                        mov              qword ptr [rsp + 208], r13                     # outer_Σ
                        mov              qword ptr [rsp + 216], r14                     # outer_δ
                        mov              qword ptr [rsp + 224], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 232], rax                     # cap_gen
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
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
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx32_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n11_match_assign_save_α
n10_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx32_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx32_1
                                                                                        jmp   .Lx32_0
.Lx32_1:
                        mov              r10, qword ptr [1879048192]
.Lx32_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx32_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 208]
                        mov              r14, qword ptr [rsp + 216]
                        mov              r15, qword ptr [rsp + 224]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 232]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 384
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n12_match_alternate_α
n11_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n10_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_alternate_α:
                        mov              dword ptr [rsp + 288], r14d
                        lea              rax, [rip + .Lx36_21]
                        mov              qword ptr [rsp + 304], rax
                                                                                        jmp   n16_match_span_α
.Lx36_21:
                        lea              rax, [rip + .Lx36_19]
                        mov              qword ptr [rsp + 304], rax
                                                                                        jmp   n15_match_lit_α
n12_match_alternate_s0:
                        lea              rax, [rip + .Lx36_40]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n12_match_alternate_as
n12_match_alternate_s1:
                        lea              rax, [rip + .Lx36_41]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n12_match_alternate_as
.Lx36_40:
                                                                                        jmp   n16_match_span_β
.Lx36_41:
                                                                                        jmp   n15_match_lit_β
n12_match_alternate_as:
                                                                                        jmp   n13_match_assign_cond_α
n12_match_alternate_β:
                        mov              rax, qword ptr [rsp + 296]
                                                                                        jmp   rax
n12_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 288]
                        mov              rax, qword ptr [rsp + 304]
                                                                                        jmp   rax
.Lx36_19:
                                                                                        jmp   n11_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_assign_cond_α:
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
                                                                                        jmp   n14_match_release_α
n13_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n12_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx40_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx40_9
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
.Lx40_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx40_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx40_1:
                        test             rax, rax
                                                                                        je    .Lx40_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx40_3]
                        lea              rdx, [rip + .Lx40_4]
                                                                                        jmp   rax
.Lx40_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx40_1
.Lx40_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx40_1
.Lx40_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx40_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx40_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 208]
                        mov              r14, qword ptr [rsp + 216]
                        mov              r15, qword ptr [rsp + 224]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 232]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 384
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:
                                                                                        jmp   n12_match_alternate_s1
n15_match_lit_β:
                                                                                        jmp   n12_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n16_match_span_α:
                        mov              dword ptr [rsp + 320], 0
                        mov              r8, qword ptr [rsp + 344]
                        mov              r9d, dword ptr [rsp + 340]
.Lx44_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 320]
                        cmp              eax, r15d
                                                                                        jge   .Lx44_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx44_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx44_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx44_3
                        add              edx, 1
                                                                                        jmp   .Lx44_2
.Lx44_3:
                        add              dword ptr [rsp + 320], 1
                                                                                        jmp   .Lx44_0
.Lx44_1:
                        mov              eax, dword ptr [rsp + 320]
                        test             eax, eax
                                                                                        jle   n12_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rsp + 324], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n12_match_alternate_s0
n16_match_span_β:
                        mov              r14d, dword ptr [rsp + 324]
                                                                                        jmp   n12_match_alternate_af
#=======================================================================================================================
#         OUTPUT = N
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # N
                        mov              rdx, qword ptr [1879052328]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_assign_α
n17_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx46_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n18_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "OUTPUT"
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
.S0:                    .string          "N"
                        .text
                        .section         .note.GNU-stack,"",@progbits
