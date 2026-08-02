                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 96], r8
                        mov              dword ptr [rsp + 88], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_alternate_β]
                        mov              qword ptr [rbp + 64], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:
                        mov              dword ptr [rbp + 16], r14d
                        lea              rax, [rip + .Lx4_21]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n2_match_lit_α
.Lx4_21:
                        lea              rax, [rip + .Lx4_19]
                        mov              qword ptr [rbp + 32], rax
                                                                                        jmp   n1_match_lit_α
n0_match_alternate_s0:
                        lea              rax, [rip + .Lx4_40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
n0_match_alternate_s1:
                        lea              rax, [rip + .Lx4_41]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n0_match_alternate_as
.Lx4_40:
                                                                                        jmp   n2_match_lit_β
.Lx4_41:
                                                                                        jmp   n1_match_lit_β
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
n1_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n0_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n2_match_lit_α:
                                                                                        jmp   n0_match_alternate_s0
n2_match_lit_β:
                                                                                        jmp   n0_match_alternate_af
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 88]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 96], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 88]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 88], eax
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
                        mov              rax, qword ptr [rbp + 104]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$1_α
proc_PAT$1_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 160], r8
                        mov              dword ptr [rsp + 152], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
                        lea              rax, [rip + n9_match_sequence_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n9_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n14_match_lit_α
n9_match_sequence_as:
                                                                                        jmp   proc_PAT$1_γ
n9_match_sequence_β:
                                                                                        jmp   n10_match_lit_β
n9_match_sequence_af:
                                                                                        jmp   proc_PAT$1_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n11_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 62
                                                                                        jne   n11_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$1_γ
n10_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n11_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n10_match_lit_α
n11_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -72
                                                                                        jmp   n12_match_defer_α
n11_match_arbno_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              r14d, eax
                                                                                        je    n12_match_defer_β
                        mov              rbp, qword ptr [rbp + 72]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n10_match_lit_α
n11_match_arbno_af:
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 72]
                        lea              rsp, [rbp + 136]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx20_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -72]
                                                                                        jmp   n12_match_defer_β
.Lx20_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n13_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx21_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx21_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx21_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx21_10
.Lx21_9:
                        xor              eax, eax
.Lx21_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx21_11:
                        test             rax, rax
                                                                                        jz    .Lx21_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx21_4]
                        lea              rdx, [rip + .Lx21_5]
                                                                                        jmp   rax
.Lx21_4:
                                                                                        jmp   n11_match_arbno_as
.Lx21_5:
                                                                                        jmp   n11_match_arbno_af
.Lx21_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx21_2:
                        test             rax, rax
                                                                                        je    .Lx21_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx21_7]
                        lea              rdx, [rip + .Lx21_8]
                                                                                        jmp   rax
.Lx21_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx21_2
.Lx21_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx21_2
.Lx21_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n11_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx21_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n11_match_arbno_as
.Lx21_6:
                        add              rsp, 16
                                                                                        jmp   n11_match_arbno_af
n12_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n13_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx23_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx23_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx23_10
                        cmp              esi, 98
                                                                                        je    .Lx23_10
                                                                                        jmp   .Lx23_1
.Lx23_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx23_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx23_11
                        cmp              esi, 98
                                                                                        je    .Lx23_11
                                                                                        jmp   .Lx23_1
.Lx23_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx23_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx23_12
                        cmp              esi, 98
                                                                                        je    .Lx23_12
                                                                                        jmp   .Lx23_1
.Lx23_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx23_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 97
                                                                                        je    .Lx23_13
                        cmp              esi, 98
                                                                                        je    .Lx23_13
                                                                                        jmp   .Lx23_1
.Lx23_13:
                        add              ecx, 1
                                                                                        jmp   .Lx23_0
.Lx23_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx23_240
                        add              rsp, 16
                                                                                        jmp   n14_match_lit_β
.Lx23_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n11_match_arbno_α
n13_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n14_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$1_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 60
                                                                                        jne   proc_PAT$1_ω
                        add              r14d, 1
                                                                                        jmp   n13_match_span_α
n14_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$1_ω
proc_PAT$1_scanhit:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 152]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$1_γ
proc_PAT$1_scanfail:
                        cmp              qword ptr [rbp + 160], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 152]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 152], eax
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
                        mov              rax, qword ptr [rbp + 168]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$1_ω:
                        mov              rax, qword ptr [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, qword ptr [rbp + 184]
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         G = "<" SPAN("ab") ARBNO(*G) ">"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n27_call_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "PAT$1"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd192:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd192]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx191_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n29_lit_string_α
.Lx191_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n28_assign_α
n27_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # G
                        mov              qword ptr [1879052296], rdx
                        add              rsp, 32
                                                                                        jmp   n29_lit_string_α
#=======================================================================================================================
#         W = "ab"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_assign_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # W
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 16
                                                                                        jmp   n31_lit_string_α
#=======================================================================================================================
#         E = "" | "c"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_call_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd198:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd198]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx197_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n34_lit_string_α
.Lx197_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_assign_α
n32_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # E
                        mov              qword ptr [1879052328], rdx
                        add              rsp, 32
                                                                                        jmp   n34_lit_string_α
#=======================================================================================================================
#         S1 = "<ab>"
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_assign_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "<ab>"
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # S1
                        mov              qword ptr [1879052344], rdx
                        add              rsp, 16
                                                                                        jmp   n36_lit_string_α
#=======================================================================================================================
#         S2 = "<ab<a><b>>"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n37_assign_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "<ab<a><b>>"
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # S2
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 16
                                                                                        jmp   n38_lit_string_α
#=======================================================================================================================
#         S3 = "<a<b<a<b<a<b<a<b<a<b<a<b>>>>>>>>>>>>"
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 36
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_assign_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "<a<b<a<b<a<b<a<b<a<b<a<b>>>>>>>>>>>>"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # S3
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 16
                                                                                        jmp   n40_lit_string_α
#=======================================================================================================================
#         S4 = "<ab<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_assign_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "<ab<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # S4
                        mov              qword ptr [1879052392], rdx
                        add              rsp, 16
                                                                                        jmp   n42_lit_string_α
#=======================================================================================================================
#         S5 = "abab"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "abab"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # S5
                        mov              qword ptr [1879052408], rdx
                        add              rsp, 16
                                                                                        jmp   n44_lit_string_α
#=======================================================================================================================
#         S6 = "ccc"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_assign_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "ccc"
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # S6
                        mov              qword ptr [1879052424], rdx
                        add              rsp, 16
                                                                                        jmp   n46_lit_string_α
