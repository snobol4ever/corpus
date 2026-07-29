                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 112
                        mov              [rsp + 88], rcx
                        mov              [rsp + 96], rdx
                        mov              [rsp + 104], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], r8
                        mov              dword ptr [rsp + 72], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_alternate_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n1_match_lit_α
.Lx4_21:
                        lea              rax, [rip + .Lx4_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n2_match_lit_α
n0_match_alternate_s0:
                        lea              rax, [rip + .Lx4_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
n0_match_alternate_s1:
                        lea              rax, [rip + .Lx4_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
.Lx4_40:
                                                                                        jmp   n1_match_lit_β
.Lx4_41:
                                                                                        jmp   n2_match_lit_β
n0_match_alternate_as:
                                                                                        jmp   proc_PAT$0_γ
n0_match_alternate_β:
                        mov              rax, qword ptr [rbp + 24]
                                                                                        jmp   rax
n0_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 16]
                        mov              rax, qword ptr [rbp + 32]
                                                                                        jmp   rax
.Lx4_19:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_lit_α:
                                                                                        jmp   n0_match_alternate_s0
n1_match_lit_β:
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n0_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99
                                                                                        jne   n0_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n0_match_alternate_s1
n2_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n0_match_alternate_af
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 80], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 72]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 80], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 72]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 72], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 64]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 88]
                        mov              rbp, [rbp + 104]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 96]
                        lea              rsp, [rbp + 112]
                        mov              rbp, [rbp + 104]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        .global          proc_PAT$1_α
                        .global          proc_PAT$1_β
                        .global          proc_PAT$1_γ
                        .global          proc_PAT$1_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], r8
                        mov              dword ptr [rsp + 136], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n9_match_sequence_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n9_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n10_match_lit_α
n9_match_sequence_as:
                                                                                        jmp   proc_PAT$1_γ
n9_match_sequence_β:
                                                                                        jmp   n13_match_lit_β
n9_match_sequence_af:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$1_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 60
                                                                                        jne   proc_PAT$1_ω
                        add              r14d, 1
                                                                                        jmp   n11_match_span_α
n10_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx20_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx20_10
                        cmp              esi, 98
                                                                                        je    .Lx20_10
                                                                                        jmp   .Lx20_1
.Lx20_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx20_11
                        cmp              esi, 98
                                                                                        je    .Lx20_11
                                                                                        jmp   .Lx20_1
.Lx20_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx20_12
                        cmp              esi, 98
                                                                                        je    .Lx20_12
                                                                                        jmp   .Lx20_1
.Lx20_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx20_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx20_13
                        cmp              esi, 98
                                                                                        je    .Lx20_13
                                                                                        jmp   .Lx20_1
.Lx20_13:
                        add              ecx, 1
                                                                                        jmp   .Lx20_0
.Lx20_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx20_240
                        add              rsp, 16
                                                                                        jmp   n10_match_lit_β
.Lx20_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n12_match_arbno_α
n11_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n10_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n13_match_lit_α
n12_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n14_match_defer_α
n12_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n14_match_defer_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n13_match_lit_α
n12_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 136]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx22_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n14_match_defer_β
.Lx22_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n11_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n12_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 62
                                                                                        jne   n12_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$1_γ
n13_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n12_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx25_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx25_10
.Lx25_9:
                        xor              eax, eax
.Lx25_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx25_11:
                        test             rax, rax
                                                                                        jz    .Lx25_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx25_4]
                        lea              rdx, [rip + .Lx25_5]
                                                                                        jmp   rax
.Lx25_4:
                                                                                        jmp   n12_match_arbno_as
.Lx25_5:
                                                                                        jmp   n12_match_arbno_af
.Lx25_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx25_2:
                        test             rax, rax
                                                                                        je    .Lx25_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx25_7]
                        lea              rdx, [rip + .Lx25_8]
                                                                                        jmp   rax
.Lx25_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx25_2
.Lx25_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx25_2
.Lx25_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n12_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx25_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n12_match_arbno_as
.Lx25_6:
                        add              rsp, 16
                                                                                        jmp   n12_match_arbno_af
n14_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$1_attempt
8:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$1_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 80
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PAT$1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "G"
.Lgvan1:                .string          "W"
.Lgvan2:                .string          "E"
.Lgvan3:                .string          "S1"
.Lgvan4:                .string          "S2"
.Lgvan5:                .string          "S3"
.Lgvan6:                .string          "S4"
.Lgvan7:                .string          "S5"
.Lgvan8:                .string          "S6"
.Lgvan9:                .string          "S7"
.Lgvan10:               .string          "S8"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 11
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 11
                        call             gva_register@PLT
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
                        sub              rsp, 2520
                        mov              rdi, rsp
                        mov              ecx, 2520
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2512], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#         G = "<" SPAN("ab") ARBNO(*G) ">"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n51_call_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n27_goto_α:
                                                                                        jmp   n52_lit_string_α
n27_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_α:
                                                                                        jmp   n53_lit_string_α
n28_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_goto_α:
                                                                                        jmp   n54_var_α
n29_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_goto_α:
                                                                                        jmp   n55_lit_string_α
n30_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_goto_α:
                                                                                        jmp   n56_lit_string_α
n31_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_goto_α:
                                                                                        jmp   n57_var_α
n32_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_goto_α:
                                                                                        jmp   n58_lit_string_α
n33_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:
                                                                                        jmp   n59_lit_string_α
n34_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_goto_α:
                                                                                        jmp   n60_var_α
n35_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:
                                                                                        jmp   n61_lit_string_α
n36_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_goto_α:
                                                                                        jmp   n62_lit_string_α
n37_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_goto_α:
                                                                                        jmp   n63_var_α
n38_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_α:
                                                                                        jmp   n64_lit_string_α
n39_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_goto_α:
                                                                                        jmp   n65_lit_string_α
n40_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:
                                                                                        jmp   n66_var_α
n41_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:
                                                                                        jmp   n67_lit_string_α
n42_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_goto_α:
                                                                                        jmp   n68_lit_string_α
n43_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_goto_α:
                                                                                        jmp   n69_var_α
n44_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_goto_α:
                                                                                        jmp   n70_lit_string_α
