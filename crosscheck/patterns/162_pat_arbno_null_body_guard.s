                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 888
                        mov              rdi, rsp
                        mov              ecx, 888
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 880], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#  'B' ? POS(0) ARBNO('') 'B' RPOS(0)                           :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n9_match_head_α
n0_lit_string_β:
                                                                                        jmp   n11_lit_string_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "B"
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n10_lit_string_α
n1_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n11_lit_string_α
n2_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:
                                                                                        jmp   n12_lit_string_α
n3_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_goto_α:
                                                                                        jmp   n13_lit_string_α
n4_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_goto_α:
                                                                                        jmp   n14_lit_string_α
n5_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_goto_α:
                                                                                        jmp   n15_lit_string_α
n6_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_goto_α:
                                                                                        jmp   n16_lit_string_α
n7_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_goto_α:
                                                                                        jmp   n17_lit_string_α
n8_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_match_head_α:
                        mov              qword ptr [rbp + 64], r13
                        mov              qword ptr [rbp + 72], r14
                        mov              qword ptr [rbp + 80], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 56], rbp
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx67_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n18_match_sequence_α
n9_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx67_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx67_1
                                                                                        jmp   .Lx67_0
.Lx67_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx67_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                                                                                        jmp   n11_lit_string_α
#=======================================================================================================================
# A1 OUTPUT = '1:null-body-ok'                                  :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "1:null-body-ok"
#=======================================================================================================================
# B1 OUTPUT = '1:null-body-fail'
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_assign_α
n11_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "1:null-body-fail"
#=======================================================================================================================
# T2 'AB' ? POS(0) ARBNO('' | 'A') 'B' RPOS(0)                  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n21_match_head_α
n12_lit_string_β:
                                                                                        jmp   n14_lit_string_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "AB"
#=======================================================================================================================
# A2 OUTPUT = '2:nullable-first-ok'                             :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
n13_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n15_lit_string_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "2:nullable-first-ok"
#=======================================================================================================================
# B2 OUTPUT = '2:nullable-first-fail'
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_assign_α
n14_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n15_lit_string_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "2:nullable-first-fail"
#=======================================================================================================================
# T3 'AB' ? POS(0) ARBNO('A' | '') 'B' RPOS(0)                  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n24_match_head_α
n15_lit_string_β:
                                                                                        jmp   n17_lit_string_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "AB"
#=======================================================================================================================
# A3 OUTPUT = '3:nullable-second-ok'                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
n16_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "3:nullable-second-ok"
#=======================================================================================================================
# B3 OUTPUT = '3:nullable-second-fail'
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_assign_α
n17_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "3:nullable-second-fail"
#-----------------------------------------------------------------------------------------------------------------------
n18_match_sequence_α:
                                                                                        jmp   n28_lit_integer_α
n18_match_sequence_as:
                                                                                        jmp   n27_match_release_α
n18_match_sequence_β:
                                                                                        jmp   n33_match_rpos_β
n18_match_sequence_af:
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx78_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n12_lit_string_α
n19_assign_β:
                                                                                        jmp   n12_lit_string_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx79_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n12_lit_string_α
n20_assign_β:
                                                                                        jmp   n12_lit_string_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_match_head_α:
                        mov              qword ptr [rbp + 336], r13
                        mov              qword ptr [rbp + 344], r14
                        mov              qword ptr [rbp + 352], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 360], rax
                        mov              qword ptr [rbp + 328], rbp
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx81_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n34_match_sequence_α
n21_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx81_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx81_1
                                                                                        jmp   .Lx81_0
.Lx81_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx81_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx81_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx82_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_lit_string_α
n22_assign_β:
                                                                                        jmp   n15_lit_string_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx83_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_lit_string_α