#=======================================================================================================================
#         S7 = "<a<b>><ab>"
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n47_assign_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "<a<b>><ab>"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052432], rax                    # S7
                        mov              qword ptr [1879052440], rdx
                        add              rsp, 16
                                                                                        jmp   n48_lit_string_α
#=======================================================================================================================
#         S8 = "<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n49_assign_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "<a><b>"
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052448], rax                    # S8
                        mov              qword ptr [1879052456], rdx
                        add              rsp, 16
                                                                                        jmp   n50_var_α
#=======================================================================================================================
#         S1 POS(0) ARBNO(*G) RPOS(0)              :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        sub              rsp, 528
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
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # S1
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n51_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n51_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 344], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 352], r13                     # outer_Σ
                        mov              qword ptr [rbp + 360], r14                     # outer_δ
                        mov              qword ptr [rbp + 368], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 376], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 320], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 312], rax                     # patstk_mark
                        mov              dword ptr [rbp + 304], 0                       # start_δ
.Lx218_0:
                        mov              r14d, dword ptr [rbp + 304]
                                                                                        jmp   n52_match_sequence_α
n51_match_head_β:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, r15d
                                                                                        jg    .Lx218_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx218_1
                                                                                        jmp   .Lx218_0
.Lx218_1:
                        mov              rax, qword ptr [rbp + 312]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 320]
                        mov              r10, qword ptr [1879048192]
.Lx218_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx218_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 352]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 360]                     # outer_δ
                        mov              r15, qword ptr [rbp + 368]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 376]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 344]
                        add              rsp, 528
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_match_sequence_α:
                        mov              dword ptr [rbp + 384], r14d
                                                                                        jmp   n60_lit_integer_α
n52_match_sequence_as:
                                                                                        jmp   n53_match_release_α
n52_match_sequence_β:
                                                                                        jmp   n57_match_rpos_β
n52_match_sequence_af:
                                                                                        jmp   n51_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_release_α:
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
.Lx222_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx222_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx222_1:
                        test             rax, rax
                                                                                        je    .Lx222_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx222_3]
                        lea              rdx, [rip + .Lx222_4]
                                                                                        jmp   rax
.Lx222_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx222_1
.Lx222_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx222_1
.Lx222_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx222_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx222_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 352]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 360]                     # outer_δ
                        mov              r15, qword ptr [rbp + 368]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 376]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 344]
                        add              rsp, 528
                                                                                        jmp   n54_lit_string_α
#=======================================================================================================================
# A1      OUTPUT = "T1 MATCH"                      :(N1)
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n55_assign_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "T1 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx224_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n64_var_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n57_match_rpos_α
n56_lit_integer_β:
                                                                                        jmp   n58_match_arbno_β
.Lx225_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n57_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n58_match_arbno_β
                                                                                        jmp   n53_match_release_α
n57_match_rpos_β:
                                                                                        jmp   n58_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n58_match_arbno_α:
                        mov              dword ptr [rbp + 432], r14d
                        mov              dword ptr [rbp + 436], r14d
                        mov              dword ptr [rbp + 440], 0
                        mov              qword ptr [rbp + 456], rsp
                        mov              qword ptr [rbp + 448], 0
                                                                                        jmp   n56_lit_integer_α
n58_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 436]
                        mov              rax, qword ptr [rbp + 448]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 448], rsp
                        mov              rbp, rsp
                        add              rbp, -440
                                                                                        jmp   n59_match_defer_α
n58_match_arbno_as:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              r14d, eax
                                                                                        je    n59_match_defer_β
                        mov              rbp, qword ptr [rbp + 440]
                        mov              eax, dword ptr [rbp + 440]
                        add              eax, 1
                        mov              dword ptr [rbp + 440], eax
                        mov              dword ptr [rbp + 436], r14d
                                                                                        jmp   n56_lit_integer_α
n58_match_arbno_af:
                        mov              rax, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              rsp, [rbp + 504]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 440]
                        test             ecx, ecx
                                                                                        jz    .Lx228_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 440], ecx
                        mov              qword ptr [rbp + 448], rax
                        lea              rbp, [rax + -440]
                                                                                        jmp   n59_match_defer_β
.Lx228_2:
                        mov              r14d, dword ptr [rbp + 432]
                        mov              rsp, qword ptr [rbp + 456]
                                                                                        jmp   n61_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n59_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx229_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx229_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx229_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx229_10
.Lx229_9:
                        xor              eax, eax
.Lx229_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx229_11:
                        test             rax, rax
                                                                                        jz    .Lx229_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx229_4]
                        lea              rdx, [rip + .Lx229_5]
                                                                                        jmp   rax
.Lx229_4:
                                                                                        jmp   n58_match_arbno_as
.Lx229_5:
                                                                                        jmp   n58_match_arbno_af
.Lx229_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx229_2:
                        test             rax, rax
                                                                                        je    .Lx229_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx229_7]
                        lea              rdx, [rip + .Lx229_8]
                                                                                        jmp   rax
.Lx229_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx229_2
.Lx229_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx229_2
.Lx229_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n58_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx229_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n58_match_arbno_as
.Lx229_6:
                        add              rsp, 16
                                                                                        jmp   n58_match_arbno_af
n59_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rsp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n61_match_pos_α
n60_lit_integer_β:
                                                                                        jmp   n51_match_head_β
.Lx230_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n61_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n51_match_head_β
                                                                                        jmp   n58_match_arbno_α
n61_match_pos_β:
                                                                                        jmp   n51_match_head_β
#=======================================================================================================================
# B1      OUTPUT = "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_assign_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "T1 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx233_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n64_var_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N1      S2 POS(0) ARBNO(*G) RPOS(0)              :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        sub              rsp, 800
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
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # S2
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n65_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n65_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 616], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 624], r13                     # outer_Σ
                        mov              qword ptr [rbp + 632], r14                     # outer_δ
                        mov              qword ptr [rbp + 640], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 648], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 592], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 584], rax                     # patstk_mark
                        mov              dword ptr [rbp + 576], 0                       # start_δ
.Lx236_0:
                        mov              r14d, dword ptr [rbp + 576]
                                                                                        jmp   n66_match_sequence_α
n65_match_head_β:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, r15d
                                                                                        jg    .Lx236_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx236_1
                                                                                        jmp   .Lx236_0
.Lx236_1:
                        mov              rax, qword ptr [rbp + 584]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 592]
                        mov              r10, qword ptr [1879048192]