n45_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_α:
                                                                                        jmp   n71_lit_string_α
n46_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_goto_α:
                                                                                        jmp   n72_var_α
n47_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_α:
                                                                                        jmp   n73_lit_string_α
n48_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_goto_α:
                                                                                        jmp   n74_lit_string_α
n49_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_goto_α:
                                                                                        jmp   n75_lit_string_α
n50_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn216:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n77_lit_string_α
                                                                                        jmp   n76_assign_α
n51_call_β:
                                                                                        jmp   n77_lit_string_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"                      :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n78_assign_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "T1 MATCH"
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n79_assign_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "T1 NOMATCH"
#=======================================================================================================================
# N1      S2 POS(0) ARBNO(*G) RPOS(0)              :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n80_match_head_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"                      :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_assign_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "T2 MATCH"
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n82_assign_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "T2 NOMATCH"
#=======================================================================================================================
# N2      S3 POS(0) ARBNO(*G) RPOS(0)              :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n83_match_head_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"                      :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n84_assign_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "T3 MATCH"
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n85_assign_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "T3 NOMATCH"
#=======================================================================================================================
# N3      S4 POS(0) ARBNO(*G) RPOS(0)              :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n86_match_head_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"                      :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n87_assign_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "T4 MATCH"
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_assign_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "T4 NOMATCH"
#=======================================================================================================================
# N4      S5 POS(0) ARBNO(*W) RPOS(0)              :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n89_match_head_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"                      :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n90_assign_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "T5 MATCH"
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n91_assign_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "T5 NOMATCH"
#=======================================================================================================================
# N5      S6 POS(0) ARBNO(*E) RPOS(0)              :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n92_match_head_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"                      :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_assign_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "T6 MATCH"
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n94_assign_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "T6 NOMATCH"
#=======================================================================================================================
# N6      S7 POS(0) ARBNO(*G) RPOS(0)              :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n95_match_head_α
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"                      :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n96_assign_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "T7 MATCH"
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n97_assign_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "T7 NOMATCH"
#=======================================================================================================================
# N7      S8 POS(0) ARBNO(*G) *G RPOS(0)           :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n98_match_head_α
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"                      :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_assign_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "T8 MATCH"
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n100_assign_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "T8 NOMATCH"
#=======================================================================================================================
# N8      OUTPUT = "DONE"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n101_assign_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "DONE"
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n77_lit_string_α
#=======================================================================================================================
#         W = "ab"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_assign_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx243_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n54_var_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx244_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n54_var_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n80_match_head_α:
                        mov              qword ptr [rbp + 624], r13
                        mov              qword ptr [rbp + 632], r14
                        mov              qword ptr [rbp + 640], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 648], rax
                        mov              qword ptr [rbp + 616], rbp
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 592], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 584], rax
                        mov              dword ptr [rbp + 576], 0
.Lx246_0:
                        mov              r14d, dword ptr [rbp + 576]
                                                                                        jmp   n103_match_sequence_α
n80_match_head_β:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, r15d
                                                                                        jg    .Lx246_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx246_1
                                                                                        jmp   .Lx246_0
.Lx246_1:
                        mov              rax, qword ptr [rbp + 584]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 592]
                        mov              r10, qword ptr [1879048192]
.Lx246_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx246_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 624]
                        mov              r14, qword ptr [rbp + 632]
                        mov              r15, qword ptr [rbp + 640]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 616]
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx247_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n57_var_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx248_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n57_var_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n83_match_head_α:
                        mov              qword ptr [rbp + 896], r13
                        mov              qword ptr [rbp + 904], r14
                        mov              qword ptr [rbp + 912], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax
                        mov              qword ptr [rbp + 888], rbp
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 864], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 856], rax
                        mov              dword ptr [rbp + 848], 0
.Lx250_0:
                        mov              r14d, dword ptr [rbp + 848]
                                                                                        jmp   n104_match_sequence_α
n83_match_head_β:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, r15d
                                                                                        jg    .Lx250_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx250_1
                                                                                        jmp   .Lx250_0
.Lx250_1:
                        mov              rax, qword ptr [rbp + 856]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 864]
                        mov              r10, qword ptr [1879048192]
.Lx250_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx250_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]
                        mov              r14, qword ptr [rbp + 904]
                        mov              r15, qword ptr [rbp + 912]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 920]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx251_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n60_var_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx252_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n60_var_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_match_head_α:
                        mov              qword ptr [rbp + 1168], r13
                        mov              qword ptr [rbp + 1176], r14
                        mov              qword ptr [rbp + 1184], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1192], rax
                        mov              qword ptr [rbp + 1160], rbp
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1136], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1128], rax
                        mov              dword ptr [rbp + 1120], 0
.Lx254_0:
                        mov              r14d, dword ptr [rbp + 1120]
                                                                                        jmp   n105_match_sequence_α
n86_match_head_β:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, r15d
                                                                                        jg    .Lx254_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx254_1
                                                                                        jmp   .Lx254_0
.Lx254_1:
                        mov              rax, qword ptr [rbp + 1128]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1136]
                        mov              r10, qword ptr [1879048192]
.Lx254_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx254_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1168]
                        mov              r14, qword ptr [rbp + 1176]
                        mov              r15, qword ptr [rbp + 1184]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx255_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n63_var_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx256_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n63_var_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n89_match_head_α:
                        mov              qword ptr [rbp + 1440], r13
                        mov              qword ptr [rbp + 1448], r14
                        mov              qword ptr [rbp + 1456], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1464], rax
                        mov              qword ptr [rbp + 1432], rbp
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1408], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1400], rax
                        mov              dword ptr [rbp + 1392], 0
.Lx258_0:
                        mov              r14d, dword ptr [rbp + 1392]
                                                                                        jmp   n106_match_sequence_α
n89_match_head_β:
                        add              dword ptr [rbp + 1392], 1
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, r15d
                                                                                        jg    .Lx258_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx258_1
                                                                                        jmp   .Lx258_0
.Lx258_1:
                        mov              rax, qword ptr [rbp + 1400]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1408]
                        mov              r10, qword ptr [1879048192]
