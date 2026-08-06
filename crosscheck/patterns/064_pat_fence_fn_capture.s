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
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         alnum = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 63
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # alnum
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
n2_assign_β:
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
n3_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 1
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_string_α
n4_statement_begin_β:
                                                                                        jmp   n9_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_lit_integer_α
n5_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n9_statement_begin_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_call_α
n6_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n9_statement_begin_α
.Lx39_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:
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
.Lrkfnzd41:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd41]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx40_240
                        add              rsp, 16
                                                                                        jmp   n6_lit_integer_β
.Lx40_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n8_statement_end_α
n7_call_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n9_statement_begin_α
n8_statement_end_β:
                        add              rsp, 48
                                                                                        jmp   n9_statement_begin_α
#=======================================================================================================================
#         X = 'hello_world rest'
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:
                                                                                        jmp   n10_lit_string_α
n9_statement_begin_β:
                                                                                        jmp   n13_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n13_statement_begin_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "hello_world rest"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # X
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n12_statement_end_α
n11_assign_β:
                                                                                        jmp   n12_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n13_statement_begin_α
n12_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n13_statement_begin_α
#=======================================================================================================================
#         X  ANY(&UCASE &LCASE)  FENCE(SPAN(alnum) | '') . ID
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:
                                                                                        jmp   n14_var_α
n13_statement_begin_β:
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
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
                                                                                        jmp   n15_var_α
n14_var_β:
                        add              rsp, 384
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [1879052288]                    # alnum
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 352], rax                     # result
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n16_coerce_string_α
n15_var_β:
                        add              rsp, 384
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_string_α:
                        lea              rdi, [rsp + 352]                               # in
                        lea              rsi, [rsp + 336]                               # out
                        mov              rdx, 12320956                                  # codes
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n17_match_begin_α
n16_coerce_string_β:
                        add              rsp, 384
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_match_begin_α:
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
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx57_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n18_match_any_α
n17_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx57_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx57_1
                                                                                        jmp   .Lx57_0
.Lx57_1:
.Lx57_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_2
                        mov              rax, qword ptr [r12 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rsp + 208]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 216]                     # outer_δ
                        mov              r15, qword ptr [rsp + 224]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 232]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 384
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n17_match_begin_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n17_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n19_match_assign_save_α
n18_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n20_match_alternate_α
n19_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n18_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_alternate_α:
                        mov              dword ptr [rsp + 288], r14d
                        lea              rax, [rip + .Lx63_21]
                        mov              qword ptr [rsp + 304], rax
                                                                                        jmp   n25_match_span_α
.Lx63_21:
                        lea              rax, [rip + .Lx63_19]
                        mov              qword ptr [rsp + 304], rax
                                                                                        jmp   n24_match_lit_α
n20_match_alternate_s0:
                        lea              rax, [rip + .Lx63_40]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n20_match_alternate_as
n20_match_alternate_s1:
                        lea              rax, [rip + .Lx63_41]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n20_match_alternate_as
.Lx63_40:
                                                                                        jmp   n25_match_span_β
.Lx63_41:
                                                                                        jmp   n24_match_lit_β
n20_match_alternate_as:
                                                                                        jmp   n21_match_assign_cond_α
n20_match_alternate_β:
                        mov              rax, qword ptr [rsp + 296]
                                                                                        jmp   rax
n20_match_alternate_af:
                        mov              r14d, dword ptr [rsp + 288]
                        mov              rax, qword ptr [rsp + 304]
                                                                                        jmp   rax
.Lx63_19:
                                                                                        jmp   n19_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n22_match_end_α
n21_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n20_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_end_α:
                        mov              r10, r12
.Lx67_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx67_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx67_1:
                        test             rax, rax
                                                                                        je    .Lx67_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx67_3]
                        lea              rdx, [rip + .Lx67_4]
                                                                                        jmp   rax
.Lx67_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx67_1
.Lx67_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx67_1
.Lx67_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx67_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_6
                        mov              r13, qword ptr [rsp + 208]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 216]                     # outer_δ
                        mov              r15, qword ptr [rsp + 224]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 232]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                        add              rsp, 384
                                                                                        jmp   n26_statement_begin_α
n23_statement_end_β:
                        add              rsp, 384
                                                                                        jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_match_lit_α:
                                                                                        jmp   n20_match_alternate_s1
n24_match_lit_β:
                                                                                        jmp   n20_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_span_α:
                        mov              dword ptr [rsp + 320], 0
                        mov              r8, qword ptr [rsp + 344]
                        mov              r9d, dword ptr [rsp + 340]
.Lx73_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 320]
                        cmp              eax, r15d
                                                                                        jge   .Lx73_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx73_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx73_1
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx73_3
                        add              edx, 1
                                                                                        jmp   .Lx73_2
.Lx73_3:
                        add              dword ptr [rsp + 320], 1
                                                                                        jmp   .Lx73_0
.Lx73_1:
                        mov              eax, dword ptr [rsp + 320]
                        test             eax, eax
                                                                                        jle   n20_match_alternate_af
                        mov              edx, r14d
                        mov              dword ptr [rsp + 324], edx
                        add              edx, eax
                        mov              r14d, edx
                                                                                        jmp   n20_match_alternate_s0
n25_match_span_β:
                        mov              r14d, dword ptr [rsp + 324]
                                                                                        jmp   n20_match_alternate_af
#=======================================================================================================================
#         OUTPUT = ID
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:
                                                                                        jmp   n27_var_α
n26_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # ID
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_assign_α
n27_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx77_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n29_statement_end_α
n28_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n29_statement_end_β:
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