.Lx236_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx236_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 624]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 632]                     # outer_δ
                        mov              r15, qword ptr [rbp + 640]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 648]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 616]
                        add              rsp, 800
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_match_sequence_α:
                        mov              dword ptr [rbp + 656], r14d
                                                                                        jmp   n74_lit_integer_α
n66_match_sequence_as:
                                                                                        jmp   n67_match_release_α
n66_match_sequence_β:
                                                                                        jmp   n71_match_rpos_β
n66_match_sequence_af:
                                                                                        jmp   n65_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n67_match_release_α:
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
.Lx240_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx240_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx240_1:
                        test             rax, rax
                                                                                        je    .Lx240_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx240_3]
                        lea              rdx, [rip + .Lx240_4]
                                                                                        jmp   rax
.Lx240_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx240_1
.Lx240_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx240_1
.Lx240_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx240_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx240_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 624]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 632]                     # outer_δ
                        mov              r15, qword ptr [rbp + 640]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 648]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 616]
                        add              rsp, 800
                                                                                        jmp   n68_lit_string_α
#=======================================================================================================================
# A2      OUTPUT = "T2 MATCH"                      :(N2)
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_assign_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "T2 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx242_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n78_var_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rsp + 768], 3                       # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n71_match_rpos_α
n70_lit_integer_β:
                                                                                        jmp   n72_match_arbno_β
.Lx243_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n71_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n72_match_arbno_β
                                                                                        jmp   n67_match_release_α
n71_match_rpos_β:
                                                                                        jmp   n72_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n72_match_arbno_α:
                        mov              dword ptr [rbp + 704], r14d
                        mov              dword ptr [rbp + 708], r14d
                        mov              dword ptr [rbp + 712], 0
                        mov              qword ptr [rbp + 728], rsp
                        mov              qword ptr [rbp + 720], 0
                                                                                        jmp   n70_lit_integer_α
n72_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 708]
                        mov              rax, qword ptr [rbp + 720]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 720], rsp
                        mov              rbp, rsp
                        add              rbp, -712
                                                                                        jmp   n73_match_defer_α
n72_match_arbno_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              r14d, eax
                                                                                        je    n73_match_defer_β
                        mov              rbp, qword ptr [rbp + 712]
                        mov              eax, dword ptr [rbp + 712]
                        add              eax, 1
                        mov              dword ptr [rbp + 712], eax
                        mov              dword ptr [rbp + 708], r14d
                                                                                        jmp   n70_lit_integer_α
n72_match_arbno_af:
                        mov              rax, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              rsp, [rbp + 776]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 712]
                        test             ecx, ecx
                                                                                        jz    .Lx246_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 712], ecx
                        mov              qword ptr [rbp + 720], rax
                        lea              rbp, [rax + -712]
                                                                                        jmp   n73_match_defer_β
.Lx246_2:
                        mov              r14d, dword ptr [rbp + 704]
                        mov              rsp, qword ptr [rbp + 728]
                                                                                        jmp   n75_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n73_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx247_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx247_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx247_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx247_10
.Lx247_9:
                        xor              eax, eax
.Lx247_10:
                        lea              rsi, [rip + g_sno_defer_cells+16]
                        mov              qword ptr [rsi + 0], rax
.Lx247_11:
                        test             rax, rax
                                                                                        jz    .Lx247_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx247_4]
                        lea              rdx, [rip + .Lx247_5]
                                                                                        jmp   rax
.Lx247_4:
                                                                                        jmp   n72_match_arbno_as
.Lx247_5:
                                                                                        jmp   n72_match_arbno_af
.Lx247_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx247_2:
                        test             rax, rax
                                                                                        je    .Lx247_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx247_7]
                        lea              rdx, [rip + .Lx247_8]
                                                                                        jmp   rax
.Lx247_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx247_2
.Lx247_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx247_2
.Lx247_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n72_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx247_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n72_match_arbno_as
.Lx247_6:
                        add              rsp, 16
                                                                                        jmp   n72_match_arbno_af
n73_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        mov              qword ptr [rsp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n75_match_pos_α
n74_lit_integer_β:
                                                                                        jmp   n65_match_head_β
.Lx248_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n75_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n65_match_head_β
                                                                                        jmp   n72_match_arbno_α
n75_match_pos_β:
                                                                                        jmp   n65_match_head_β
#=======================================================================================================================
# B2      OUTPUT = "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n77_assign_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "T2 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx251_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n78_var_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N2      S3 POS(0) ARBNO(*G) RPOS(0)              :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        sub              rsp, 1072
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
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # S3
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n79_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n79_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 888], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 896], r13                     # outer_Σ
                        mov              qword ptr [rbp + 904], r14                     # outer_δ
                        mov              qword ptr [rbp + 912], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 920], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 864], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 856], rax                     # patstk_mark
                        mov              dword ptr [rbp + 848], 0                       # start_δ
.Lx254_0:
                        mov              r14d, dword ptr [rbp + 848]
                                                                                        jmp   n80_match_sequence_α
n79_match_head_β:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, r15d
                                                                                        jg    .Lx254_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx254_1
                                                                                        jmp   .Lx254_0
.Lx254_1:
                        mov              rax, qword ptr [rbp + 856]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 864]
                        mov              r10, qword ptr [1879048192]
.Lx254_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx254_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]
                        add              rsp, 1072
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_match_sequence_α:
                        mov              dword ptr [rbp + 928], r14d
                                                                                        jmp   n88_lit_integer_α
n80_match_sequence_as:
                                                                                        jmp   n81_match_release_α
n80_match_sequence_β:
                                                                                        jmp   n85_match_rpos_β
n80_match_sequence_af:
                                                                                        jmp   n79_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n81_match_release_α:
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
.Lx258_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx258_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx258_1:
                        test             rax, rax
                                                                                        je    .Lx258_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx258_3]
                        lea              rdx, [rip + .Lx258_4]
                                                                                        jmp   rax
.Lx258_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx258_1
.Lx258_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx258_1
.Lx258_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx258_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx258_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 896]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 904]                     # outer_δ
                        mov              r15, qword ptr [rbp + 912]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 920]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 888]
                        add              rsp, 1072
                                                                                        jmp   n82_lit_string_α
#=======================================================================================================================
# A3      OUTPUT = "T3 MATCH"                      :(N3)
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_assign_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "T3 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx260_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n92_var_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        mov              qword ptr [rsp + 1040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n85_match_rpos_α
n84_lit_integer_β:
                                                                                        jmp   n86_match_arbno_β
.Lx261_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n85_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n86_match_arbno_β
                                                                                        jmp   n81_match_release_α