.Lx258_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx258_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1440]
                        mov              r14, qword ptr [rbp + 1448]
                        mov              r15, qword ptr [rbp + 1456]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1464]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1432]
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx259_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n66_var_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx260_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n66_var_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n92_match_head_α:
                        mov              qword ptr [rbp + 1712], r13
                        mov              qword ptr [rbp + 1720], r14
                        mov              qword ptr [rbp + 1728], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1736], rax
                        mov              qword ptr [rbp + 1704], rbp
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1680], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1672], rax
                        mov              dword ptr [rbp + 1664], 0
.Lx262_0:
                        mov              r14d, dword ptr [rbp + 1664]
                                                                                        jmp   n107_match_sequence_α
n92_match_head_β:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, r15d
                                                                                        jg    .Lx262_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx262_1
                                                                                        jmp   .Lx262_0
.Lx262_1:
                        mov              rax, qword ptr [rbp + 1672]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
                        mov              r10, qword ptr [1879048192]
.Lx262_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx262_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1712]
                        mov              r14, qword ptr [rbp + 1720]
                        mov              r15, qword ptr [rbp + 1728]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1736]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]
                                                                                        jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx263_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n69_var_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx264_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n69_var_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n95_match_head_α:
                        mov              qword ptr [rbp + 2000], r13
                        mov              qword ptr [rbp + 2008], r14
                        mov              qword ptr [rbp + 2016], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2024], rax
                        mov              qword ptr [rbp + 1992], rbp
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 1968], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1960], rax
                        mov              dword ptr [rbp + 1952], 0
.Lx266_0:
                        mov              r14d, dword ptr [rbp + 1952]
                                                                                        jmp   n108_match_sequence_α
n95_match_head_β:
                        add              dword ptr [rbp + 1952], 1
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, r15d
                                                                                        jg    .Lx266_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx266_1
                                                                                        jmp   .Lx266_0
.Lx266_1:
                        mov              rax, qword ptr [rbp + 1960]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1968]
                        mov              r10, qword ptr [1879048192]
.Lx266_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx266_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2000]
                        mov              r14, qword ptr [rbp + 2008]
                        mov              r15, qword ptr [rbp + 2016]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2024]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1992]
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx267_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n72_var_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx268_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n72_var_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n98_match_head_α:
                        mov              qword ptr [rbp + 2272], r13
                        mov              qword ptr [rbp + 2280], r14
                        mov              qword ptr [rbp + 2288], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2296], rax
                        mov              qword ptr [rbp + 2264], rbp
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 2240], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2232], rax
                        mov              dword ptr [rbp + 2224], 0
.Lx270_0:
                        mov              r14d, dword ptr [rbp + 2224]
                                                                                        jmp   n109_match_sequence_α
n98_match_head_β:
                        add              dword ptr [rbp + 2224], 1
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, r15d
                                                                                        jg    .Lx270_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx270_1
                                                                                        jmp   .Lx270_0
.Lx270_1:
                        mov              rax, qword ptr [rbp + 2232]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2240]
                        mov              r10, qword ptr [1879048192]
.Lx270_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx270_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2272]
                        mov              r14, qword ptr [rbp + 2280]
                        mov              r15, qword ptr [rbp + 2288]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2296]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2264]
                                                                                        jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx271_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n75_lit_string_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx272_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n75_lit_string_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx273_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n103_match_sequence_α:
                        mov              dword ptr [rbp + 656], r14d
                                                                                        jmp   n112_lit_integer_α
n103_match_sequence_as:
                                                                                        jmp   n111_match_release_α
n103_match_sequence_β:
                                                                                        jmp   n116_match_rpos_β
n103_match_sequence_af:
                                                                                        jmp   n80_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n104_match_sequence_α:
                        mov              dword ptr [rbp + 928], r14d
                                                                                        jmp   n118_lit_integer_α
n104_match_sequence_as:
                                                                                        jmp   n117_match_release_α
n104_match_sequence_β:
                                                                                        jmp   n122_match_rpos_β
n104_match_sequence_af:
                                                                                        jmp   n83_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n105_match_sequence_α:
                        mov              dword ptr [rbp + 1200], r14d
                                                                                        jmp   n124_lit_integer_α
n105_match_sequence_as:
                                                                                        jmp   n123_match_release_α
n105_match_sequence_β:
                                                                                        jmp   n128_match_rpos_β
n105_match_sequence_af:
                                                                                        jmp   n86_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n106_match_sequence_α:
                        mov              dword ptr [rbp + 1472], r14d
                                                                                        jmp   n130_lit_integer_α
n106_match_sequence_as:
                                                                                        jmp   n129_match_release_α
n106_match_sequence_β:
                                                                                        jmp   n134_match_rpos_β
n106_match_sequence_af:
                                                                                        jmp   n89_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n107_match_sequence_α:
                        mov              dword ptr [rbp + 1744], r14d
                                                                                        jmp   n136_lit_integer_α
n107_match_sequence_as:
                                                                                        jmp   n135_match_release_α
n107_match_sequence_β:
                                                                                        jmp   n140_match_rpos_β
n107_match_sequence_af:
                                                                                        jmp   n92_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n108_match_sequence_α:
                        mov              dword ptr [rbp + 2032], r14d
                                                                                        jmp   n142_lit_integer_α
n108_match_sequence_as:
                                                                                        jmp   n141_match_release_α
n108_match_sequence_β:
                                                                                        jmp   n146_match_rpos_β
n108_match_sequence_af:
                                                                                        jmp   n95_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n109_match_sequence_α:
                        mov              dword ptr [rbp + 2304], r14d
                                                                                        jmp   n148_lit_integer_α
n109_match_sequence_as:
                                                                                        jmp   n147_match_release_α
n109_match_sequence_β:
                                                                                        jmp   n153_match_rpos_β
n109_match_sequence_af:
                                                                                        jmp   n98_match_head_β
#=======================================================================================================================
#         E = "" | "c"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n154_call_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n111_match_release_α:
                        mov              rax, qword ptr [rbp + 584]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 592]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx291_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx291_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx291_1:
                        test             rax, rax
                                                                                        je    .Lx291_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx291_3]
                        lea              rdx, [rip + .Lx291_4]
                                                                                        jmp   rax