n23_assign_β:
                                                                                        jmp   n15_lit_string_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_match_head_α:
                        mov              qword ptr [rbp + 640], r13
                        mov              qword ptr [rbp + 648], r14
                        mov              qword ptr [rbp + 656], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 664], rax
                        mov              qword ptr [rbp + 632], rbp
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx85_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n35_match_sequence_α
n24_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx85_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx85_1
                                                                                        jmp   .Lx85_0
.Lx85_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx85_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx85_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 640]
                        mov              r14, qword ptr [rbp + 648]
                        mov              r15, qword ptr [rbp + 656]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 632]
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx86_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n25_assign_β:
                                                                                        jmp   main_γ
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx87_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n26_assign_β:
                                                                                        jmp   main_γ
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n27_match_release_α:
                        mov              rax, qword ptr [rsp + 144]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 152]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx89_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx89_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx89_1:
                        test             rax, rax
                                                                                        je    .Lx89_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx89_3]
                        lea              rdx, [rip + .Lx89_4]
                                                                                        jmp   rax
.Lx89_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx89_1
.Lx89_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx89_1
.Lx89_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx89_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx89_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n29_match_pos_α
n28_lit_integer_β:
                                                                                        jmp   n9_match_head_β
.Lx90_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n9_match_head_β
                                                                                        jmp   n30_match_arbno_α
n29_match_pos_β:
                                                                                        jmp   n9_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_arbno_α:
                        sub              rsp, 160
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
                        mov              dword ptr [rsp + 128], r14d
                        mov              dword ptr [rsp + 132], r14d
                        mov              dword ptr [rsp + 136], 1
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n31_match_lit_α
n30_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 132]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        sub              rsp, 160
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
                        mov              dword ptr [rsp + 128], r14d
                        mov              dword ptr [rsp + 132], r14d
                        mov              dword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rcx
                                                                                        jmp   n36_match_lit_α
n30_match_arbno_as:
                        mov              eax, dword ptr [rsp + 128]
                        cmp              r14d, eax
                                                                                        je    n36_match_lit_β
                        mov              dword ptr [rsp + 132], r14d
                                                                                        jmp   n31_match_lit_α
n30_match_arbno_af:
                        mov              eax, dword ptr [rsp + 136]
                        test             eax, eax
                                                                                        jnz   .Lx93_2
                        add              rsp, 160
                                                                                        jmp   n36_match_lit_β
.Lx93_2:
                        mov              r14d, dword ptr [rsp + 128]
                        add              rsp, 160
                                                                                        jmp   n29_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n30_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n30_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n32_lit_integer_α
n31_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n30_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n33_match_rpos_α
n32_lit_integer_β:
                                                                                        jmp   n31_match_lit_β
.Lx96_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n33_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n31_match_lit_β
                                                                                        jmp   n27_match_release_α
n33_match_rpos_β:
                                                                                        jmp   n31_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_sequence_α:
                                                                                        jmp   n38_lit_integer_α
n34_match_sequence_as:
                                                                                        jmp   n37_match_release_α
n34_match_sequence_β:
                                                                                        jmp   n43_match_rpos_β
n34_match_sequence_af:
                                                                                        jmp   n21_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_sequence_α:
                                                                                        jmp   n45_lit_integer_α
n35_match_sequence_as:
                                                                                        jmp   n44_match_release_α
n35_match_sequence_β:
                                                                                        jmp   n50_match_rpos_β
n35_match_sequence_af:
                                                                                        jmp   n24_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                                                                                        jmp   n30_match_arbno_as
n36_match_lit_β:
                                                                                        jmp   n30_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n37_match_release_α:
                        mov              rax, qword ptr [rsp + 832]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 840]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx105_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx105_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx105_1:
                        test             rax, rax
                                                                                        je    .Lx105_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx105_3]
                        lea              rdx, [rip + .Lx105_4]
                                                                                        jmp   rax
.Lx105_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx105_1
.Lx105_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx105_1
.Lx105_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx105_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx105_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n39_match_pos_α
n38_lit_integer_β:
                                                                                        jmp   n21_match_head_β