n85_match_rpos_β:
                                                                                        jmp   n86_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n86_match_arbno_α:
                        mov              dword ptr [rbp + 976], r14d
                        mov              dword ptr [rbp + 980], r14d
                        mov              dword ptr [rbp + 984], 0
                        mov              qword ptr [rbp + 1000], rsp
                        mov              qword ptr [rbp + 992], 0
                                                                                        jmp   n84_lit_integer_α
n86_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 980]
                        mov              rax, qword ptr [rbp + 992]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 992], rsp
                        mov              rbp, rsp
                        add              rbp, -984
                                                                                        jmp   n87_match_defer_α
n86_match_arbno_as:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              r14d, eax
                                                                                        je    n87_match_defer_β
                        mov              rbp, qword ptr [rbp + 984]
                        mov              eax, dword ptr [rbp + 984]
                        add              eax, 1
                        mov              dword ptr [rbp + 984], eax
                        mov              dword ptr [rbp + 980], r14d
                                                                                        jmp   n84_lit_integer_α
n86_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              rsp, [rbp + 1048]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 984]
                        test             ecx, ecx
                                                                                        jz    .Lx264_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 984], ecx
                        mov              qword ptr [rbp + 992], rax
                        lea              rbp, [rax + -984]
                                                                                        jmp   n87_match_defer_β
.Lx264_2:
                        mov              r14d, dword ptr [rbp + 976]
                        mov              rsp, qword ptr [rbp + 1000]
                                                                                        jmp   n89_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n87_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx265_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx265_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx265_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx265_10
.Lx265_9:
                        xor              eax, eax
.Lx265_10:
                        lea              rsi, [rip + g_sno_defer_cells+24]
                        mov              qword ptr [rsi + 0], rax
.Lx265_11:
                        test             rax, rax
                                                                                        jz    .Lx265_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx265_4]
                        lea              rdx, [rip + .Lx265_5]
                                                                                        jmp   rax
.Lx265_4:
                                                                                        jmp   n86_match_arbno_as
.Lx265_5:
                                                                                        jmp   n86_match_arbno_af
.Lx265_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx265_2:
                        test             rax, rax
                                                                                        je    .Lx265_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx265_7]
                        lea              rdx, [rip + .Lx265_8]
                                                                                        jmp   rax
.Lx265_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx265_2
.Lx265_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx265_2
.Lx265_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n86_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx265_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n86_match_arbno_as
.Lx265_6:
                        add              rsp, 16
                                                                                        jmp   n86_match_arbno_af
n87_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rsp + 944], 3                       # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n89_match_pos_α
n88_lit_integer_β:
                                                                                        jmp   n79_match_head_β
.Lx266_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n89_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n79_match_head_β
                                                                                        jmp   n86_match_arbno_α
n89_match_pos_β:
                                                                                        jmp   n79_match_head_β
#=======================================================================================================================
# B3      OUTPUT = "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n91_assign_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "T3 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx269_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n92_var_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N3      S4 POS(0) ARBNO(*G) RPOS(0)              :S(A4)F(B4)
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        sub              rsp, 1344
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
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]                    # S4
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n93_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n93_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1160], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1168], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1176], r14                    # outer_δ
                        mov              qword ptr [rbp + 1184], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1192], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1136], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1128], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1120], 0                      # start_δ
.Lx272_0:
                        mov              r14d, dword ptr [rbp + 1120]
                                                                                        jmp   n94_match_sequence_α
n93_match_head_β:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, r15d
                                                                                        jg    .Lx272_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx272_1
                                                                                        jmp   .Lx272_0
.Lx272_1:
                        mov              rax, qword ptr [rbp + 1128]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1136]
                        mov              r10, qword ptr [1879048192]
.Lx272_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx272_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1168]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1176]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1184]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1192]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]
                        add              rsp, 1344
                                                                                        jmp   n104_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_match_sequence_α:
                        mov              dword ptr [rbp + 1200], r14d
                                                                                        jmp   n102_lit_integer_α
n94_match_sequence_as:
                                                                                        jmp   n95_match_release_α
n94_match_sequence_β:
                                                                                        jmp   n99_match_rpos_β
n94_match_sequence_af:
                                                                                        jmp   n93_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n95_match_release_α:
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
.Lx276_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx276_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx276_1:
                        test             rax, rax
                                                                                        je    .Lx276_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx276_3]
                        lea              rdx, [rip + .Lx276_4]
                                                                                        jmp   rax
.Lx276_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx276_1
.Lx276_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx276_1
.Lx276_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx276_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx276_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1168]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1176]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1184]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1192]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1160]
                        add              rsp, 1344
                                                                                        jmp   n96_lit_string_α
#=======================================================================================================================
# A4      OUTPUT = "T4 MATCH"                      :(N4)
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n97_assign_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "T4 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx278_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n106_var_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rsp + 1312], 3                      # result
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 1320], rax
                                                                                        jmp   n99_match_rpos_α
n98_lit_integer_β:
                                                                                        jmp   n100_match_arbno_β
.Lx279_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n99_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n100_match_arbno_β
                                                                                        jmp   n95_match_release_α
n99_match_rpos_β:
                                                                                        jmp   n100_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n100_match_arbno_α:
                        mov              dword ptr [rbp + 1248], r14d
                        mov              dword ptr [rbp + 1252], r14d
                        mov              dword ptr [rbp + 1256], 0
                        mov              qword ptr [rbp + 1272], rsp
                        mov              qword ptr [rbp + 1264], 0
                                                                                        jmp   n98_lit_integer_α
n100_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1252]
                        mov              rax, qword ptr [rbp + 1264]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1264], rsp
                        mov              rbp, rsp
                        add              rbp, -1256
                                                                                        jmp   n101_match_defer_α
n100_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              r14d, eax
                                                                                        je    n101_match_defer_β
                        mov              rbp, qword ptr [rbp + 1256]
                        mov              eax, dword ptr [rbp + 1256]
                        add              eax, 1
                        mov              dword ptr [rbp + 1256], eax
                        mov              dword ptr [rbp + 1252], r14d
                                                                                        jmp   n98_lit_integer_α
n100_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              rsp, [rbp + 1320]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1256]
                        test             ecx, ecx
                                                                                        jz    .Lx282_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1256], ecx
                        mov              qword ptr [rbp + 1264], rax
                        lea              rbp, [rax + -1256]
                                                                                        jmp   n101_match_defer_β
.Lx282_2:
                        mov              r14d, dword ptr [rbp + 1248]
                        mov              rsp, qword ptr [rbp + 1272]
                                                                                        jmp   n103_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n101_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx283_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx283_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx283_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx283_10