.Lx291_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx291_1
.Lx291_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx291_1
.Lx291_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx291_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx291_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 624]
                        mov              r14, qword ptr [rbp + 632]
                        mov              r15, qword ptr [rbp + 640]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 616]
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n113_match_pos_α
n112_lit_integer_β:
                                                                                        jmp   n80_match_head_β
.Lx292_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n113_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n80_match_head_β
                                                                                        jmp   n114_match_arbno_α
n113_match_pos_β:
                                                                                        jmp   n80_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n114_match_arbno_α:
                        mov              dword ptr [rbp + 704], r14d
                        mov              dword ptr [rbp + 708], r14d
                        mov              dword ptr [rbp + 712], 0
                        mov              qword ptr [rbp + 728], rsp
                        mov              qword ptr [rbp + 720], 0
                                                                                        jmp   n115_lit_integer_α
n114_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 708]
                        mov              rax, qword ptr [rbp + 720]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 720], rsp
                        mov              rbp, rsp
                        add              rbp, -712
                                                                                        jmp   n155_match_defer_α
n114_match_arbno_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              r14d, eax
                                                                                        je    n155_match_defer_β
                        mov              rbp, qword ptr [rbp + 712]
                        mov              eax, dword ptr [rbp + 712]
                        add              eax, 1
                        mov              dword ptr [rbp + 712], eax
                        mov              dword ptr [rbp + 708], r14d
                                                                                        jmp   n115_lit_integer_α
n114_match_arbno_af:
                        mov              rax, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              rsp, [rbp + 776]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 712]
                        test             ecx, ecx
                                                                                        jz    .Lx295_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 712], ecx
                        mov              qword ptr [rbp + 720], rax
                        lea              rbp, [rax + -712]
                                                                                        jmp   n155_match_defer_β
.Lx295_2:
                        mov              r14d, dword ptr [rbp + 704]
                        mov              rsp, qword ptr [rbp + 728]
                                                                                        jmp   n113_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n116_match_rpos_α
n115_lit_integer_β:
                                                                                        jmp   n114_match_arbno_β
.Lx296_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n116_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n114_match_arbno_β
                                                                                        jmp   n111_match_release_α
n116_match_rpos_β:
                                                                                        jmp   n114_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n117_match_release_α:
                        mov              rax, qword ptr [rbp + 856]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 864]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx299_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx299_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx299_1:
                        test             rax, rax
                                                                                        je    .Lx299_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx299_3]
                        lea              rdx, [rip + .Lx299_4]
                                                                                        jmp   rax
.Lx299_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx299_1
.Lx299_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx299_1
.Lx299_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx299_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx299_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]
                        mov              r14, qword ptr [rbp + 904]
                        mov              r15, qword ptr [rbp + 912]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 920]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]
                                                                                        jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n119_match_pos_α
n118_lit_integer_β:
                                                                                        jmp   n83_match_head_β
.Lx300_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n119_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n83_match_head_β
                                                                                        jmp   n120_match_arbno_α
n119_match_pos_β:
                                                                                        jmp   n83_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n120_match_arbno_α:
                        mov              dword ptr [rbp + 976], r14d
                        mov              dword ptr [rbp + 980], r14d
                        mov              dword ptr [rbp + 984], 0
                        mov              qword ptr [rbp + 1000], rsp
                        mov              qword ptr [rbp + 992], 0
                                                                                        jmp   n121_lit_integer_α
n120_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 980]
                        mov              rax, qword ptr [rbp + 992]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 992], rsp
                        mov              rbp, rsp
                        add              rbp, -984
                                                                                        jmp   n156_match_defer_α
n120_match_arbno_as:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              r14d, eax
                                                                                        je    n156_match_defer_β
                        mov              rbp, qword ptr [rbp + 984]
                        mov              eax, dword ptr [rbp + 984]
                        add              eax, 1
                        mov              dword ptr [rbp + 984], eax
                        mov              dword ptr [rbp + 980], r14d
                                                                                        jmp   n121_lit_integer_α
n120_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              rsp, [rbp + 1048]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 984]
                        test             ecx, ecx
                                                                                        jz    .Lx303_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 984], ecx
                        mov              qword ptr [rbp + 992], rax
                        lea              rbp, [rax + -984]
                                                                                        jmp   n156_match_defer_β
.Lx303_2:
                        mov              r14d, dword ptr [rbp + 976]
                        mov              rsp, qword ptr [rbp + 1000]
                                                                                        jmp   n119_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n122_match_rpos_α
n121_lit_integer_β:
                                                                                        jmp   n120_match_arbno_β
.Lx304_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n122_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n120_match_arbno_β
                                                                                        jmp   n117_match_release_α
n122_match_rpos_β:
                                                                                        jmp   n120_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_release_α:
                        mov              rax, qword ptr [rbp + 1128]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1136]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx307_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx307_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx307_1:
                        test             rax, rax
                                                                                        je    .Lx307_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx307_3]
                        lea              rdx, [rip + .Lx307_4]
                                                                                        jmp   rax
.Lx307_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx307_1
.Lx307_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx307_1
.Lx307_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx307_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx307_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1168]
                        mov              r14, qword ptr [rbp + 1176]
                        mov              r15, qword ptr [rbp + 1184]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]
                                                                                        jmp   n61_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n125_match_pos_α
n124_lit_integer_β:
                                                                                        jmp   n86_match_head_β
.Lx308_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n125_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n86_match_head_β
                                                                                        jmp   n126_match_arbno_α
n125_match_pos_β:
                                                                                        jmp   n86_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n126_match_arbno_α:
                        mov              dword ptr [rbp + 1248], r14d
                        mov              dword ptr [rbp + 1252], r14d
                        mov              dword ptr [rbp + 1256], 0
                        mov              qword ptr [rbp + 1272], rsp
                        mov              qword ptr [rbp + 1264], 0
                                                                                        jmp   n127_lit_integer_α
n126_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1252]
                        mov              rax, qword ptr [rbp + 1264]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1264], rsp
                        mov              rbp, rsp
                        add              rbp, -1256
                                                                                        jmp   n157_match_defer_α