.Lx106_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n39_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n21_match_head_β
                                                                                        jmp   n40_match_arbno_α
n39_match_pos_β:
                                                                                        jmp   n21_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_arbno_α:
                        sub              rsp, 848
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
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rax
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rax
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rax
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rax
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rax
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rax
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rax
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rax
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rax
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rax
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rax
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rax
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rax
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rax
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rax
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rax
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rax
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rax
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rax
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rax
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rax
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rax
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rax
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rax
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rax
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rax
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rax
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rax
                        mov              dword ptr [rsp + 816], r14d
                        mov              dword ptr [rsp + 820], r14d
                        mov              dword ptr [rsp + 824], 1
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n41_match_lit_α
n40_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 820]
                        mov              rax, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        sub              rsp, 848
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
                        mov              qword ptr [rsp + 368], rdx
                        mov              qword ptr [rsp + 376], rdx
                        mov              qword ptr [rsp + 384], rdx
                        mov              qword ptr [rsp + 392], rdx
                        mov              qword ptr [rsp + 400], rdx
                        mov              qword ptr [rsp + 408], rdx
                        mov              qword ptr [rsp + 416], rdx
                        mov              qword ptr [rsp + 424], rdx
                        mov              qword ptr [rsp + 432], rdx
                        mov              qword ptr [rsp + 440], rdx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rdx
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rdx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rdx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rdx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rdx
                        mov              qword ptr [rsp + 528], rdx
                        mov              qword ptr [rsp + 536], rdx
                        mov              qword ptr [rsp + 544], rdx
                        mov              qword ptr [rsp + 552], rdx
                        mov              qword ptr [rsp + 560], rdx
                        mov              qword ptr [rsp + 568], rdx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rdx
                        mov              qword ptr [rsp + 592], rdx
                        mov              qword ptr [rsp + 600], rdx
                        mov              qword ptr [rsp + 608], rdx
                        mov              qword ptr [rsp + 616], rdx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rdx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rdx
                        mov              qword ptr [rsp + 656], rdx
                        mov              qword ptr [rsp + 664], rdx
                        mov              qword ptr [rsp + 672], rdx
                        mov              qword ptr [rsp + 680], rdx
                        mov              qword ptr [rsp + 688], rdx
                        mov              qword ptr [rsp + 696], rdx
                        mov              qword ptr [rsp + 704], rdx
                        mov              qword ptr [rsp + 712], rdx
                        mov              qword ptr [rsp + 720], rdx
                        mov              qword ptr [rsp + 728], rdx
                        mov              qword ptr [rsp + 736], rdx
                        mov              qword ptr [rsp + 744], rdx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rdx
                        mov              qword ptr [rsp + 768], rdx
                        mov              qword ptr [rsp + 776], rdx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rdx
                        mov              qword ptr [rsp + 800], rdx
                        mov              qword ptr [rsp + 808], rdx
                        mov              dword ptr [rsp + 816], r14d
                        mov              dword ptr [rsp + 820], r14d
                        mov              dword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rcx
                                                                                        jmp   n51_match_alternate_α
n40_match_arbno_as:
                        mov              eax, dword ptr [rsp + 816]
                        cmp              r14d, eax
                                                                                        je    n51_match_alternate_β
                        mov              dword ptr [rsp + 820], r14d
                                                                                        jmp   n41_match_lit_α
n40_match_arbno_af:
                        mov              eax, dword ptr [rsp + 824]
                        test             eax, eax
                                                                                        jnz   .Lx109_2
                        add              rsp, 848
                                                                                        jmp   n51_match_alternate_β
.Lx109_2:
                        mov              r14d, dword ptr [rsp + 816]
                        add              rsp, 848
                                                                                        jmp   n39_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n41_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n40_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n40_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n42_lit_integer_α
n41_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n40_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n43_match_rpos_α
n42_lit_integer_β:
                                                                                        jmp   n41_match_lit_β
