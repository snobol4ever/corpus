                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], r8
                        mov              dword ptr [rsp + 296], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_sequence_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_sequence_α:
                        mov              dword ptr [rbp + 16], r14d
                                                                                        jmp   n1_lit_integer_α
n0_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n0_match_sequence_β:
                                                                                        jmp   n5_match_rpos_β
n0_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n2_match_pos_α
n1_lit_integer_β:
                                                                                        jmp   proc_PAT$0_ω
.Lx20_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n2_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   proc_PAT$0_ω
                                                                                        jmp   n3_match_arbno_α
n2_match_pos_β:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_match_arbno_α:
                        mov              dword ptr [rbp + 80], r14d
                        mov              dword ptr [rbp + 84], r14d
                        mov              dword ptr [rbp + 88], 0
                        mov              qword ptr [rbp + 104], rsp
                        mov              qword ptr [rbp + 96], 0
                                                                                        jmp   n4_lit_integer_α
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
                                                                                        jmp   n6_match_sequence_α
n3_match_arbno_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              r14d, eax
                                                                                        je    n6_match_sequence_β
                        mov              rbp, qword ptr [rbp + 8]
                        mov              eax, dword ptr [rbp + 88]
                        add              eax, 1
                        mov              dword ptr [rbp + 88], eax
                        mov              dword ptr [rbp + 84], r14d
                                                                                        jmp   n4_lit_integer_α
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
                                                                                        jmp   n6_match_sequence_β
.Lx23_2:
                        mov              r14d, dword ptr [rbp + 80]
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   n2_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n5_match_rpos_α
n4_lit_integer_β:
                                                                                        jmp   n3_match_arbno_β
.Lx24_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n5_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n3_match_arbno_β
                                                                                        jmp   proc_PAT$0_γ
n5_match_rpos_β:
                                                                                        jmp   n3_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n8_match_alternate_α
n6_match_sequence_as:
                                                                                        jmp   n3_match_arbno_as
n6_match_sequence_β:
                                                                                        jmp   n7_match_span_β
n6_match_sequence_af:
                                                                                        jmp   n3_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_span_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx29_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx29_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx29_10
                        cmp              esi, 10
                                                                                        je    .Lx29_10
                                                                                        jmp   .Lx29_1
.Lx29_10:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx29_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx29_11
                        cmp              esi, 10
                                                                                        je    .Lx29_11
                                                                                        jmp   .Lx29_1
.Lx29_11:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx29_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx29_12
                        cmp              esi, 10
                                                                                        je    .Lx29_12
                                                                                        jmp   .Lx29_1
.Lx29_12:
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx29_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx29_13
                        cmp              esi, 10
                                                                                        je    .Lx29_13
                                                                                        jmp   .Lx29_1
.Lx29_13:
                        add              ecx, 1
                                                                                        jmp   .Lx29_0
.Lx29_1:
                        cmp              ecx, r14d
                                                                                        jg    .Lx29_240
                        add              rsp, 16
                                                                                        jmp   n8_match_alternate_β
.Lx29_240:
                        mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx
                                                                                        jmp   n3_match_arbno_as
n7_match_span_β:
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                                                                                        jmp   n8_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_alternate_α:
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx31_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n9_match_sequence_α
.Lx31_21:
                        lea              rax, [rip + .Lx31_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n10_match_sequence_α
n8_match_alternate_s0:
                        lea              rax, [rip + .Lx31_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n8_match_alternate_as
n8_match_alternate_s1:
                        lea              rax, [rip + .Lx31_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n8_match_alternate_as
.Lx31_40:
                                                                                        jmp   n9_match_sequence_β
.Lx31_41:
                                                                                        jmp   n10_match_sequence_β
n8_match_alternate_as:
                                                                                        jmp   n7_match_span_α
n8_match_alternate_β:
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n8_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx31_19:
                                                                                        jmp   n3_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n9_match_sequence_α:
                        mov              dword ptr [rbp + 176], r14d
                                                                                        jmp   n11_match_span_α
n9_match_sequence_as:
                                                                                        jmp   n8_match_alternate_s0
n9_match_sequence_β:
                                                                                        jmp   n12_match_lit_β
n9_match_sequence_af:
                                                                                        jmp   n8_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n10_match_sequence_α:
                        mov              dword ptr [rbp + 208], r14d
                                                                                        jmp   n13_match_notany_α
n10_match_sequence_as:
                                                                                        jmp   n8_match_alternate_s1
n10_match_sequence_β:
                                                                                        jmp   n17_match_span_β
n10_match_sequence_af:
                                                                                        jmp   n8_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_span_α:
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx37_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx37_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx37_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx37_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx37_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx37_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx37_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx37_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx37_1
                        add              ecx, 1
                                                                                        jmp   .Lx37_0
.Lx37_1:
                        cmp              ecx, r14d
                                                                                        jle   n8_match_alternate_af
                        mov              dword ptr [rbp + 196], r14d
                        mov              r14d, ecx
                                                                                        jmp   n12_match_lit_α
n11_match_span_β:
                        mov              r14d, dword ptr [rbp + 196]
                                                                                        jmp   n8_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d
                                                                                        jg    n11_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax
                                                                                        jne   n11_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85
                                                                                        jne   n11_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78
                                                                                        jne   n11_match_span_β
                        add              r14d, 10
                                                                                        jmp   n8_match_alternate_s0
n12_match_lit_β:
                        sub              r14d, 10
                                                                                        jmp   n11_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_notany_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n8_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    n8_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n14_match_break_α
n13_match_notany_β:
                        sub              r14d, 1
                                                                                        jmp   n8_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_break_α:
                        movsxd           rcx, r14d
.Lx42_0:
                        cmp              ecx, r15d
                                                                                        jge   n13_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx42_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   n13_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx42_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   n13_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx42_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   n13_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95
                                                                                        je    .Lx42_1
                        add              ecx, 1
                                                                                        jmp   .Lx42_0
.Lx42_1:
                        mov              dword ptr [rbp + 224], r14d
                        mov              r14d, ecx
                                                                                        jmp   n15_match_lit_α
n14_match_break_β:
                        mov              r14d, dword ptr [rbp + 224]
                                                                                        jmp   n13_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n14_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95
                                                                                        jne   n14_match_break_β
                        add              r14d, 1
                                                                                        jmp   n16_match_any_α
n15_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n14_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n15_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C1]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    n15_match_lit_β
                        add              r14d, 1
                                                                                        jmp   n17_match_span_α
n16_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_span_α:
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx48_0:
                        cmp              ecx, r15d
                                                                                        jge   .Lx48_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx48_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx48_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx48_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jge   .Lx48_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0
                                                                                        je    .Lx48_1
                        add              ecx, 1
                                                                                        jmp   .Lx48_0
.Lx48_1:
                        cmp              ecx, r14d
                                                                                        jle   n16_match_any_β
                        mov              dword ptr [rbp + 244], r14d
                        mov              r14d, ecx
                                                                                        jmp   n8_match_alternate_s1
n17_match_span_β:
                        mov              r14d, dword ptr [rbp + 244]
                                                                                        jmp   n16_match_any_β
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 296]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 304], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 296]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 296], eax
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
                        mov              rax, [rbp + 312]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
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
                        sub              rsp, 600
                        mov              rdi, rsp
                        mov              ecx, 600
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rsp + 64], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n51_lit_integer_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n50_goto_α:
                                                                                        jmp   n52_lit_string_α