n126_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              r14d, eax
                                                                                        je    n157_match_defer_β
                        mov              rbp, qword ptr [rbp + 1256]
                        mov              eax, dword ptr [rbp + 1256]
                        add              eax, 1
                        mov              dword ptr [rbp + 1256], eax
                        mov              dword ptr [rbp + 1252], r14d
                                                                                        jmp   n127_lit_integer_α
n126_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              rsp, [rbp + 1320]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1256]
                        test             ecx, ecx
                                                                                        jz    .Lx311_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1256], ecx
                        mov              qword ptr [rbp + 1264], rax
                        lea              rbp, [rax + -1256]
                                                                                        jmp   n157_match_defer_β
.Lx311_2:
                        mov              r14d, dword ptr [rbp + 1248]
                        mov              rsp, qword ptr [rbp + 1272]
                                                                                        jmp   n125_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 6
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n128_match_rpos_α
n127_lit_integer_β:
                                                                                        jmp   n126_match_arbno_β
.Lx312_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n128_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n126_match_arbno_β
                                                                                        jmp   n123_match_release_α
n128_match_rpos_β:
                                                                                        jmp   n126_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n129_match_release_α:
                        mov              rax, qword ptr [rbp + 1400]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1408]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx315_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx315_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx315_1:
                        test             rax, rax
                                                                                        je    .Lx315_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx315_3]
                        lea              rdx, [rip + .Lx315_4]
                                                                                        jmp   rax
.Lx315_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx315_1
.Lx315_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx315_1
.Lx315_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx315_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx315_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1440]
                        mov              r14, qword ptr [rbp + 1448]
                        mov              r15, qword ptr [rbp + 1456]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1464]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1432]
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n131_match_pos_α
n130_lit_integer_β:
                                                                                        jmp   n89_match_head_β
.Lx316_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n131_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n89_match_head_β
                                                                                        jmp   n132_match_arbno_α
n131_match_pos_β:
                                                                                        jmp   n89_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n132_match_arbno_α:
                        mov              dword ptr [rbp + 1520], r14d
                        mov              dword ptr [rbp + 1524], r14d
                        mov              dword ptr [rbp + 1528], 0
                        mov              qword ptr [rbp + 1544], rsp
                        mov              qword ptr [rbp + 1536], 0
                                                                                        jmp   n133_lit_integer_α
n132_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1524]
                        mov              rax, qword ptr [rbp + 1536]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1536], rsp
                        mov              rbp, rsp
                        add              rbp, -1528
                                                                                        jmp   n158_match_defer_α
n132_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              r14d, eax
                                                                                        je    n158_match_defer_β
                        mov              rbp, qword ptr [rbp + 1528]
                        mov              eax, dword ptr [rbp + 1528]
                        add              eax, 1
                        mov              dword ptr [rbp + 1528], eax
                        mov              dword ptr [rbp + 1524], r14d
                                                                                        jmp   n133_lit_integer_α
n132_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1528]
                        lea              rsp, [rbp + 1592]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1528]
                        test             ecx, ecx
                                                                                        jz    .Lx319_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1528], ecx
                        mov              qword ptr [rbp + 1536], rax
                        lea              rbp, [rax + -1528]
                                                                                        jmp   n158_match_defer_β
.Lx319_2:
                        mov              r14d, dword ptr [rbp + 1520]
                        mov              rsp, qword ptr [rbp + 1544]
                                                                                        jmp   n131_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rbp + 1584], 6
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n134_match_rpos_α
n133_lit_integer_β:
                                                                                        jmp   n132_match_arbno_β
.Lx320_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n134_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n132_match_arbno_β
                                                                                        jmp   n129_match_release_α
n134_match_rpos_β:
                                                                                        jmp   n132_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n135_match_release_α:
                        mov              rax, qword ptr [rbp + 1672]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx323_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx323_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx323_1:
                        test             rax, rax
                                                                                        je    .Lx323_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx323_3]
                        lea              rdx, [rip + .Lx323_4]
                                                                                        jmp   rax
.Lx323_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx323_1
.Lx323_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx323_1
.Lx323_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx323_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx323_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1712]
                        mov              r14, qword ptr [rbp + 1720]
                        mov              r15, qword ptr [rbp + 1728]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 1736]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n137_match_pos_α
n136_lit_integer_β:
                                                                                        jmp   n92_match_head_β
.Lx324_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n137_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n92_match_head_β
                                                                                        jmp   n138_match_arbno_α
n137_match_pos_β:
                                                                                        jmp   n92_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_arbno_α:
                        mov              dword ptr [rbp + 1792], r14d
                        mov              dword ptr [rbp + 1796], r14d
                        mov              dword ptr [rbp + 1800], 0
                        mov              qword ptr [rbp + 1816], rsp
                        mov              qword ptr [rbp + 1808], 0
                                                                                        jmp   n139_lit_integer_α
n138_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1796]
                        mov              rax, qword ptr [rbp + 1808]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1808], rsp
                        mov              rbp, rsp
                        add              rbp, -1800
                                                                                        jmp   n159_match_defer_α
n138_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              r14d, eax
                                                                                        je    n159_match_defer_β
                        mov              rbp, qword ptr [rbp + 1800]
                        mov              eax, dword ptr [rbp + 1800]
                        add              eax, 1
                        mov              dword ptr [rbp + 1800], eax
                        mov              dword ptr [rbp + 1796], r14d
                                                                                        jmp   n139_lit_integer_α
n138_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              rsp, [rbp + 1880]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1800]
                        test             ecx, ecx
                                                                                        jz    .Lx327_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1800], ecx
                        mov              qword ptr [rbp + 1808], rax
                        lea              rbp, [rax + -1800]
                                                                                        jmp   n159_match_defer_β
.Lx327_2:
                        mov              r14d, dword ptr [rbp + 1792]
                        mov              rsp, qword ptr [rbp + 1816]
                                                                                        jmp   n137_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rbp + 1872], 6
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n140_match_rpos_α
n139_lit_integer_β:
                                                                                        jmp   n138_match_arbno_β
.Lx328_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n140_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n138_match_arbno_β
                                                                                        jmp   n135_match_release_α