.Lx283_9:
                        xor              eax, eax
.Lx283_10:
                        lea              rsi, [rip + g_sno_defer_cells+32]
                        mov              qword ptr [rsi + 0], rax
.Lx283_11:
                        test             rax, rax
                                                                                        jz    .Lx283_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx283_4]
                        lea              rdx, [rip + .Lx283_5]
                                                                                        jmp   rax
.Lx283_4:
                                                                                        jmp   n100_match_arbno_as
.Lx283_5:
                                                                                        jmp   n100_match_arbno_af
.Lx283_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx283_2:
                        test             rax, rax
                                                                                        je    .Lx283_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx283_7]
                        lea              rdx, [rip + .Lx283_8]
                                                                                        jmp   rax
.Lx283_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx283_2
.Lx283_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx283_2
.Lx283_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n100_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx283_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n100_match_arbno_as
.Lx283_6:
                        add              rsp, 16
                                                                                        jmp   n100_match_arbno_af
n101_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rsp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n103_match_pos_α
n102_lit_integer_β:
                                                                                        jmp   n93_match_head_β
.Lx284_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n103_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n93_match_head_β
                                                                                        jmp   n100_match_arbno_α
n103_match_pos_β:
                                                                                        jmp   n93_match_head_β
#=======================================================================================================================
# B4      OUTPUT = "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_assign_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "T4 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx287_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n106_var_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N4      S5 POS(0) ARBNO(*W) RPOS(0)              :S(A5)F(B5)
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        sub              rsp, 1616
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
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052400]                    # S5
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n107_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n107_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1432], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1440], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1448], r14                    # outer_δ
                        mov              qword ptr [rbp + 1456], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1464], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1408], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1400], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1392], 0                      # start_δ
.Lx290_0:
                        mov              r14d, dword ptr [rbp + 1392]
                                                                                        jmp   n108_match_sequence_α
n107_match_head_β:
                        add              dword ptr [rbp + 1392], 1
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, r15d
                                                                                        jg    .Lx290_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx290_1
                                                                                        jmp   .Lx290_0
.Lx290_1:
                        mov              rax, qword ptr [rbp + 1400]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1408]
                        mov              r10, qword ptr [1879048192]
.Lx290_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx290_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1440]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1448]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1456]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1464]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1432]
                        add              rsp, 1616
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_match_sequence_α:
                        mov              dword ptr [rbp + 1472], r14d
                                                                                        jmp   n116_lit_integer_α
n108_match_sequence_as:
                                                                                        jmp   n109_match_release_α
n108_match_sequence_β:
                                                                                        jmp   n113_match_rpos_β
n108_match_sequence_af:
                                                                                        jmp   n107_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n109_match_release_α:
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
.Lx294_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx294_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx294_1:
                        test             rax, rax
                                                                                        je    .Lx294_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx294_3]
                        lea              rdx, [rip + .Lx294_4]
                                                                                        jmp   rax
.Lx294_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx294_1
.Lx294_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx294_1
.Lx294_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx294_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx294_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1440]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1448]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1456]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1464]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1432]
                        add              rsp, 1616
                                                                                        jmp   n110_lit_string_α
#=======================================================================================================================
# A5      OUTPUT = "T5 MATCH"                      :(N5)
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n111_assign_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "T5 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx296_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n120_var_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rsp + 1584], 3                      # result
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 1592], rax
                                                                                        jmp   n113_match_rpos_α
n112_lit_integer_β:
                                                                                        jmp   n114_match_arbno_β
.Lx297_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n113_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n114_match_arbno_β
                                                                                        jmp   n109_match_release_α
n113_match_rpos_β:
                                                                                        jmp   n114_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n114_match_arbno_α:
                        mov              dword ptr [rbp + 1520], r14d
                        mov              dword ptr [rbp + 1524], r14d
                        mov              dword ptr [rbp + 1528], 0
                        mov              qword ptr [rbp + 1544], rsp
                        mov              qword ptr [rbp + 1536], 0
                                                                                        jmp   n112_lit_integer_α
n114_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1524]
                        mov              rax, qword ptr [rbp + 1536]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1536], rsp
                        mov              rbp, rsp
                        add              rbp, -1528
                                                                                        jmp   n115_match_defer_α
n114_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              r14d, eax
                                                                                        je    n115_match_defer_β
                        mov              rbp, qword ptr [rbp + 1528]
                        mov              eax, dword ptr [rbp + 1528]
                        add              eax, 1
                        mov              dword ptr [rbp + 1528], eax
                        mov              dword ptr [rbp + 1524], r14d
                                                                                        jmp   n112_lit_integer_α
n114_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1528]
                        lea              rsp, [rbp + 1592]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1528]
                        test             ecx, ecx
                                                                                        jz    .Lx300_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1528], ecx
                        mov              qword ptr [rbp + 1536], rax
                        lea              rbp, [rax + -1528]
                                                                                        jmp   n115_match_defer_β
.Lx300_2:
                        mov              r14d, dword ptr [rbp + 1520]
                        mov              rsp, qword ptr [rbp + 1544]
                                                                                        jmp   n117_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n115_match_defer_α:
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 8
                                                                                        jne   .Lx301_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx301_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx301_10
.Lx301_9:
                        xor              eax, eax
.Lx301_10:
                        test             rax, rax
                                                                                        jz    .Lx301_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx301_4]
                        lea              rdx, [rip + .Lx301_5]
                                                                                        jmp   rax
.Lx301_4:
                                                                                        jmp   n114_match_arbno_as
.Lx301_5:
                                                                                        jmp   n114_match_arbno_af
.Lx301_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx301_2:
                        test             rax, rax
                                                                                        je    .Lx301_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx301_7]
                        lea              rdx, [rip + .Lx301_8]
                                                                                        jmp   rax
.Lx301_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx301_2
.Lx301_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx301_2
.Lx301_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n114_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx301_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n114_match_arbno_as
.Lx301_6:
                        add              rsp, 16
                                                                                        jmp   n114_match_arbno_af
n115_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rsp + 1488], 3                      # result
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 1496], rax
                                                                                        jmp   n117_match_pos_α
n116_lit_integer_β:
                                                                                        jmp   n107_match_head_β
.Lx302_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n117_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n107_match_head_β
                                                                                        jmp   n114_match_arbno_α
n117_match_pos_β:
                                                                                        jmp   n107_match_head_β