n50_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rsp + 80], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n53_call_α
.Lx76_0:
                        .quad            0
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_assign_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn79:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n55_lit_string_α
                                                                                        jmp   n55_lit_string_α
n53_call_β:
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx80_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rsp + 224], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n56_call_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn83:               .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn83]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n58_var_α
                                                                                        jmp   n57_lit_integer_α
n56_call_β:
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rsp + 240], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n59_lit_string_α
.Lx84_0:
                        .quad            9
#=======================================================================================================================
#                 src             =   INPUT                       :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx85_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx85_240
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
.Lx85_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n60_assign_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rsp + 256], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n61_call_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lbynamefn31:           .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn31]
                        lea              rsi, [rsp + 112]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n58_var_α
                                                                                        jmp   n58_var_α
n61_call_β:
                                                                                        jmp   n58_var_α
#=======================================================================================================================
#                 claws           =
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rsp + 352], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n63_call_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn91:               .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n65_var_α
                                                                                        jmp   n64_assign_α
n63_call_β:
                                                                                        jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n65_var_α
#=======================================================================================================================
#                 src             claws                           :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                                                                                        jmp   n66_match_head_α
#-----------------------------------------------------------------------------------------------------------------------
n66_match_head_α:
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              rax, qword ptr [1879048192]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 400], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 392], rax
                        mov              dword ptr [rsp + 384], 0
.Lx95_0:
                        mov              r14d, dword ptr [rsp + 384]
                                                                                        jmp   n67_match_defer_α
n66_match_head_β:
                        add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, r15d
                                                                                        jg    .Lx95_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx95_1
                                                                                        jmp   .Lx95_0
.Lx95_1:
                        mov              rax, qword ptr [rsp + 392]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 400]
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx96_11
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        cmp              eax, 3
                                                                                        jne   .Lx96_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx96_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx96_10
.Lx96_9:
                        xor              eax, eax
.Lx96_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx96_11:
                        test             rax, rax
                                                                                        jz    .Lx96_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx96_4]
                        lea              rdx, [rip + .Lx96_5]
                                                                                        jmp   rax
.Lx96_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 384], eax
                                                                                        jmp   n68_match_release_α
.Lx96_5:
                                                                                        jmp   n66_match_head_β
.Lx96_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx96_2:
                        test             rax, rax
                                                                                        je    .Lx96_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx96_7]
                        lea              rdx, [rip + .Lx96_8]
                                                                                        jmp   rax
.Lx96_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx96_2
.Lx96_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx96_2
.Lx96_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n66_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx96_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n68_match_release_α
.Lx96_6:
                        add              rsp, 16
                                                                                        jmp   n66_match_head_β
n67_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n68_match_release_α:
                        mov              rax, qword ptr [rsp + 392]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 400]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [1879048192]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx98_1:
                        test             rax, rax
                                                                                        je    .Lx98_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx98_3]
                        lea              rdx, [rip + .Lx98_4]
                                                                                        jmp   rax
.Lx98_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx98_1
.Lx98_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx98_1
.Lx98_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n69_lit_string_α
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rsp + 496], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n70_var_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                                                                                        jmp   n71_call_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn102:              .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn102]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   n72_binop_α
n71_call_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n73_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              rdi, qword ptr [rip + .Lx104_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 600
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 600
                        ret
                        .section         .rodata
.S0:                    .string          "claws"
                        .text
                        .section         .rodata
.C0:
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
                        .text
                        .section         .note.GNU-stack,"",@progbits