n140_match_rpos_β:
                                                                                        jmp   n138_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n141_match_release_α:
                        mov              rax, qword ptr [rbp + 1960]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1968]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx331_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx331_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx331_1:
                        test             rax, rax
                                                                                        je    .Lx331_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx331_3]
                        lea              rdx, [rip + .Lx331_4]
                                                                                        jmp   rax
.Lx331_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx331_1
.Lx331_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx331_1
.Lx331_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx331_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx331_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2000]
                        mov              r14, qword ptr [rbp + 2008]
                        mov              r15, qword ptr [rbp + 2016]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2024]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1992]
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n143_match_pos_α
n142_lit_integer_β:
                                                                                        jmp   n95_match_head_β
.Lx332_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n143_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n95_match_head_β
                                                                                        jmp   n144_match_arbno_α
n143_match_pos_β:
                                                                                        jmp   n95_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n144_match_arbno_α:
                        mov              dword ptr [rbp + 2080], r14d
                        mov              dword ptr [rbp + 2084], r14d
                        mov              dword ptr [rbp + 2088], 0
                        mov              qword ptr [rbp + 2104], rsp
                        mov              qword ptr [rbp + 2096], 0
                                                                                        jmp   n145_lit_integer_α
n144_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2084]
                        mov              rax, qword ptr [rbp + 2096]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2096], rsp
                        mov              rbp, rsp
                        add              rbp, -2088
                                                                                        jmp   n161_match_defer_α
n144_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              r14d, eax
                                                                                        je    n161_match_defer_β
                        mov              rbp, qword ptr [rbp + 2088]
                        mov              eax, dword ptr [rbp + 2088]
                        add              eax, 1
                        mov              dword ptr [rbp + 2088], eax
                        mov              dword ptr [rbp + 2084], r14d
                                                                                        jmp   n145_lit_integer_α
n144_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              rsp, [rbp + 2152]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2088]
                        test             ecx, ecx
                                                                                        jz    .Lx335_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2088], ecx
                        mov              qword ptr [rbp + 2096], rax
                        lea              rbp, [rax + -2088]
                                                                                        jmp   n161_match_defer_β
.Lx335_2:
                        mov              r14d, dword ptr [rbp + 2080]
                        mov              rsp, qword ptr [rbp + 2104]
                                                                                        jmp   n143_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n146_match_rpos_α
n145_lit_integer_β:
                                                                                        jmp   n144_match_arbno_β
.Lx336_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n144_match_arbno_β
                                                                                        jmp   n141_match_release_α
n146_match_rpos_β:
                                                                                        jmp   n144_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n147_match_release_α:
                        mov              rax, qword ptr [rbp + 2232]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2240]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx339_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx339_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx339_1:
                        test             rax, rax
                                                                                        je    .Lx339_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx339_3]
                        lea              rdx, [rip + .Lx339_4]
                                                                                        jmp   rax
.Lx339_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx339_1
.Lx339_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx339_1
.Lx339_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx339_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx339_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2272]
                        mov              r14, qword ptr [rbp + 2280]
                        mov              r15, qword ptr [rbp + 2288]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 2296]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2264]
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 2320], 6
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n149_match_pos_α
n148_lit_integer_β:
                                                                                        jmp   n98_match_head_β
.Lx340_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n149_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n98_match_head_β
                                                                                        jmp   n150_match_arbno_α
n149_match_pos_β:
                                                                                        jmp   n98_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n150_match_arbno_α:
                        mov              dword ptr [rbp + 2352], r14d
                        mov              dword ptr [rbp + 2356], r14d
                        mov              dword ptr [rbp + 2360], 0
                        mov              qword ptr [rbp + 2376], rsp
                        mov              qword ptr [rbp + 2368], 0
                                                                                        jmp   n151_match_defer_α
n150_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2356]
                        mov              rax, qword ptr [rbp + 2368]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2368], rsp
                        mov              rbp, rsp
                        add              rbp, -2360
                                                                                        jmp   n162_match_defer_α
n150_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              r14d, eax
                                                                                        je    n162_match_defer_β
                        mov              rbp, qword ptr [rbp + 2360]
                        mov              eax, dword ptr [rbp + 2360]
                        add              eax, 1
                        mov              dword ptr [rbp + 2360], eax
                        mov              dword ptr [rbp + 2356], r14d
                                                                                        jmp   n151_match_defer_α
n150_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              rsp, [rbp + 2424]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2360]
                        test             ecx, ecx
                                                                                        jz    .Lx343_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2360], ecx
                        mov              qword ptr [rbp + 2368], rax
                        lea              rbp, [rax + -2360]
                                                                                        jmp   n162_match_defer_β
.Lx343_2:
                        mov              r14d, dword ptr [rbp + 2352]
                        mov              rsp, qword ptr [rbp + 2376]
                                                                                        jmp   n149_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n151_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx344_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx344_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx344_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx344_10
.Lx344_9:
                        xor              eax, eax
.Lx344_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx344_11:
                        test             rax, rax
                                                                                        jz    .Lx344_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx344_4]
                        lea              rdx, [rip + .Lx344_5]
                                                                                        jmp   rax
.Lx344_4:
                                                                                        jmp   n152_lit_integer_α
.Lx344_5:
                                                                                        jmp   n150_match_arbno_β
.Lx344_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx344_2:
                        test             rax, rax
                                                                                        je    .Lx344_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx344_7]
                        lea              rdx, [rip + .Lx344_8]
                                                                                        jmp   rax
.Lx344_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx344_2
.Lx344_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx344_2
.Lx344_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n150_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx344_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n152_lit_integer_α
.Lx344_6:
                        add              rsp, 16
                                                                                        jmp   n150_match_arbno_β
n151_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n153_match_rpos_α
n152_lit_integer_β:
                                                                                        jmp   n151_match_defer_β
.Lx345_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n153_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n151_match_defer_β
                                                                                        jmp   n147_match_release_α
n153_match_rpos_β:
                                                                                        jmp   n151_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn348:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n164_lit_string_α
                                                                                        jmp   n163_assign_α
n154_call_β:
                                                                                        jmp   n164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx349_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx349_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx349_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx349_10
.Lx349_9:
                        xor              eax, eax
.Lx349_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx349_11:
                        test             rax, rax
                                                                                        jz    .Lx349_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx349_4]
                        lea              rdx, [rip + .Lx349_5]
                                                                                        jmp   rax