#=======================================================================================================================
# B5      OUTPUT = "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n119_assign_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "T5 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx305_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n120_var_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N5      S6 POS(0) ARBNO(*E) RPOS(0)              :S(A6)F(B6)
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        sub              rsp, 1904
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
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052416]                    # S6
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n121_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1704], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 1712], r13                    # outer_Σ
                        mov              qword ptr [rbp + 1720], r14                    # outer_δ
                        mov              qword ptr [rbp + 1728], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1736], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1680], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1672], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1664], 0                      # start_δ
.Lx308_0:
                        mov              r14d, dword ptr [rbp + 1664]
                                                                                        jmp   n122_match_sequence_α
n121_match_head_β:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, r15d
                                                                                        jg    .Lx308_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx308_1
                                                                                        jmp   .Lx308_0
.Lx308_1:
                        mov              rax, qword ptr [rbp + 1672]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1680]
                        mov              r10, qword ptr [1879048192]
.Lx308_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx308_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]
                        add              rsp, 1904
                                                                                        jmp   n133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_match_sequence_α:
                        mov              dword ptr [rbp + 1744], r14d
                                                                                        jmp   n131_lit_integer_α
n122_match_sequence_as:
                                                                                        jmp   n123_match_release_α
n122_match_sequence_β:
                                                                                        jmp   n127_match_rpos_β
n122_match_sequence_af:
                                                                                        jmp   n121_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n123_match_release_α:
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
.Lx312_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx312_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx312_1:
                        test             rax, rax
                                                                                        je    .Lx312_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx312_3]
                        lea              rdx, [rip + .Lx312_4]
                                                                                        jmp   rax
.Lx312_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx312_1
.Lx312_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx312_1
.Lx312_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx312_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx312_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 1712]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 1720]                    # outer_δ
                        mov              r15, qword ptr [rbp + 1728]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 1736]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1704]
                        add              rsp, 1904
                                                                                        jmp   n124_lit_string_α
#=======================================================================================================================
# A6      OUTPUT = "T6 MATCH"                      :(N6)
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n125_assign_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "T6 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx314_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n135_var_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        mov              qword ptr [rsp + 1872], 3                      # result
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 1880], rax
                                                                                        jmp   n127_match_rpos_α
n126_lit_integer_β:
                                                                                        jmp   n128_match_arbno_β
.Lx315_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n127_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n128_match_arbno_β
                                                                                        jmp   n123_match_release_α
n127_match_rpos_β:
                                                                                        jmp   n128_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n128_match_arbno_α:
                        mov              dword ptr [rbp + 1792], r14d
                        mov              dword ptr [rbp + 1796], r14d
                        mov              dword ptr [rbp + 1800], 0
                        mov              qword ptr [rbp + 1816], rsp
                        mov              qword ptr [rbp + 1808], 0
                                                                                        jmp   n126_lit_integer_α
n128_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 1796]
                        mov              rax, qword ptr [rbp + 1808]
                        sub              rsp, 80
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 1808], rsp
                        mov              rbp, rsp
                        add              rbp, -1800
                                                                                        jmp   n130_match_defer_α
n128_match_arbno_as:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              r14d, eax
                                                                                        je    n130_match_defer_β
                        mov              rbp, qword ptr [rbp + 1800]
                        mov              eax, dword ptr [rbp + 1800]
                        add              eax, 1
                        mov              dword ptr [rbp + 1800], eax
                        mov              dword ptr [rbp + 1796], r14d
                                                                                        jmp   n126_lit_integer_α
n128_match_arbno_af:
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              rsp, [rbp + 1880]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 1800]
                        test             ecx, ecx
                                                                                        jz    .Lx318_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 1800], ecx
                        mov              qword ptr [rbp + 1808], rax
                        lea              rbp, [rax + -1800]
                                                                                        jmp   n130_match_defer_β
.Lx318_2:
                        mov              r14d, dword ptr [rbp + 1792]
                        mov              rsp, qword ptr [rbp + 1816]
                                                                                        jmp   n132_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rsp + 1856], 2                      # result
                        mov              dword ptr [rsp + 1860], 5
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 1864], rax
                                                                                        jmp   main_γ
n129_lit_string_β:
                                                                                        jmp   main_ω
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n130_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx320_11
                        mov              rax, qword ptr [1879052320]                    # E
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx320_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx320_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx320_10
.Lx320_9:
                        xor              eax, eax
.Lx320_10:
                        lea              rsi, [rip + g_sno_defer_cells+40]
                        mov              qword ptr [rsi + 0], rax
.Lx320_11:
                        test             rax, rax
                                                                                        jz    .Lx320_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx320_4]
                        lea              rdx, [rip + .Lx320_5]
                                                                                        jmp   rax
.Lx320_4:
                                                                                        jmp   n128_match_arbno_as
.Lx320_5:
                                                                                        jmp   n128_match_arbno_af
.Lx320_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx320_2:
                        test             rax, rax
                                                                                        je    .Lx320_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx320_7]
                        lea              rdx, [rip + .Lx320_8]
                                                                                        jmp   rax
.Lx320_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx320_2
.Lx320_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx320_2
.Lx320_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n128_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx320_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n128_match_arbno_as
.Lx320_6:
                        add              rsp, 16
                                                                                        jmp   n128_match_arbno_af
n130_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rsp + 1760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 1768], rax
                                                                                        jmp   n132_match_pos_α
n131_lit_integer_β:
                                                                                        jmp   n121_match_head_β
.Lx321_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n132_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n121_match_head_β
                                                                                        jmp   n128_match_arbno_α
n132_match_pos_β:
                                                                                        jmp   n121_match_head_β
#=======================================================================================================================
# B6      OUTPUT = "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n134_assign_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "T6 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n134_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx324_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n135_var_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N6      S7 POS(0) ARBNO(*G) RPOS(0)              :S(A7)F(B7)
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        sub              rsp, 2176
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
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052432]                    # S7
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n136_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n136_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1992], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2000], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2008], r14                    # outer_δ
                        mov              qword ptr [rbp + 2016], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2024], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 1968], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 1960], rax                    # patstk_mark
                        mov              dword ptr [rbp + 1952], 0                      # start_δ
.Lx327_0:
                        mov              r14d, dword ptr [rbp + 1952]
                                                                                        jmp   n137_match_sequence_α
n136_match_head_β:
                        add              dword ptr [rbp + 1952], 1
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, r15d
                                                                                        jg    .Lx327_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx327_1
                                                                                        jmp   .Lx327_0
.Lx327_1:
                        mov              rax, qword ptr [rbp + 1960]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 1968]
                        mov              r10, qword ptr [1879048192]
