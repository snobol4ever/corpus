                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 320], r8
                        mov              dword ptr [rsp + 312], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_sequence_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n16_lit_integer_α
n0_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n0_match_sequence_β:
                                                                                        jmp   n2_match_rpos_β
n0_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 280], rax                     # lit_integer
                                                                                        jmp   n2_match_rpos_α
n1_lit_integer_β:
                                                                                        jmp   n3_match_arbno_β
.Lx20_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n3_match_arbno_β
                                                                                        jmp   proc_PAT$0_γ
n2_match_rpos_β:
                                                                                        jmp   n3_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n1_lit_integer_α
n3_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 84]
                        mov              rax, qword ptr [rbp + 96]
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 96], rsp
                        mov              rbp, rsp
                        add              rbp, -8
                                                                                        jmp   n4_match_sequence_α
n3_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n4_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n1_lit_integer_α
n3_match_arbno_af:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 8]
                        lea              rsp, [rbp + 280]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 88]
                        test             ecx, ecx
                                                                                        jz    .Lx23_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 88], ecx
                        mov              qword ptr [rbp + 96], rax
                        lea              rbp, [rax + -8]
                                                                                        jmp   n4_match_sequence_β
.Lx23_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n17_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n6_match_alternate_α
n4_match_sequence_as:
                                                                                        jmp   n3_match_arbno_as
n4_match_sequence_β:
                                                                                        jmp   n5_match_span_β
n4_match_sequence_af:
                                                                                        jmp   n3_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx27_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx27_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx27_10
                        cmp              esi, 10
                                                                                        je    .Lx27_10
                                                                                        jmp   .Lx27_1
.Lx27_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx27_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx27_11
                        cmp              esi, 10
                                                                                        je    .Lx27_11
                                                                                        jmp   .Lx27_1
.Lx27_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx27_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx27_12
                        cmp              esi, 10
                                                                                        je    .Lx27_12
                                                                                        jmp   .Lx27_1
.Lx27_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx27_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx27_13
                        cmp              esi, 10
                                                                                        je    .Lx27_13
                                                                                        jmp   .Lx27_1
.Lx27_13:
                        add              ecx, 1
                                                                                        jmp   .Lx27_0
.Lx27_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx27_240
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_β
.Lx27_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n3_match_arbno_as
n5_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx29_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n13_match_sequence_α
.Lx29_21:
                        lea              rax, [rip + .Lx29_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n7_match_sequence_α
n6_match_alternate_s0:
                        lea              rax, [rip + .Lx29_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n6_match_alternate_as
n6_match_alternate_s1:
                        lea              rax, [rip + .Lx29_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n6_match_alternate_as
.Lx29_40:
                                                                                        jmp   n13_match_sequence_β
.Lx29_41:
                                                                                        jmp   n7_match_sequence_β
n6_match_alternate_as:
                                                                                        jmp   n5_match_span_α
n6_match_alternate_β:
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n6_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx29_19:
                                                                                        jmp   n3_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_sequence_α:
                        mov              dword ptr [rbp + 208], r14d
                                                                                        jmp   n12_match_notany_α
n7_match_sequence_as:
                                                                                        jmp   n6_match_alternate_s1
n7_match_sequence_β:
                                                                                        jmp   n8_match_span_β
n7_match_sequence_af:
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_span_α:
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx33_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx33_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx33_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx33_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx33_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx33_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx33_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx33_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx33_1
                        add              ecx, 1
                                                                                        jmp   .Lx33_0
.Lx33_1:
                        cmp              ecx, r14d
                                                                                        jle   n9_match_any_β
                        mov              dword ptr [rbp + 244], r14d
                        mov              r14d, ecx
                                                                                        jmp   n6_match_alternate_s1
n8_match_span_β:
                        mov              r14d, dword ptr [rbp + 244]
                                                                                        jmp   n9_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n10_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n10_match_lit_β
                        add              r14d, 1
                                                                                        jmp   n8_match_span_α
n9_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n10_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n11_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95
                                                                                        jne   n11_match_break_β
                        add              r14d, 1
                                                                                        jmp   n9_match_any_α
n10_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n11_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_break_α:
                        movsxd           rcx, r14d
.Lx39_0:
                        cmp              ecx, r15d
                                                                                        jge   n12_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx39_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   n12_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx39_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   n12_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx39_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   n12_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx39_1
                        add              ecx, 1
                                                                                        jmp   .Lx39_0
.Lx39_1:
                        mov              dword ptr [rbp + 224], r14d
                        mov              r14d, ecx
                                                                                        jmp   n10_match_lit_α
n11_match_break_β:
                        mov              r14d, dword ptr [rbp + 224]
                                                                                        jmp   n12_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n6_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    n6_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n11_match_break_α
n12_match_notany_β:
                        sub              r14d, 1
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n15_match_span_α
n13_match_sequence_as:
                                                                                        jmp   n6_match_alternate_s0
n13_match_sequence_β:
                                                                                        jmp   n14_match_lit_β
n13_match_sequence_af:
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d
                                                                                        jg    n15_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax
                                                                                        jne   n15_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85
                                                                                        jne   n15_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78
                                                                                        jne   n15_match_span_β
                        add              r14d, 10
                                                                                        jmp   n6_match_alternate_s0
n14_match_lit_β:
                        sub              r14d, 10
                                                                                        jmp   n15_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_span_α:
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx46_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx46_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx46_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx46_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx46_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx46_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx46_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx46_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx46_1
                        add              ecx, 1
                                                                                        jmp   .Lx46_0
.Lx46_1:
                        cmp              ecx, r14d
                                                                                        jle   n6_match_alternate_af
                        mov              dword ptr [rbp + 196], r14d
                        mov              r14d, ecx
                                                                                        jmp   n14_match_lit_α
n15_match_span_β:
                        mov              r14d, dword ptr [rbp + 196]
                                                                                        jmp   n6_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 48], 3                        # lit_integer
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 56], rax                      # lit_integer
                                                                                        jmp   n17_match_pos_α
n16_lit_integer_β:
                                                                                        jmp   proc_PAT$0_ω
.Lx47_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n17_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$0_ω
                                                                                        jmp   n3_match_arbno_α
n17_match_pos_β:
                                                                                        jmp   proc_PAT$0_ω
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 320], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 312]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 320], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 312]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 312], eax
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
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, qword ptr [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344]
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
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "src"
.Lgvan1:                .string          "claws"
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
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # lit_string
                        mov              dword ptr [rsp + 4], 4                         # lit_string
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n50_lit_integer_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n51_call_α
.Lx75_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:
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
.Lrkfnzd77:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd77]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx76_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n52_lit_string_α
.Lx76_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 48
                                                                                        jmp   n52_lit_string_α