.Lx349_4:
                                                                                        jmp   n114_match_arbno_as
.Lx349_5:
                                                                                        jmp   n114_match_arbno_af
.Lx349_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx349_2:
                        test             rax, rax
                                                                                        je    .Lx349_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx349_7]
                        lea              rdx, [rip + .Lx349_8]
                                                                                        jmp   rax
.Lx349_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx349_2
.Lx349_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx349_2
.Lx349_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n114_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx349_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n114_match_arbno_as
.Lx349_6:
                        add              rsp, 16
                                                                                        jmp   n114_match_arbno_af
n155_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n156_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx350_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx350_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx350_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx350_10
.Lx350_9:
                        xor              eax, eax
.Lx350_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx350_11:
                        test             rax, rax
                                                                                        jz    .Lx350_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx350_4]
                        lea              rdx, [rip + .Lx350_5]
                                                                                        jmp   rax
.Lx350_4:
                                                                                        jmp   n120_match_arbno_as
.Lx350_5:
                                                                                        jmp   n120_match_arbno_af
.Lx350_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx350_2:
                        test             rax, rax
                                                                                        je    .Lx350_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx350_7]
                        lea              rdx, [rip + .Lx350_8]
                                                                                        jmp   rax
.Lx350_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx350_2
.Lx350_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx350_2
.Lx350_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n120_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx350_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n120_match_arbno_as
.Lx350_6:
                        add              rsp, 16
                                                                                        jmp   n120_match_arbno_af
n156_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n157_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx351_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx351_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx351_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx351_10
.Lx351_9:
                        xor              eax, eax
.Lx351_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx351_11:
                        test             rax, rax
                                                                                        jz    .Lx351_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx351_4]
                        lea              rdx, [rip + .Lx351_5]
                                                                                        jmp   rax
.Lx351_4:
                                                                                        jmp   n126_match_arbno_as
.Lx351_5:
                                                                                        jmp   n126_match_arbno_af
.Lx351_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx351_2:
                        test             rax, rax
                                                                                        je    .Lx351_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx351_7]
                        lea              rdx, [rip + .Lx351_8]
                                                                                        jmp   rax
.Lx351_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx351_2
.Lx351_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx351_2
.Lx351_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n126_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx351_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n126_match_arbno_as
.Lx351_6:
                        add              rsp, 16
                                                                                        jmp   n126_match_arbno_af
n157_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n158_match_defer_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx352_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx352_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx352_10
.Lx352_9:
                        xor              eax, eax
.Lx352_10:
                        test             rax, rax
                                                                                        jz    .Lx352_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx352_4]
                        lea              rdx, [rip + .Lx352_5]
                                                                                        jmp   rax
.Lx352_4:
                                                                                        jmp   n132_match_arbno_as
.Lx352_5:
                                                                                        jmp   n132_match_arbno_af
.Lx352_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx352_2:
                        test             rax, rax
                                                                                        je    .Lx352_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx352_7]
                        lea              rdx, [rip + .Lx352_8]
                                                                                        jmp   rax
.Lx352_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx352_2
.Lx352_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx352_2
.Lx352_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n132_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx352_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n132_match_arbno_as
.Lx352_6:
                        add              rsp, 16
                                                                                        jmp   n132_match_arbno_af
n158_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n159_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx353_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx353_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx353_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx353_10
.Lx353_9:
                        xor              eax, eax
.Lx353_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx353_11:
                        test             rax, rax
                                                                                        jz    .Lx353_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx353_4]
                        lea              rdx, [rip + .Lx353_5]
                                                                                        jmp   rax
.Lx353_4:
                                                                                        jmp   n138_match_arbno_as
.Lx353_5:
                                                                                        jmp   n138_match_arbno_af
.Lx353_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx353_2:
                        test             rax, rax
                                                                                        je    .Lx353_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx353_7]
                        lea              rdx, [rip + .Lx353_8]
                                                                                        jmp   rax
.Lx353_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx353_2
.Lx353_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx353_2
.Lx353_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n138_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx353_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n138_match_arbno_as
.Lx353_6:
                        add              rsp, 16
                                                                                        jmp   n138_match_arbno_af
n159_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   main_γ
n160_lit_string_β:
                                                                                        jmp   main_ω
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n161_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx355_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx355_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx355_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx355_10
.Lx355_9:
                        xor              eax, eax
.Lx355_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx355_11:
                        test             rax, rax
                                                                                        jz    .Lx355_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx355_4]
                        lea              rdx, [rip + .Lx355_5]
                                                                                        jmp   rax
.Lx355_4:
                                                                                        jmp   n144_match_arbno_as
.Lx355_5:
                                                                                        jmp   n144_match_arbno_af
.Lx355_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx355_2:
                        test             rax, rax
                                                                                        je    .Lx355_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx355_7]
                        lea              rdx, [rip + .Lx355_8]
                                                                                        jmp   rax
.Lx355_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx355_2
.Lx355_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx355_2
.Lx355_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n144_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx355_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n144_match_arbno_as
.Lx355_6:
                        add              rsp, 16
                                                                                        jmp   n144_match_arbno_af
n161_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n162_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx356_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx356_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx356_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx356_10
.Lx356_9:
                        xor              eax, eax
.Lx356_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx356_11:
                        test             rax, rax
                                                                                        jz    .Lx356_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx356_4]
                        lea              rdx, [rip + .Lx356_5]
                                                                                        jmp   rax
.Lx356_4:
                                                                                        jmp   n150_match_arbno_as
.Lx356_5:
                                                                                        jmp   n150_match_arbno_af
.Lx356_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx356_2:
                        test             rax, rax
                                                                                        je    .Lx356_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx356_7]
                        lea              rdx, [rip + .Lx356_8]
                                                                                        jmp   rax
.Lx356_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx356_2
.Lx356_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx356_2
.Lx356_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n150_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx356_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n150_match_arbno_as
.Lx356_6:
                        add              rsp, 16
                                                                                        jmp   n150_match_arbno_af