.Lx112_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n43_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n41_match_lit_β
                                                                                        jmp   n37_match_release_α
n43_match_rpos_β:
                                                                                        jmp   n41_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_release_α:
                        mov              rax, qword ptr [rsp + 1440]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 1448]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx115_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx115_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx115_1:
                        test             rax, rax
                                                                                        je    .Lx115_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx115_3]
                        lea              rdx, [rip + .Lx115_4]
                                                                                        jmp   rax
.Lx115_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx115_1
.Lx115_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx115_1
.Lx115_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx115_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx115_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 640]
                        mov              r14, qword ptr [rbp + 648]
                        mov              r15, qword ptr [rbp + 656]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 632]
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n46_match_pos_α
n45_lit_integer_β:
                                                                                        jmp   n24_match_head_β
.Lx116_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n46_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n24_match_head_β
                                                                                        jmp   n47_match_arbno_α
n46_match_pos_β:
                                                                                        jmp   n24_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_arbno_α:
                        sub              rsp, 1456
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
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rax
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rax
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rax
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rax
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rax
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rax
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rax
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rax
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rax
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rax
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rax
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rax
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rax
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rax
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rax
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rax
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rax
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rax
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rax
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rax
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rax
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rax
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rax
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rax
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rax
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rax
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rax
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rax
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rax
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rax
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rax
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rax
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rax
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rax
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rax
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rax
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rax
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rax
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rax
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rax
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rax
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rax
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rax
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rax
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rax
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rax
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rax
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rax
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rax
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rax
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rax
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rax
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rax
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rax
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rax
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rax
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rax
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rax
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rax
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rax
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rax
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rax
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rax
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rax
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rax
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rax
                        mov              dword ptr [rsp + 1424], r14d
                        mov              dword ptr [rsp + 1428], r14d
                        mov              dword ptr [rsp + 1432], 1
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n48_match_lit_α
n47_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 1428]
                        mov              rax, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        sub              rsp, 1456
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
                        mov              qword ptr [rsp + 368], rdx
                        mov              qword ptr [rsp + 376], rdx
                        mov              qword ptr [rsp + 384], rdx
                        mov              qword ptr [rsp + 392], rdx
                        mov              qword ptr [rsp + 400], rdx
                        mov              qword ptr [rsp + 408], rdx
                        mov              qword ptr [rsp + 416], rdx
                        mov              qword ptr [rsp + 424], rdx
                        mov              qword ptr [rsp + 432], rdx
                        mov              qword ptr [rsp + 440], rdx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rdx
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rdx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rdx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rdx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rdx
                        mov              qword ptr [rsp + 528], rdx
                        mov              qword ptr [rsp + 536], rdx
                        mov              qword ptr [rsp + 544], rdx
                        mov              qword ptr [rsp + 552], rdx
                        mov              qword ptr [rsp + 560], rdx
                        mov              qword ptr [rsp + 568], rdx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rdx
                        mov              qword ptr [rsp + 592], rdx
                        mov              qword ptr [rsp + 600], rdx
                        mov              qword ptr [rsp + 608], rdx
                        mov              qword ptr [rsp + 616], rdx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rdx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rdx
                        mov              qword ptr [rsp + 656], rdx
                        mov              qword ptr [rsp + 664], rdx
                        mov              qword ptr [rsp + 672], rdx
                        mov              qword ptr [rsp + 680], rdx
                        mov              qword ptr [rsp + 688], rdx
                        mov              qword ptr [rsp + 696], rdx
                        mov              qword ptr [rsp + 704], rdx
                        mov              qword ptr [rsp + 712], rdx
                        mov              qword ptr [rsp + 720], rdx
                        mov              qword ptr [rsp + 728], rdx
                        mov              qword ptr [rsp + 736], rdx
                        mov              qword ptr [rsp + 744], rdx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rdx
                        mov              qword ptr [rsp + 768], rdx
                        mov              qword ptr [rsp + 776], rdx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rdx
                        mov              qword ptr [rsp + 800], rdx
                        mov              qword ptr [rsp + 808], rdx
                        mov              qword ptr [rsp + 816], rdx
                        mov              qword ptr [rsp + 824], rdx
                        mov              qword ptr [rsp + 832], rdx
                        mov              qword ptr [rsp + 840], rdx
                        mov              qword ptr [rsp + 848], rdx
                        mov              qword ptr [rsp + 856], rdx
                        mov              qword ptr [rsp + 864], rdx
                        mov              qword ptr [rsp + 872], rdx
                        mov              qword ptr [rsp + 880], rdx
                        mov              qword ptr [rsp + 888], rdx
                        mov              qword ptr [rsp + 896], rdx
                        mov              qword ptr [rsp + 904], rdx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rdx
                        mov              qword ptr [rsp + 928], rdx
                        mov              qword ptr [rsp + 936], rdx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rdx
                        mov              qword ptr [rsp + 960], rdx
                        mov              qword ptr [rsp + 968], rdx
                        mov              qword ptr [rsp + 976], rdx
                        mov              qword ptr [rsp + 984], rdx
                        mov              qword ptr [rsp + 992], rdx
                        mov              qword ptr [rsp + 1000], rdx
                        mov              qword ptr [rsp + 1008], rdx
                        mov              qword ptr [rsp + 1016], rdx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              qword ptr [rsp + 1032], rdx
                        mov              qword ptr [rsp + 1040], rdx
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 1056], rdx
                        mov              qword ptr [rsp + 1064], rdx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rdx
                        mov              qword ptr [rsp + 1088], rdx
                        mov              qword ptr [rsp + 1096], rdx
                        mov              qword ptr [rsp + 1104], rdx
                        mov              qword ptr [rsp + 1112], rdx
                        mov              qword ptr [rsp + 1120], rdx
                        mov              qword ptr [rsp + 1128], rdx
                        mov              qword ptr [rsp + 1136], rdx
                        mov              qword ptr [rsp + 1144], rdx
                        mov              qword ptr [rsp + 1152], rdx
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 1168], rdx
                        mov              qword ptr [rsp + 1176], rdx
                        mov              qword ptr [rsp + 1184], rdx
                        mov              qword ptr [rsp + 1192], rdx
                        mov              qword ptr [rsp + 1200], rdx
                        mov              qword ptr [rsp + 1208], rdx
                        mov              qword ptr [rsp + 1216], rdx
                        mov              qword ptr [rsp + 1224], rdx
                        mov              qword ptr [rsp + 1232], rdx
                        mov              qword ptr [rsp + 1240], rdx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              qword ptr [rsp + 1256], rdx
                        mov              qword ptr [rsp + 1264], rdx
                        mov              qword ptr [rsp + 1272], rdx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rdx
                        mov              qword ptr [rsp + 1296], rdx
                        mov              qword ptr [rsp + 1304], rdx
                        mov              qword ptr [rsp + 1312], rdx
                        mov              qword ptr [rsp + 1320], rdx
                        mov              qword ptr [rsp + 1328], rdx
                        mov              qword ptr [rsp + 1336], rdx
                        mov              qword ptr [rsp + 1344], rdx
                        mov              qword ptr [rsp + 1352], rdx
                        mov              qword ptr [rsp + 1360], rdx
                        mov              qword ptr [rsp + 1368], rdx
                        mov              qword ptr [rsp + 1376], rdx
                        mov              qword ptr [rsp + 1384], rdx
                        mov              qword ptr [rsp + 1392], rdx
                        mov              qword ptr [rsp + 1400], rdx
                        mov              qword ptr [rsp + 1408], rdx
                        mov              qword ptr [rsp + 1416], rdx
                        mov              dword ptr [rsp + 1424], r14d
                        mov              dword ptr [rsp + 1428], r14d
                        mov              dword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rcx
                                                                                        jmp   n53_match_alternate_α