n51_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n52_lit_string_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # lit_string
                        mov              dword ptr [rsp + 4], 5                         # lit_string
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n53_call_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd80:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd80]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx79_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_var_α
.Lx79_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n54_lit_integer_α
n53_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n55_lit_string_α
.Lx81_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # lit_string
                        mov              dword ptr [rsp + 4], 15                        # lit_string
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n56_call_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lbynamefnzd26:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd26]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx83_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n57_var_α
.Lx83_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n57_var_α
n56_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n57_var_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx84_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx84_240
                        add              rsp, 16
                                                                                        jmp   n71_lit_string_α
.Lx84_240:
                        mov              qword ptr [rsp + 0], rax                       # var
                        mov              qword ptr [rsp + 8], rdx                       # var
                                                                                        jmp   n58_assign_α
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # var
                        mov              qword ptr [1879052288], rax                    # src
                        mov              qword ptr [1879052296], rdx                    # src
                        add              rsp, 16
                                                                                        jmp   n59_lit_string_α
#=======================================================================================================================
#                 claws           =
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # lit_string
                        mov              dword ptr [rsp + 4], 5                         # lit_string
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n60_call_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd88:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd88]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx87_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n62_var_α
.Lx87_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n61_assign_α
n60_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]                       # call
                        mov              qword ptr [1879052304], rax                    # claws
                        mov              qword ptr [1879052312], rdx                    # claws
                        add              rsp, 32
                                                                                        jmp   n62_var_α
#=======================================================================================================================
#                 src             claws                           :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        sub              rsp, 144
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
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # src
                        mov              rdx, qword ptr [1879052296]                    # src
                        mov              qword ptr [rsp + 0], rax                       # src
                        mov              qword ptr [rsp + 8], rdx                       # src
                                                                                        jmp   n63_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n63_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 56], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 64], r13                      # outer_Σ
                        mov              qword ptr [rbp + 72], r14                      # outer_δ
                        mov              qword ptr [rbp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax                      # cap_gen
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
                        mov              qword ptr [rbp + 32], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 24], rax
                        mov              dword ptr [rbp + 16], 0
.Lx92_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n64_match_patref_α
n63_match_head_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx92_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx92_1
                                                                                        jmp   .Lx92_0
.Lx92_1:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx92_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx92_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 144
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_match_patref_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx93_11
                        mov              rax, qword ptr [1879052304]                    # claws
                        mov              rdx, qword ptr [1879052312]                    # claws
                        cmp              eax, 8
                                                                                        jne   .Lx93_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx93_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx93_10
.Lx93_9:
                        xor              eax, eax
.Lx93_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx93_11:
                        test             rax, rax
                                                                                        jz    .Lx93_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx93_4]
                        lea              rdx, [rip + .Lx93_5]
                                                                                        jmp   rax
.Lx93_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 16], eax
                                                                                        jmp   n65_match_release_α
.Lx93_5:
                                                                                        jmp   n63_match_head_β
.Lx93_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx93_2:
                        test             rax, rax
                                                                                        je    .Lx93_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx93_7]
                        lea              rdx, [rip + .Lx93_8]
                                                                                        jmp   rax
.Lx93_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx93_2
.Lx93_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx93_2
.Lx93_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n63_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx93_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n65_match_release_α
.Lx93_6:
                        add              rsp, 16
                                                                                        jmp   n63_match_head_β
n64_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n65_match_release_α:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx95_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx95_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx95_1:
                        test             rax, rax
                                                                                        je    .Lx95_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx95_3]
                        lea              rdx, [rip + .Lx95_4]
                                                                                        jmp   rax
.Lx95_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx95_1
.Lx95_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx95_1
.Lx95_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx95_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx95_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 144
                                                                                        jmp   n66_lit_string_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # lit_string
                        mov              dword ptr [rsp + 4], 14                        # lit_string
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n67_var_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # src
                        mov              rdx, qword ptr [1879052296]                    # src
                        mov              qword ptr [rsp + 0], rax                       # src
                        mov              qword ptr [rsp + 8], rdx                       # src
                                                                                        jmp   n68_call_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd99:             .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd99]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx98_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
.Lx98_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n69_binop_α
n68_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # lit_string
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n70_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # binop
                        mov              rdi, qword ptr [rip + .Lx101_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 64
                                                                                        jmp   main_γ
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # lit_string
                        mov              dword ptr [rsp + 4], 20                        # lit_string
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n72_assign_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx103_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n73_goto_α:
                                                                                        jmp   n71_lit_string_α
n73_goto_β:
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
.S0:                    .string          "claws"
                        .text
                        .section         .rodata
.C0:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C2:
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