n162_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n164_lit_string_α
#=======================================================================================================================
#         S1 = "<ab>"
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n165_assign_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "<ab>"
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n166_lit_string_α
#=======================================================================================================================
#         S2 = "<ab<a><b>>"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n167_assign_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "<ab<a><b>>"
#-----------------------------------------------------------------------------------------------------------------------
n167_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n168_lit_string_α
#=======================================================================================================================
#         S3 = "<a<b<a<b<a<b<a<b<a<b<a<b>>>>>>>>>>>>"
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n169_assign_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "<a<b<a<b<a<b<a<b<a<b<a<b>>>>>>>>>>>>"
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n170_lit_string_α
#=======================================================================================================================
#         S4 = "<ab<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n171_assign_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "<ab<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n172_lit_string_α
#=======================================================================================================================
#         S5 = "abab"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n173_assign_α
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          "abab"
#-----------------------------------------------------------------------------------------------------------------------
n173_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n174_lit_string_α
#=======================================================================================================================
#         S6 = "ccc"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n175_assign_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "ccc"
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n176_lit_string_α
#=======================================================================================================================
#         S7 = "<a<b>><ab>"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n177_assign_α
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "<a<b>><ab>"
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n178_lit_string_α
#=======================================================================================================================
#         S8 = "<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n179_assign_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n180_var_α
#=======================================================================================================================
#         S1 POS(0) ARBNO(*G) RPOS(0)              :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n181_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n181_match_head_α:
                        mov              qword ptr [rbp + 352], r13
                        mov              qword ptr [rbp + 360], r14
                        mov              qword ptr [rbp + 368], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 376], rax
                        mov              qword ptr [rbp + 344], rbp
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 320], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 312], rax
                        mov              dword ptr [rbp + 304], 0
.Lx376_0:
                        mov              r14d, dword ptr [rbp + 304]
                                                                                        jmp   n182_match_sequence_α
n181_match_head_β:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, r15d
                                                                                        jg    .Lx376_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx376_1
                                                                                        jmp   .Lx376_0
.Lx376_1:
                        mov              rax, qword ptr [rbp + 312]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 320]
                        mov              r10, qword ptr [1879048192]
.Lx376_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx376_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 352]
                        mov              r14, qword ptr [rbp + 360]
                        mov              r15, qword ptr [rbp + 368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n182_match_sequence_α:
                        mov              dword ptr [rbp + 384], r14d
                                                                                        jmp   n184_lit_integer_α
n182_match_sequence_as:
                                                                                        jmp   n183_match_release_α
n182_match_sequence_β:
                                                                                        jmp   n188_match_rpos_β
n182_match_sequence_af:
                                                                                        jmp   n181_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n183_match_release_α:
                        mov              rax, qword ptr [rbp + 312]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 320]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx380_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx380_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx380_1:
                        test             rax, rax
                                                                                        je    .Lx380_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx380_3]
                        lea              rdx, [rip + .Lx380_4]
                                                                                        jmp   rax
.Lx380_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx380_1
.Lx380_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx380_1
.Lx380_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx380_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx380_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 352]
                        mov              r14, qword ptr [rbp + 360]
                        mov              r15, qword ptr [rbp + 368]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n185_match_pos_α
n184_lit_integer_β:
                                                                                        jmp   n181_match_head_β
.Lx381_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n185_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n181_match_head_β
                                                                                        jmp   n186_match_arbno_α
n185_match_pos_β:
                                                                                        jmp   n181_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n186_match_arbno_α:
                        mov              dword ptr [rbp + 432], r14d
                        mov              dword ptr [rbp + 436], r14d
                        mov              dword ptr [rbp + 440], 0
                        mov              qword ptr [rbp + 456], rsp
                        mov              qword ptr [rbp + 448], 0
                                                                                        jmp   n187_lit_integer_α
n186_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 436]
                        mov              rax, qword ptr [rbp + 448]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 448], rsp
                        mov              rbp, rsp
                        add              rbp, -440
                                                                                        jmp   n189_match_defer_α
n186_match_arbno_as:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              r14d, eax
                                                                                        je    n189_match_defer_β
                        mov              rbp, qword ptr [rbp + 440]
                        mov              eax, dword ptr [rbp + 440]
                        add              eax, 1
                        mov              dword ptr [rbp + 440], eax
                        mov              dword ptr [rbp + 436], r14d
                                                                                        jmp   n187_lit_integer_α
n186_match_arbno_af:
                        mov              rax, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              rsp, [rbp + 504]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 440]
                        test             ecx, ecx
                                                                                        jz    .Lx384_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 440], ecx
                        mov              qword ptr [rbp + 448], rax
                        lea              rbp, [rax + -440]
                                                                                        jmp   n189_match_defer_β
.Lx384_2:
                        mov              r14d, dword ptr [rbp + 432]
                        mov              rsp, qword ptr [rbp + 456]
                                                                                        jmp   n185_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n188_match_rpos_α
n187_lit_integer_β:
                                                                                        jmp   n186_match_arbno_β
.Lx385_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n188_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n186_match_arbno_β
                                                                                        jmp   n183_match_release_α
n188_match_rpos_β:
                                                                                        jmp   n186_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n189_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx387_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx387_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx387_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx387_10
.Lx387_9:
                        xor              eax, eax
.Lx387_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx387_11:
                        test             rax, rax
                                                                                        jz    .Lx387_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx387_4]
                        lea              rdx, [rip + .Lx387_5]
                                                                                        jmp   rax
.Lx387_4:
                                                                                        jmp   n186_match_arbno_as
.Lx387_5:
                                                                                        jmp   n186_match_arbno_af
.Lx387_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx387_2:
                        test             rax, rax
                                                                                        je    .Lx387_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx387_7]
                        lea              rdx, [rip + .Lx387_8]
                                                                                        jmp   rax
.Lx387_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx387_2
.Lx387_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx387_2
.Lx387_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n186_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx387_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n186_match_arbno_as
.Lx387_6:
                        add              rsp, 16
                                                                                        jmp   n186_match_arbno_af
n189_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2512]
                        add              rsp, 2520
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2512]
                        add              rsp, 2520
                        ret
                        .section         .rodata
.S0:                    .string          "G"
.S1:                    .string          "W"
.S2:                    .string          "E"
                        .text
                        .section         .note.GNU-stack,"",@progbits