n47_match_arbno_as:
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              r14d, eax
                                                                                        je    n53_match_alternate_β
                        mov              dword ptr [rsp + 1428], r14d
                                                                                        jmp   n48_match_lit_α
n47_match_arbno_af:
                        mov              eax, dword ptr [rsp + 1432]
                        test             eax, eax
                                                                                        jnz   .Lx119_2
                        add              rsp, 1456
                                                                                        jmp   n53_match_alternate_β
.Lx119_2:
                        mov              r14d, dword ptr [rsp + 1424]
                        add              rsp, 1456
                                                                                        jmp   n46_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n48_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n47_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n47_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n49_lit_integer_α
n48_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n47_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n50_match_rpos_α
n49_lit_integer_β:
                                                                                        jmp   n48_match_lit_β
.Lx122_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n50_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n48_match_lit_β
                                                                                        jmp   n44_match_release_α
n50_match_rpos_β:
                                                                                        jmp   n48_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n51_match_alternate_α:
                        mov              dword ptr [rbp + 464], r14d
                        lea              rax, [rip + .Lx125_21]
                        mov              qword ptr [rbp + 480], rax
                                                                                        jmp   n55_match_lit_α
.Lx125_21:
                        lea              rax, [rip + .Lx125_19]
                        mov              qword ptr [rbp + 480], rax
                                                                                        jmp   n52_match_lit_α