.Lx327_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx327_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2000]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2008]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2016]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2024]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1992]
                        add              rsp, 2176
                                                                                        jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_match_sequence_α:
                        mov              dword ptr [rbp + 2032], r14d
                                                                                        jmp   n145_lit_integer_α
n137_match_sequence_as:
                                                                                        jmp   n138_match_release_α
n137_match_sequence_β:
                                                                                        jmp   n142_match_rpos_β
n137_match_sequence_af:
                                                                                        jmp   n136_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_release_α:
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
                        mov              r13, qword ptr [rbp + 2000]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2008]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2016]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2024]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 1992]
                        add              rsp, 2176
                                                                                        jmp   n139_lit_string_α
#=======================================================================================================================
# A7      OUTPUT = "T7 MATCH"                      :(N7)
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n140_assign_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "T7 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx333_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n149_var_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rsp + 2144], 3                      # result
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 2152], rax
                                                                                        jmp   n142_match_rpos_α
n141_lit_integer_β:
                                                                                        jmp   n143_match_arbno_β
.Lx334_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n142_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n143_match_arbno_β
                                                                                        jmp   n138_match_release_α
n142_match_rpos_β:
                                                                                        jmp   n143_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n143_match_arbno_α:
                        mov              dword ptr [rbp + 2080], r14d
                        mov              dword ptr [rbp + 2084], r14d
                        mov              dword ptr [rbp + 2088], 0
                        mov              qword ptr [rbp + 2104], rsp
                        mov              qword ptr [rbp + 2096], 0
                                                                                        jmp   n141_lit_integer_α
n143_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2084]
                        mov              rax, qword ptr [rbp + 2096]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2096], rsp
                        mov              rbp, rsp
                        add              rbp, -2088
                                                                                        jmp   n144_match_defer_α
n143_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              r14d, eax
                                                                                        je    n144_match_defer_β
                        mov              rbp, qword ptr [rbp + 2088]
                        mov              eax, dword ptr [rbp + 2088]
                        add              eax, 1
                        mov              dword ptr [rbp + 2088], eax
                        mov              dword ptr [rbp + 2084], r14d
                                                                                        jmp   n141_lit_integer_α
n143_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              rsp, [rbp + 2152]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2088]
                        test             ecx, ecx
                                                                                        jz    .Lx337_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2088], ecx
                        mov              qword ptr [rbp + 2096], rax
                        lea              rbp, [rax + -2088]
                                                                                        jmp   n144_match_defer_β
.Lx337_2:
                        mov              r14d, dword ptr [rbp + 2080]
                        mov              rsp, qword ptr [rbp + 2104]
                                                                                        jmp   n146_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n144_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx338_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx338_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx338_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx338_10
.Lx338_9:
                        xor              eax, eax
.Lx338_10:
                        lea              rsi, [rip + g_sno_defer_cells+48]
                        mov              qword ptr [rsi + 0], rax
.Lx338_11:
                        test             rax, rax
                                                                                        jz    .Lx338_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx338_4]
                        lea              rdx, [rip + .Lx338_5]
                                                                                        jmp   rax
.Lx338_4:
                                                                                        jmp   n143_match_arbno_as
.Lx338_5:
                                                                                        jmp   n143_match_arbno_af
.Lx338_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx338_2:
                        test             rax, rax
                                                                                        je    .Lx338_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx338_7]
                        lea              rdx, [rip + .Lx338_8]
                                                                                        jmp   rax
.Lx338_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx338_2
.Lx338_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx338_2
.Lx338_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n143_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx338_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n143_match_arbno_as
.Lx338_6:
                        add              rsp, 16
                                                                                        jmp   n143_match_arbno_af
n144_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n146_match_pos_α
n145_lit_integer_β:
                                                                                        jmp   n136_match_head_β
.Lx339_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n136_match_head_β
                                                                                        jmp   n143_match_arbno_α
n146_match_pos_β:
                                                                                        jmp   n136_match_head_β
#=======================================================================================================================
# B7      OUTPUT = "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n148_assign_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "T7 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx342_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n149_var_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N7      S8 POS(0) ARBNO(*G) *G RPOS(0)           :S(A8)F(B8)
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        sub              rsp, 2464
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
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052448]                    # S8
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n150_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n150_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2264], rbp                    # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 2272], r13                    # outer_Σ
                        mov              qword ptr [rbp + 2280], r14                    # outer_δ
                        mov              qword ptr [rbp + 2288], r15                    # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2296], rax                    # cap_gen
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
                        mov              qword ptr [rbp + 2240], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 2232], rax                    # patstk_mark
                        mov              dword ptr [rbp + 2224], 0                      # start_δ
.Lx345_0:
                        mov              r14d, dword ptr [rbp + 2224]
                                                                                        jmp   n151_match_sequence_α
n150_match_head_β:
                        add              dword ptr [rbp + 2224], 1
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, r15d
                                                                                        jg    .Lx345_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx345_1
                                                                                        jmp   .Lx345_0
.Lx345_1:
                        mov              rax, qword ptr [rbp + 2232]                    # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 2240]
                        mov              r10, qword ptr [1879048192]
.Lx345_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx345_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2272]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2280]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2288]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2296]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2264]
                        add              rsp, 2464
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n151_match_sequence_α:
                        mov              dword ptr [rbp + 2304], r14d
                                                                                        jmp   n160_lit_integer_α
n151_match_sequence_as:
                                                                                        jmp   n152_match_release_α
n151_match_sequence_β:
                                                                                        jmp   n156_match_rpos_β
n151_match_sequence_af:
                                                                                        jmp   n150_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n152_match_release_α:
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
.Lx349_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx349_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx349_1:
                        test             rax, rax
                                                                                        je    .Lx349_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx349_3]
                        lea              rdx, [rip + .Lx349_4]
                                                                                        jmp   rax
.Lx349_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx349_1
.Lx349_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx349_1
.Lx349_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx349_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx349_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 2272]                    # outer_Σ
                        mov              r14, qword ptr [rbp + 2280]                    # outer_δ
                        mov              r15, qword ptr [rbp + 2288]                    # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 2296]                    # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 2264]
                        add              rsp, 2464
                                                                                        jmp   n153_lit_string_α
#=======================================================================================================================
# A8      OUTPUT = "T8 MATCH"                      :(N8)
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n154_assign_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "T8 MATCH"
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx351_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n164_lit_string_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rsp + 2432], 3                      # result
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 2440], rax
                                                                                        jmp   n156_match_rpos_α
