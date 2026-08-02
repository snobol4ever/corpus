                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "S"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
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
#  S = DUPL('a',20000) 'b'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_lit_integer_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_var_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_call_α
n1_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_var_α
.Lx24_0:
                        .quad            20000
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
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
.Lrkfnzd26:             .string          "DUPL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd26]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx25_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n6_var_α
.Lx25_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n3_lit_string_α
n2_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_binop_α
n3_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n6_var_α
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_assign_α
n4_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # S
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 80
                                                                                        jmp   n6_var_α
n5_assign_β:
                        add              rsp, 80
                                                                                        jmp   n6_var_α
#=======================================================================================================================
#  S ? POS(0) ARBNO('a') 'b' RPOS(0)                            :S(Y)F(N)
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # S
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n7_match_head_α
n6_var_β:
                        add              rsp, 16
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_head_α:
                        sub              rsp, 352
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
                        mov              rdi, qword ptr [rsp + 352]                     # var
                        mov              rsi, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 200], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 208], r13                     # outer_Σ
                        mov              qword ptr [rbp + 216], r14                     # outer_δ
                        mov              qword ptr [rbp + 224], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 232], rax                     # cap_gen
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
.Lx32_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n8_match_sequence_α
n7_match_head_β:
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
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 208]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 216]                     # outer_δ
                        mov              r15, qword ptr [rbp + 224]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 232]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 200]                     # old_rbp
                        add              rsp, 368
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_sequence_α:
                                                                                        jmp   n17_lit_integer_α
n8_match_sequence_as:
                                                                                        jmp   n9_match_release_α
n8_match_sequence_β:
                                                                                        jmp   n13_match_rpos_β
n8_match_sequence_af:
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx36_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_8
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
.Lx36_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx36_1:
                        test             rax, rax
                                                                                        je    .Lx36_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx36_3]
                        lea              rdx, [rip + .Lx36_4]
                                                                                        jmp   rax
.Lx36_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx36_1
.Lx36_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx36_1
.Lx36_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx36_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx36_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 208]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 216]                     # outer_δ
                        mov              r15, qword ptr [rbp + 224]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 232]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 200]                     # old_rbp
                        add              rsp, 368
                                                                                        jmp   n10_lit_string_α
#=======================================================================================================================
# Y OUTPUT = 'depth-ok'                                         :(END)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "depth-ok"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx38_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n11_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rsp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n13_match_rpos_α
n12_lit_integer_β:
                                                                                        jmp   n14_match_lit_β
.Lx39_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n14_match_lit_β
                                                                                        jmp   n9_match_release_α
n13_match_rpos_β:
                                                                                        jmp   n14_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n15_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n12_lit_integer_α
n14_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_arbno_α:
                        sub              rsp, 400
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rax
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rax
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rax
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rax
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rax
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rax
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rax
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rax
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rax
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rax
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rax
                        mov              dword ptr [rsp + 368], r14d
                        mov              dword ptr [rsp + 372], r14d
                        mov              dword ptr [rsp + 376], 1
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n14_match_lit_α
n15_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 372]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        sub              rsp, 400
                        mov              edx, 0
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], rdx
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rdx
                        mov              qword ptr [rsp + 48], rdx
                        mov              qword ptr [rsp + 56], rdx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rdx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rdx
                        mov              qword ptr [rsp + 96], rdx
                        mov              qword ptr [rsp + 104], rdx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rdx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rdx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rdx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rdx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rdx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rdx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rdx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rdx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rdx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rdx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rdx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rdx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rdx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rdx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rdx
                        mov              qword ptr [rsp + 352], rdx
                        mov              qword ptr [rsp + 360], rdx
                        mov              dword ptr [rsp + 368], r14d
                        mov              dword ptr [rsp + 372], r14d
                        mov              dword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rcx
                                                                                        jmp   n16_match_lit_α
n15_match_arbno_as:
                        mov              eax, dword ptr [rsp + 368]
                        cmp              r14d, eax
                                                                                        je    n16_match_lit_β
                        mov              dword ptr [rsp + 372], r14d
                                                                                        jmp   n14_match_lit_α
n15_match_arbno_af:
                        mov              eax, dword ptr [rsp + 376]
                        test             eax, eax
                                                                                        jnz   .Lx44_2
                        add              rsp, 400
                                                                                        jmp   n16_match_lit_β
.Lx44_2:
                        mov              r14d, dword ptr [rsp + 368]
                        add              rsp, 400
                                                                                        jmp   n18_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n15_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n15_match_arbno_as
n16_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rsp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n18_match_pos_α
n17_lit_integer_β:
                                                                                        jmp   n7_match_head_β
.Lx47_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n18_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n7_match_head_β
                                                                                        jmp   n15_match_arbno_α
n18_match_pos_β:
                                                                                        jmp   n7_match_head_β
#=======================================================================================================================
# N OUTPUT = 'depth-fail'
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
n19_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "depth-fail"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx50_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n20_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_goto_α:
                                                                                        jmp   n10_lit_string_α
n21_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_goto_α:
                                                                                        jmp   n19_lit_string_α
n22_goto_β:
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