n51_match_alternate_s0:
                        lea              rax, [rip + .Lx125_40]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n51_match_alternate_as
n51_match_alternate_s1:
                        lea              rax, [rip + .Lx125_41]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n51_match_alternate_as
.Lx125_40:
                                                                                        jmp   n55_match_lit_β
.Lx125_41:
                                                                                        jmp   n52_match_lit_β
n51_match_alternate_as:
                                                                                        jmp   n40_match_arbno_as
n51_match_alternate_β:
                        mov              rax, qword ptr [rbp + 472]
                                                                                        jmp   rax
n51_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 464]
                        mov              rax, qword ptr [rbp + 480]
                                                                                        jmp   rax
.Lx125_19:
                                                                                        jmp   n40_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n52_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n51_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n51_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n51_match_alternate_s1
n52_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n51_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n53_match_alternate_α:
                        mov              dword ptr [rbp + 768], r14d
                        lea              rax, [rip + .Lx129_21]
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   n56_match_lit_α
.Lx129_21:
                        lea              rax, [rip + .Lx129_19]
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   n54_match_lit_α
n53_match_alternate_s0:
                        lea              rax, [rip + .Lx129_40]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n53_match_alternate_as
n53_match_alternate_s1:
                        lea              rax, [rip + .Lx129_41]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n53_match_alternate_as
.Lx129_40:
                                                                                        jmp   n56_match_lit_β
.Lx129_41:
                                                                                        jmp   n54_match_lit_β
n53_match_alternate_as:
                                                                                        jmp   n47_match_arbno_as
n53_match_alternate_β:
                        mov              rax, qword ptr [rbp + 776]
                                                                                        jmp   rax
n53_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 768]
                        mov              rax, qword ptr [rbp + 784]
                                                                                        jmp   rax
.Lx129_19:
                                                                                        jmp   n47_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n54_match_lit_α:
                                                                                        jmp   n53_match_alternate_s1
n54_match_lit_β:
                                                                                        jmp   n53_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n55_match_lit_α:
                                                                                        jmp   n51_match_alternate_s0
n55_match_lit_β:
                                                                                        jmp   n51_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n56_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n53_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n53_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n53_match_alternate_s0
n56_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n53_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 880]
                        add              rsp, 888
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 880]
                        add              rsp, 888
                        ret
                        .section         .note.GNU-stack,"",@progbits