n155_lit_integer_β:
                                                                                        jmp   n157_match_defer_β
.Lx352_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n156_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n157_match_defer_β
                                                                                        jmp   n152_match_release_α
n156_match_rpos_β:
                                                                                        jmp   n157_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n157_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx354_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx354_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx354_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx354_10
.Lx354_9:
                        xor              eax, eax
.Lx354_10:
                        lea              rsi, [rip + g_sno_defer_cells+56]
                        mov              qword ptr [rsi + 0], rax
.Lx354_11:
                        test             rax, rax
                                                                                        jz    .Lx354_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx354_4]
                        lea              rdx, [rip + .Lx354_5]
                                                                                        jmp   rax
.Lx354_4:
                                                                                        jmp   n155_lit_integer_α
.Lx354_5:
                                                                                        jmp   n158_match_arbno_β
.Lx354_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx354_2:
                        test             rax, rax
                                                                                        je    .Lx354_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx354_7]
                        lea              rdx, [rip + .Lx354_8]
                                                                                        jmp   rax
.Lx354_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx354_2
.Lx354_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx354_2
.Lx354_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n158_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx354_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n155_lit_integer_α
.Lx354_6:
                        add              rsp, 16
                                                                                        jmp   n158_match_arbno_β
n157_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n158_match_arbno_α:
                        mov              dword ptr [rbp + 2352], r14d
                        mov              dword ptr [rbp + 2356], r14d
                        mov              dword ptr [rbp + 2360], 0
                        mov              qword ptr [rbp + 2376], rsp
                        mov              qword ptr [rbp + 2368], 0
                                                                                        jmp   n157_match_defer_α
n158_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 2356]
                        mov              rax, qword ptr [rbp + 2368]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 2368], rsp
                        mov              rbp, rsp
                        add              rbp, -2360
                                                                                        jmp   n159_match_defer_α
n158_match_arbno_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              r14d, eax
                                                                                        je    n159_match_defer_β
                        mov              rbp, qword ptr [rbp + 2360]
                        mov              eax, dword ptr [rbp + 2360]
                        add              eax, 1
                        mov              dword ptr [rbp + 2360], eax
                        mov              dword ptr [rbp + 2356], r14d
                                                                                        jmp   n157_match_defer_α
n158_match_arbno_af:
                        mov              rax, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              rsp, [rbp + 2424]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 2360]
                        test             ecx, ecx
                                                                                        jz    .Lx356_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 2360], ecx
                        mov              qword ptr [rbp + 2368], rax
                        lea              rbp, [rax + -2360]
                                                                                        jmp   n159_match_defer_β
.Lx356_2:
                        mov              r14d, dword ptr [rbp + 2352]
                        mov              rsp, qword ptr [rbp + 2376]
                                                                                        jmp   n161_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n159_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx357_11
                        mov              rax, qword ptr [1879052288]                    # G
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx357_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx357_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx357_10
.Lx357_9:
                        xor              eax, eax
.Lx357_10:
                        lea              rsi, [rip + g_sno_defer_cells+64]
                        mov              qword ptr [rsi + 0], rax
.Lx357_11:
                        test             rax, rax
                                                                                        jz    .Lx357_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx357_4]
                        lea              rdx, [rip + .Lx357_5]
                                                                                        jmp   rax
.Lx357_4:
                                                                                        jmp   n158_match_arbno_as
.Lx357_5:
                                                                                        jmp   n158_match_arbno_af
.Lx357_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx357_2:
                        test             rax, rax
                                                                                        je    .Lx357_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx357_7]
                        lea              rdx, [rip + .Lx357_8]
                                                                                        jmp   rax
.Lx357_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx357_2
.Lx357_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx357_2
.Lx357_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n158_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx357_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n158_match_arbno_as
.Lx357_6:
                        add              rsp, 16
                                                                                        jmp   n158_match_arbno_af
n159_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rsp + 2320], 3                      # result
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 2328], rax
                                                                                        jmp   n161_match_pos_α
n160_lit_integer_β:
                                                                                        jmp   n150_match_head_β
.Lx358_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n161_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n150_match_head_β
                                                                                        jmp   n158_match_arbno_α
n161_match_pos_β:
                                                                                        jmp   n150_match_head_β
#=======================================================================================================================
# B8      OUTPUT = "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n163_assign_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "T8 NOMATCH"
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx361_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n164_lit_string_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# N8      OUTPUT = "DONE"
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n165_assign_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "DONE"
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx363_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n166_goto_α:
                                                                                        jmp   n54_lit_string_α
n166_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n167_goto_α:
                                                                                        jmp   n62_lit_string_α
n167_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n168_goto_α:
                                                                                        jmp   n64_var_α
n168_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n169_goto_α:
                                                                                        jmp   n68_lit_string_α
n169_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_goto_α:
                                                                                        jmp   n76_lit_string_α
n170_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n171_goto_α:
                                                                                        jmp   n78_var_α
n171_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n172_goto_α:
                                                                                        jmp   n82_lit_string_α
n172_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n173_goto_α:
                                                                                        jmp   n90_lit_string_α
n173_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_goto_α:
                                                                                        jmp   n92_var_α
n174_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n175_goto_α:
                                                                                        jmp   n96_lit_string_α
n175_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n176_goto_α:
                                                                                        jmp   n104_lit_string_α
n176_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n177_goto_α:
                                                                                        jmp   n106_var_α
n177_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n178_goto_α:
                                                                                        jmp   n110_lit_string_α
n178_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n179_goto_α:
                                                                                        jmp   n118_lit_string_α
n179_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n180_goto_α:
                                                                                        jmp   n120_var_α
n180_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n181_goto_α:
                                                                                        jmp   n124_lit_string_α
n181_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_goto_α:
                                                                                        jmp   n133_lit_string_α
n182_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n183_goto_α:
                                                                                        jmp   n135_var_α
n183_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n184_goto_α:
                                                                                        jmp   n139_lit_string_α
n184_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n185_goto_α:
                                                                                        jmp   n147_lit_string_α
n185_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n186_goto_α:
                                                                                        jmp   n149_var_α
n186_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n187_goto_α:
                                                                                        jmp   n153_lit_string_α
n187_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n188_goto_α:
                                                                                        jmp   n162_lit_string_α
n188_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n189_goto_α:
                                                                                        jmp   n164_lit_string_α
n189_goto_β:
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
                        .section         .rodata
.S0:                    .string          "G"
.S1:                    .string          "W"
.S2:                    .string          "E"
                        .text
                        .section         .note.GNU-stack,"",@progbits
